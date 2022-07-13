unit uVecadtools;

{$mode objfpc}
{$MODESWITCH ADVANCEDRECORDS}

interface

uses
  Classes, SysUtils, CadApi, Dialogs, Controls, Graphics;

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
  TImageBuff = array[0..255000] of byte;

  TVCImageInfo = Record
    fImgBuff: TImageBuff;
    fFileName: String;
    fSize: UInt32;
  end;

procedure VCKeyDownProc (VDWG: Thandle; VirtKey, Flags: Integer;bCtrl,bShift: byte); stdcall ;
procedure VCPromptProc (VDWG: THANDLE; Cs: Pchar); stdcall;
procedure VCViewChangedProc (VDWG: THANDLE; WinWidth, WinHeight: Integer; DwgLeft, DwgBottom, DwgRight, DwgTop, Scale: Double);  stdcall;
procedure VCMouseMoveProc (VDWG: THandle; Button, Key, Xwin, Ywin: Integer; Xdwg, Ydwg, Zdwg: Double); stdcall;
procedure VCCmdStartProc (VDWG, Command, nSteps: integer); stdcall;
procedure VCCmdFinishProc (VDWG, Command: integer); stdcall;

procedure SetEvents;
procedure GetFilePicture(s: TFileName; pict: TPicture);
procedure ShowAppEmbedded(WindowHandle: THandle; Container: TWinControl);
function  VCPCStr(const s: String; var sbf: TFileBuff): Pointer;
function  IsNumber(N : String) : Boolean;
function VCInsertHBlock(hBlock:  THandle): THandle; // Return handle to addeed block entity
function BuffToString(const a: array of Char): string;


var
  vdwg: TVDWG;
  vwnd, comwnd, NavPnl: THWND;
  fScreenData: TScreenData;
  fMouseMoveData: TMouseMoveData;
  StrBuff,StrBuff2, StrBuff3: TFileBuff;

  fCommandRunning: Boolean;
  HPropWHandle: THandle;

implementation
Uses
  ugprops, umodule, Windows;

procedure SetEvents;
begin
CadOnEventView(@VCViewChangedProc);
CadOnEventKeyDown(@VCKeyDownProc);
CadOnEventPrompt(@VCPromptProc);
CadOnEventCmdStart(@VCCmdStartProc);
CadOnEventCmdFinish(@VCCmdFinishProc);
CadOnEventMouseMove(@VCMouseMoveProc);
end;

