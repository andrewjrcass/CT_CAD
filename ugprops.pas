unit ugprops;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, ExtCtrls, ComCtrls, StdCtrls,
  Dialogs, Buttons, Menus, BGRAVirtualScreen, BCPanel,
  SpkToolbar, spkt_Tab, spkt_Pane, spkt_Buttons,
  umodule, CadApi, windows, uvecadtools, Types;

type



  { TfrmMain }
  TfrmMain = class(TForm)
    BGRAVirtualScreen1: TBGRAVirtualScreen;
    BitBtn1: TBitBtn;
    Image1: TImage;
    lstCommand: TListBox;
    Panel1: TPanel;
    pnlproperties: TBGRAVirtualScreen;
    ColorButton1: TColorButton;
    ColorButton2: TColorButton;
    cursorH: TBGRAVirtualScreen;
    cursorV: TBGRAVirtualScreen;
    Label2: TLabel;
    lblCursorH: TLabel;
    lblCursorV: TLabel;
    pnlCursorH: TPanel;
    pnlCursorV: TPanel;
    pnlToolBar: TBCPanel;
    btnUpDown: TPanel;
    pnlMainToolBar: TBCPanel;
    spdViewBorderButton: TPanel;
    SpkLargeButton13: TSpkLargeButton;
    SpkLargeButton14: TSpkLargeButton;
    SpkLargeButton15: TSpkLargeButton;
    SpkLargeButton16: TSpkLargeButton;
    SpkLargeButton17: TSpkLargeButton;
    SpkLargeButton18: TSpkLargeButton;
    SpkLargeButton19: TSpkLargeButton;
    SpkLargeButton3: TSpkLargeButton;
    SpkPane10: TSpkPane;
    SpkPane11: TSpkPane;
    SpkPane12: TSpkPane;
    SpkPane13: TSpkPane;
    SpkPane14: TSpkPane;
    SpkPane15: TSpkPane;
    SpkPane16: TSpkPane;
    SpkPane17: TSpkPane;
    SpkPane7: TSpkPane;
    SpkPane8: TSpkPane;
    SpkPane9: TSpkPane;
    SpkSmallButton13: TSpkSmallButton;
    SpkSmallButton14: TSpkSmallButton;
    SpkSmallButton15: TSpkSmallButton;
    SpkSmallButton16: TSpkSmallButton;
    SpkSmallButton17: TSpkSmallButton;
    SpkSmallButton18: TSpkSmallButton;
    SpkSmallButton19: TSpkSmallButton;
    SpkSmallButton20: TSpkSmallButton;
    SpkSmallButton21: TSpkSmallButton;
    SpkSmallButton22: TSpkSmallButton;
    SpkSmallButton23: TSpkSmallButton;
    SpkSmallButton24: TSpkSmallButton;
    SpkSmallButton25: TSpkSmallButton;
    SpkSmallButton26: TSpkSmallButton;
    SpkSmallButton27: TSpkSmallButton;
    SpkSmallButton28: TSpkSmallButton;
    SpkSmallButton29: TSpkSmallButton;
    SpkSmallButton30: TSpkSmallButton;
    SpkSmallButton31: TSpkSmallButton;
    SpkSmallButton32: TSpkSmallButton;
    SpkSmallButton33: TSpkSmallButton;
    SpkSmallButton34: TSpkSmallButton;
    SpkSmallButton35: TSpkSmallButton;
    SpkSmallButton36: TSpkSmallButton;
    SpkSmallButton37: TSpkSmallButton;
    SpkSmallButton38: TSpkSmallButton;
    SpkSmallButton39: TSpkSmallButton;
    spltProp: TSplitter;
    BGRAVirtualScreen3: TBGRAVirtualScreen;
    edtCommand: TEdit;
    Label1: TLabel;
    Panel3: TPanel;
    pnlCommandInput: TPanel;
    pnlCadWnd: TBGRAVirtualScreen;
    pnlCommand: TPanel;
    pnlStatus: TPanel;
    scrollMainToolbar: TScrollBar;
    SpkLargeButton1: TSpkLargeButton;
    SpkLargeButton10: TSpkLargeButton;
    SpkLargeButton11: TSpkLargeButton;
    SpkLargeButton12: TSpkLargeButton;
    SpkLargeButton2: TSpkLargeButton;
    SpkLargeButton4: TSpkLargeButton;
    SpkLargeButton5: TSpkLargeButton;
    SpkLargeButton6: TSpkLargeButton;
    SpkLargeButton7: TSpkLargeButton;
    SpkLargeButton8: TSpkLargeButton;
    SpkLargeButton9: TSpkLargeButton;
    SpkPane1: TSpkPane;
    SpkPane2: TSpkPane;
    SpkPane3: TSpkPane;
    SpkPane4: TSpkPane;
    SpkPane5: TSpkPane;
    SpkPane6: TSpkPane;
    SpkSmallButton1: TSpkSmallButton;
    SpkSmallButton10: TSpkSmallButton;
    SpkSmallButton11: TSpkSmallButton;
    SpkSmallButton12: TSpkSmallButton;
    SpkSmallButton2: TSpkSmallButton;
    SpkSmallButton3: TSpkSmallButton;
    SpkSmallButton4: TSpkSmallButton;
    SpkSmallButton5: TSpkSmallButton;
    SpkSmallButton6: TSpkSmallButton;
    SpkSmallButton7: TSpkSmallButton;
    SpkSmallButton8: TSpkSmallButton;
    SpkSmallButton9: TSpkSmallButton;
    SpkTab1: TSpkTab;
    SpkTab2: TSpkTab;
    SpkTab3: TSpkTab;
    SpkTab4: TSpkTab;
    SpkTab5: TSpkTab;
    SpkToolbar1: TSpkToolbar;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    tbSnaps: TToolButton;
    tbTop: TToolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton2: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton3: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton4: TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    ToolButton47: TToolButton;
    ToolButton48: TToolButton;
    ToolButton49: TToolButton;
    ToolButton5: TToolButton;
    ToolButton50: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure actMPShowGridExecute(Sender: TObject);
    procedure btnUpDownClick(Sender: TObject);
    procedure edtCommandKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lstCommandClick(Sender: TObject);
    procedure lstCommandDrawItem(Control: TWinControl; Index: Integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure pnlpropertiesResize(Sender: TObject);
    procedure pnlCadWndResize(Sender: TObject);
    procedure scrollMainToolbarChange(Sender: TObject);
    procedure spdViewBorderButtonClick(Sender: TObject);
    procedure SpkPane11MoreOptionsButtonClick(Sender: TObject);
    procedure SpkPane5MoreOptionsButtonClick(Sender: TObject);
    procedure SpkPane9MoreOptionsButtonClick(Sender: TObject);
    procedure SpkTab2Click(Sender: TObject);
    procedure SpkToolbar1TabChanged(Sender: TObject);
  private

  public
  end;

var
  frmMain: TfrmMain;
   CadWnd: TBGRAVirtualScreen;

implementation

{$R *.frm}

{ TfrmMain }

procedure TfrmMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  dm.actMPCadEnd.Execute;
end;

procedure TfrmMain.edtCommandKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  s: string;

  function StoVarStr(const s: string): boolean;
  var
   charArray : Array[0..5] of Char;
   strArray  : Array of String;
   Prompt: string;
   cr: Char;
   fr: Real;
  begin
   Result:= Pos('STO',s) <> 0;
   if Result Then begin
      charArray[0] := '(';
      charArray[1] := ')';
      charArray[2] := '[';
      charArray[3] := ']';
      charArray[4] := ',';
      charArray[5] := ';';
      strArray:= s.Split(charArray);
      if length(strarray) = 1 then
         cr:= strArray[1][1]
      else
         cr:= #0;
      fr:= StrToFloat(strArray[2]);
      if cr in ['A'..'E', 'T','X','Y'] then begin
         case cr of
            'A': dm.prsMath.A:= fr;
            'B': dm.prsMath.B:= fr;
            'C': dm.prsMath.C:= fr;
            'D': dm.prsMath.D:= fr;
            'E': dm.prsMath.E:= fr;
            'T': dm.prsMath.T:= fr;
            'X': dm.prsMath.X:= fr;
            'Y': dm.prsMath.Y:= fr;
         end;  // else is a new variable
         prompt:= strArray[1] + '= ' + strArray[2];
         VCPromptProc(vdwg, VCPCStr(prompt,StrBuff));
      end else begin
         dm.prsMath.SetVariable(strArray[1], fr);
         prompt:= 'Defined: ' + strArray[1] + '= ' + strArray[2];
         VCPromptProc(vdwg,VCPCStr(prompt, StrBuff));
      end;
      exit;
   end;
  end;

begin
   case key of
     VK_RETURN: begin
                  s:= edtCommand.Text;
                  s:= Trim(S);
                  if s = '' then exit;
                  if s[1] = '=' then begin // case s is math expretion
                     if StoVarStr(s) then begin
                        edtCommand.Text:='';
                        exit;
                     end;
                     fS:='';
                    // goto calculator end eval string
                     s:= Copy(s, 2, Length(s));
                     fS:= s;
                     edtCommand.Text:= '';
                     dm.actMPGetCalcString.Execute;
                     exit;
                  end;
                  edtCommand.Text:= '';
                  if s <> '' then begin
                     if (dm.strHolder.Strings.IndexOf(s) < 0) and not IsNumber(s) then begin
                        s:= 'Unknown command: ' + s;
                        VCPromptProc(0,PCStr(s));
                        Exit; // exit não pode sair daqui
                     end;
                     VCPromptProc(0,LPCStr(s));
                     IF VDWG <> NULL THEN
                        CadCWPutText(vdwg, LPCStr(s));
                  end else begin
                     CadExecute(VDWG,VWND, CAD_CMD_REPEAT);
                  end;
                  exit;
                end;
     VK_ESCAPE: begin
                  VCPromptProc(0,'[ESC]');
                  VCCmdFinishProc(0,0);
                  edtCommand.Text:='';
                  exit;
                end;
   end;
   //edtCommand.Text:= edtCommand.Text + Char(Key);
end;

procedure TfrmMain.btnUpDownClick(Sender: TObject);
begin
  dm.actMPFoldUnfoldMMenu.Execute;
end;

procedure TfrmMain.actMPShowGridExecute(Sender: TObject);
begin
  dm.actViewShowGrid.Execute;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
   CadWnd:=pnlCadWnd;
   dm.actMPCadInit.Execute;
   pnlMainToolBar.Height:= SpkToolbar1.Height;
   pnlCadWnd.OnResize:= @pnlCadWndResize;
   SpkToolbar1.OnTabChanged:= @SpkToolbar1TabChanged;
   scrollMainToolbar.Min:=0;
   scrollMainToolbar.Max:= SpkToolbar1.Width div 2;
   dm.actMPCadWndResize.Execute;
   SpkSmallButton14.Checked:=true;
end;

procedure TfrmMain.lstCommandClick(Sender: TObject);
begin
  edtCommand.SetFocus;
end;

procedure TfrmMain.lstCommandDrawItem(Control: TWinControl; Index: Integer;
  ARect: TRect; State: TOwnerDrawState);
begin
 with lstCommand.Canvas do begin
   // if odSelected in State then
    Brush.Color := lstCommand.Color;
    FillRect(ARect);
   //    Brush.Color := clYellow;
    if odSelected in State then Font.Color:=clBlue
                           else Font.Color:=clGray;
    TextOut(ARect.left, ARect.Top, lstCommand.Items[Index]);
    //if odFocused in State then
    //    DrawFocusRect(ARect);
 end
end;

procedure TfrmMain.pnlpropertiesResize(Sender: TObject);
begin
 dm.actMPPropertiesWndResize.Execute;
end;

procedure TfrmMain.pnlCadWndResize(Sender: TObject);
begin
   dm.actMPCadWndResize.Execute;
end;

procedure TfrmMain.scrollMainToolbarChange(Sender: TObject);
begin
  pnlToolBar.Left:= - scrollMainToolbar.Position;
end;

procedure TfrmMain.spdViewBorderButtonClick(Sender: TObject);
begin
   dm.actViewResetView.Execute;
end;

procedure TfrmMain.SpkPane11MoreOptionsButtonClick(Sender: TObject);
begin
  dm.actMPHideShowSnapsPanel.Execute;
end;

procedure TfrmMain.SpkPane5MoreOptionsButtonClick(Sender: TObject);
begin
  //show panel Lasyers Manager
  dm.actMPShowHideLayerPanel.Execute;
end;

procedure TfrmMain.SpkPane9MoreOptionsButtonClick(Sender: TObject);
begin
  dm.actMPHideShowViewPanel.Execute;
end;

procedure TfrmMain.SpkTab2Click(Sender: TObject);
begin
 dm.actMPRefreshSysChecks.Execute;
end;

procedure TfrmMain.SpkToolbar1TabChanged(Sender: TObject);
begin
  dm.actMPFoldUnfoldMMenu.Checked:=true;
  dm.actMPFoldUnfoldMMenu.Execute;
end;

end.

