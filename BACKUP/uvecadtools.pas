unit uVecadtools;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, CadApi, Windows, Dialogs, Math;

type
  TScreenData = record
    WinWidth, WinHeight: Integer;
    DwgLeft, DwgBottom, DwgRight, DwgTop, Scale: Double;
  end;
  TMouseMoveData = record
    Button, Key, Xwin, Ywin: Integer;
    Xdwg, Ydwg, Zdwg: Double;
  end;

  TVDWG = THandle;
  THWND = THandle; //Handle to vecad object, Handle to window object

  TFileBuff = array[0..259] of char;

procedure VCKeyDownProc (VDWG: Thandle; VirtKey, Flags: Integer;bCtrl,bShift: byte); stdcall ;
procedure VCPromptProc (VDWG: THANDLE; Cs: LPCSTR); stdcall;
procedure VCCmdFinishProc (VDWG: THANDLE; Command: Integer); stdcall;
procedure VCViewChangedProc (VDWG: THANDLE; WinWidth, WinHeight: Integer; DwgLeft, DwgBottom, DwgRight, DwgTop, Scale: Double);  stdcall;
procedure VCMouseMoveProc (VDWG: THandle; Button, Key, Xwin, Ywin: Integer; Xdwg, Ydwg, Zdwg: Double); stdcall;
procedure CmdStartProc (VDWG, Command, nSteps: integer); stdcall;
procedure CmdFinisheProc (VDWG, Command: integer); stdcall;

function PCStr(const s: String): Pointer;
function IsNumber(N : String) : Boolean;


var
  vdwg: TVDWG;
  vwnd, comwnd: THWND;
  fScreenData: TScreenData;
  fMouseMoveData: TMouseMoveData;
  StrBuff: TFileBuff;
  fCommandRunning: Boolean = false;

implementation
Uses
  ugprops;

function PCStr(const s: String): Pointer;
begin
  Result:= StrPCopy(StrBuff, s);
end;

function IsNumber(N : String) : Boolean;
var
I : Integer;
begin
Result := false;
if Trim(N) = '' then Exit;

Result:= true;
//if N[1]='@' or N[1]='<' then N:= copy(N,1,Length(N));
for I := 1 to Length(N) do
  begin
   Result:= Result and (N[I] in [','..'9','@','<']);
  end;
end;

function GetCharFromVKey(vkey: Word): string;
var
  keystate: TKeyboardState;
  retcode: Integer;
begin
  Win32Check(GetKeyboardState(keystate));
  SetLength(Result, 2);
  retcode := ToAscii(vkey,
    MapVirtualKey(vkey, 0),
    keystate, @Result[1],
    0);
  case retcode of
    0: Result := ''; // no character
    1: SetLength(Result, 1);
    2:;
    else
      Result := ''; // retcode < 0 indicates a dead key
  end;
end;

{%REGION CAD Events}
procedure VCKeyDownProc (VDWG: Thandle; VirtKey, Flags: Integer;bCtrl,bShift: byte); stdcall;
var
  key: word;
  s: string;
begin
 try
  s:= frmMain.edtCommand.Text;

  Key:= VirtKey;
  case VirtKey of
     VK_ESCAPE: begin
                 CadExecute(VDWG,VWND, CAD_CMD_RESET);
                 VCPromptProc(0,'[ESC]');
                 VCCmdFinishProc(0,0);
                 exit;
                end;
     VK_RETURN: begin
                 frmMain.edtCommandKeyDown(nil, Key, [ssLeft]);
                 //CadExecute(VDWG,VWND, CAD_CMD_REPEAT);
                 exit;
                end;
     VK_BACK  : begin
                 SetLength(s,Length(s)-1);
                 frmMain.edtCommand.Text:= s;
                 exit;
                end;
   VK_0..
   VK_DIVIDE  : begin
                 //frmMain.edtCommand.Text:= frmMain.edtCommand.Text + UpperCase(chr(VirtKey));
                 frmMain.edtCommand.Text:= frmMain.edtCommand.Text + GetCharFromVKey(Key);
                end;

  end;

  finally
  CadSetReturnInt(0);
 end;