function VCPCStr(const s: String; var sbf: TFileBuff): Pointer;
begin
  FillChar(sbf, sizeof(sbf), #0);
  StrPCopy(sbf, s);
  Result:= @sbf;
end;

function BuffToString(const a: array of Char): string;
begin
  if Length(a)>0 then
    SetString(Result, PChar(@a[0]), Length(a))
  else
    Result := '';
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

function VCInsertHBlock(hBlock:  THandle): THandle;  // Return handle to addeed block entity
var
 fbData: TCMDPRM_INSERT_BLOCK;
begin
  Result:= 0;
  if hBlock = 0 then exit;
  with fbData do begin
   bShowDialog:= CAD_FALSE; // if TRUE - "Insert Block" dialog will be shown, if FALSE - no
   idBlock:= CadBlockGetID(hBlock);     // identifier of block
   bCoord:= CAD_FALSE;      // if TRUE - InsPnt is used, if FALSE - specify coords on-screen
   InsPntX:= 0;     // insertion point
   InsPntY:= 0;     //
   InsPntZ:= 0;     //
   bScale:= CAD_FALSE;      // if TRUE - Scale is used, if FALSE - specify scale on-screen
   bUniScale:= CAD_TRUE;   // same scale as X for Y, Z
   ScaleX:= 1;      // scale
   ScaleY:= 1;      //
   ScaleZ:= 1;      //
   bAngle:= CAD_FALSE;      // if TRUE - Angle is used, if FALSE - specify angle on-screen
   Angle:= 0;       // rotation angle
   bExplode:= CAD_FALSE;    // if TRUE - explode block after insertion
   RowDist:= 0;     // distance between rows. (0 for no array)
   ColDist:= 0;     // distance between columns. (0 for no array)
   NumRows:= 0;     // number of rows. (1 for no array)
   NumCols:= 0;
  end;
  CadSetCmdParam( vdwg, CAD_CMD_INSERT_BLOCK, @fbData );
  CadExecute( vdwg, vwnd, CAD_CMD_INSERT_BLOCK );
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



procedure GetFilePicture(s: TFileName; pict: TPicture);
var
  fIFile: TVCImageInfo;
  MemStream : TMemoryStream;
  sf: TFileBuff;
begin
//if Not FileExists(s) Then exit;
 If Assigned(pict) then begin
    MemStream := TMemoryStream.Create;
    ;// make sure that copy of s is into strbuff
    fIFile.fSize:= CadExtractImage(VCPCStr(s, sf), @fIFile.fImgBuff);
    if fIFile.fSize <> 0 then begin
       MemStream.Write(fIFile.fImgBuff, fIFile.fSize); //write from buffer to memory stream
       MemStream.Position:= 0;
       pict.LoadFromStream(MemStream);
       //frmMain.Image1.Picture.Assign(pic);
       //frmMain.Image1.Picture.LoadFromStream(MemStream);
    end;
 end;
  if assigned(MemStream) then MemStream.Free;
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
                 if not fCommandRunning then CadExecute(VDWG,VWND, CAD_CMD_REPEAT);
                 exit;
                end;
     VK_BACK  : begin
                 if Length(s) < 1 then exit;
                 SetLength(s,Length(s)-1);
                 frmMain.edtCommand.Text:= s;
                 exit;
                end;
   VK_0..
   VK_DIVIDE : begin
                 //frmMain.edtCommand.Text:= frmMain.edtCommand.Text + UpperCase(chr(VirtKey));
                 frmMain.edtCommand.Text:= frmMain.edtCommand.Text + GetCharFromVKey(Key);
          end;

   184..225: frmMain.edtCommand.Text:= frmMain.edtCommand.Text + GetCharFromVKey(Key);

  end;

  finally
    // frmMain.edtCommand.Text:= frmMain.edtCommand.Text + GetCharFromVKey(Key) ;
  dm.actMPRefreshSysChecks.Execute;
  CadSetReturnInt(0);
 end;
end;

procedure VCPromptProc (VDWG: THANDLE; Cs: LPCSTR); stdcall;
var
  s: string;
begin
  try
     s:= cs;
     if trim(s) = '' then exit;
     //frmMain.lstCommand.Items.AddText(Cs);
     frmMain.lstCommand.Items.Add(Cs);
     frmMain.lstCommand.ItemIndex:= frmMain.lstCommand.Items.Count-1;
  finally
     CadSetReturnInt(0);
  end;
end;

{procedure CmdFinishProc(VDWG: THANDLE; Command: Integer); stdcall;
begin
  //VCPromptProc(0, '[Ready]');
  frmMain.edtCommand.SetFocus;
  frmMain.edtCommand.SetFocus;
  CadSetReturnInt(0);
end;}

procedure VCViewChangedProc (VDWG: THANDLE; WinWidth, WinHeight: Integer; DwgLeft, DwgBottom, DwgRight, DwgTop, Scale: Double);  stdcall;
var
  pcx, pcy, pcz : Integer;
  pdx, pdy, pdz: Double;

begin

 CadGridGetBoldStep(VDWG, @pcx, @pcy, @pcz);
 CadGridGetSize(VDWG, @pdx, @pdy, @pdz);


 fScreenData.WinWidth:= WinWidth;
 fScreenData.WinHeight:= WinHeight;
 fScreenData.DwgLeft:= DwgLeft;
 fScreenData.DwgBottom:= DwgBottom;
 fScreenData.DwgRight:= DwgRight;
 fScreenData.DwgTop:= DwgTop;
 fScreenData.Scale:= Scale;


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

  frmMain.cursorH.Left:= Xwin + frmMain.spdViewBorderButton.Width-1;
  frmMain.cursorV.Top:=Ywin-frmMain.cursorV.Height+3;
  frmMain.lblCursorH.Caption:= FloatToStrF(Xdwg,ffFixed,4,3)+' ';
  frmMain.lblCursorV.Caption:= FloatToStrF(Ydwg,ffFixed,4,3)+' ';



  CadSetReturnInt(0);
end;

procedure VCCmdStartProc (VDWG, Command, nSteps: integer); stdcall;
begin
 fCommandRunning:= true;
 CadSetReturnInt(0);
end;

procedure VCCmdFinishProc (VDWG, Command: integer); stdcall;
begin
 fCommandRunning:= false;
 VCPromptProc(0, '[Ready]');
 frmMain.edtCommand.SetFocus;
 frmMain.edtCommand.SetFocus;
 CadSetReturnInt(0);
end;
{%ENDREGION}



procedure ShowAppEmbedded(WindowHandle: THandle; Container: TWinControl);
var
  WindowStyle : Integer;
  FAppThreadID: Cardinal;
begin
  /// Set running app window styles.
  WindowStyle := GetWindowLong(WindowHandle, GWL_STYLE);
  WindowStyle := WindowStyle
                 //- WS_CAPTION
                 - WS_BORDER
                 - WS_OVERLAPPED
                 - WS_THICKFRAME
                 ;
  SetWindowLong(WindowHandle,GWL_STYLE,WindowStyle);

  /// Attach container app input thread to the running app input thread, so that
  ///  the running app receives user input.
  FAppThreadID := GetWindowThreadProcessId(WindowHandle, nil);
  AttachThreadInput(GetCurrentThreadId, FAppThreadID, True);

  /// Changing parent of the running app to our provided container control
  Windows.SetParent(WindowHandle,Container.Handle);
  SendMessage(Container.Handle, WM_UPDATEUISTATE, UIS_INITIALIZE, 0);
  UpdateWindow(WindowHandle);

  /// This prevents the parent control to redraw on the area of its child windows (the running app)
  SetWindowLong(Container.Handle, GWL_STYLE, GetWindowLong(Container.Handle,GWL_STYLE) or WS_CLIPCHILDREN);
  /// Make the running app to fill all the client area of the container
  SetWindowPos(WindowHandle,0,0,0,Container.ClientWidth,Container.ClientHeight,SWP_NOZORDER);

  SetForegroundWindow(WindowHandle);
  //Call-->> ShowAppEmbedded(FindWindow(nil, 'Calculator'), Panel1);

  {
  var
  wHandle: HWND;
begin
  CadExecute(vdwg,vwnd, CAD_CMD_ENTPROP);

  if HPropWHandle = 0 then   begin
     HPropWHandle:= FindWindow(nil, 'Properties - Drawing.vec');
     ShowAppEmbedded(HPropWHandle,pnlProperties);
  end
  else SetWindowPos(HPropWHandle,0,0,0,pnlproperties.ClientWidth,pnlproperties.ClientHeight,0);

  pnlProperties.Visible:= true;

  }


end;


end.