end;

procedure VCPromptProc (VDWG: THANDLE; Cs: LPCSTR); stdcall;
begin
  try
     if trim(cs) = '' then exit;
     //frmMain.lstCommand.Items.AddText(Cs);
     frmMain.lstCommand.Items.Add(Cs);
     frmMain.lstCommand.ItemIndex:= frmMain.lstCommand.Items.Count-1;
  finally
     CadSetReturnInt(0);
  end;
end;

procedure VCCmdFinishProc(VDWG: THANDLE; Command: Integer); stdcall;
begin
  //VCPromptProc(0, '[Ready]');

  frmMain.edtCommand.SetFocus;
  frmMain.edtCommand.SetFocus;
  CadSetReturnInt(0);
end;

procedure VCViewChangedProc (VDWG: THANDLE; WinWidth, WinHeight: Integer; DwgLeft, DwgBottom, DwgRight, DwgTop, Scale: Double);  stdcall;
var
  pcx, pcy, pcz: Integer;
  pdx, pdy, pdz: Double;
begin
 fScreenData.WinWidth:= WinWidth;
 fScreenData.WinHeight:= WinHeight;
 fScreenData.DwgLeft:= DwgLeft;
 fScreenData.DwgBottom:= DwgBottom;
 fScreenData.DwgRight:= DwgRight;
 fScreenData.DwgTop:= DwgTop;
 fScreenData.Scale:= Scale;

 CadGridGetBoldStep(VDWG, @pcx, @pcy, @pcz);
 CadGridGetSize(VDWG, @pdx, @pdy, @pdz);

 //if scale > 0.5 then frmMain.rulerHor.Scale.TickLongValue:= 10
 // frmMain.ecruler.Max:=dwgright;
 // frmMain.ecruler.Min:=dwgleft;

 // frmMain.ecruler.scale.TickLongValue:= pcx * trunc(scale*2);
 // frmMain.ecruler.scale.TickMiddleValue:= pdx;
  //CadGridGetSize(vDwg, @dx, @dy,@dz);
  //frmMain.rulerHor.Scale.TickLongValue:= dx;
 //frmMain.Label1.Caption:= FloatToStr(Scale);
 {if scale < 0.5 then begin
    frmMain.rulerHor.Scale.TickLongValue:= scale*100;
    frmMain.rulerHor.Scale.TickMiddleValue:= scale *50;
    frmMain.rulerHor.Scale.TickShortValue:= scale *10; }
 CadSetReturnInt(0);
end;

procedure VCMouseMoveProc (VDWG: THandle; Button, Key, Xwin, Ywin: Integer; Xdwg, Ydwg, Zdwg: Double); stdcall;
begin
  fMouseMoveData.Button:= Button;
  fMouseMoveData.Key:= Key;
  fMouseMoveData.Xwin:= Xwin;
  fMouseMoveData.Ywin:= Ywin;
  fMouseMoveData.Xdwg:= Xdwg;
  fMouseMoveData.Ydwg:= Ydwg;
  fMouseMoveData.Zdwg:= Zdwg;

  frmMain.cursorH.Left:= Xwin +14;
  //frmMain.rulerHLabel.Left:= Xwin +21;
  frmMain.cursorV.Top:=Ywin-frmMain.cursorV.Height+3;
  //frmMain.rulerVLabel.Top:=Ywin- frmMain.rulerVLabel.Height-6;

  frmMain.lblCursorH.Caption:= FloatToStrF(Xdwg,ffGeneral,4,2);
  frmMain.lblCursorV.Caption:= FloatToStrF(Ydwg,ffGeneral,4,2);

  CadSetReturnInt(0);
end;

procedure CmdStartProc (VDWG, Command, nSteps: integer); stdcall;
begin
 fCommandRunning:= true;
 CadSetReturnInt(0);
end;

procedure CmdFinisheProc (VDWG, Command: integer); stdcall;
begin
 fCommandRunning:= false;
 CadSetReturnInt(0);
end;
{%ENDREGION}

end.

