unit ugprops;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, ExtCtrls, ComCtrls, StdCtrls,
  Dialogs, Buttons, Menus, BGRAVirtualScreen, BCPanel, BGRACustomDrawn,
  SpkToolbar, spkt_Tab, spkt_Pane, spkt_Buttons, RLReport, JvHtControls,
  ECRuler, umodule, CadApi, windows, uvecadtools;

type



  { TfrmMain }
  TfrmMain = class(TForm)
    BGRAVirtualScreen4: TBGRAVirtualScreen;
    btnUpDown: TPanel;
    CoolBar1: TCoolBar;
    lblCursorH: TLabel;
    lblCursorV: TLabel;
    pnlMainToolBar: TBCPanel;
    tbControls: TBGRAVirtualScreen;
    BGRAVirtualScreen2: TBGRAVirtualScreen;
    BGRAVirtualScreen3: TBGRAVirtualScreen;
    ColorButton1: TColorButton;
    ColorButton2: TColorButton;
    cursorV: TBGRAVirtualScreen;
    cursorH: TBGRAVirtualScreen;
    edtCommand: TEdit;
    lstCommand: TJvHTListBox;
    Label1: TLabel;
    pnlCursorV: TPanel;
    pnlCursorH: TPanel;
    Panel3: TPanel;
    pnlCommandInput: TPanel;
    pnlCadWnd: TBGRAVirtualScreen;
    pnlCommand: TPanel;
    pnlStatus: TPanel;
    scrollMainToolbar: TScrollBar;
    SpeedButton1: TSpeedButton;
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
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure actMPShowGridExecute(Sender: TObject);
    procedure btnUpDownClick(Sender: TObject);
    procedure edtCommandKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lstCommandClick(Sender: TObject);
    procedure pnlCadWndResize(Sender: TObject);
    procedure scrollMainToolbarChange(Sender: TObject);
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
begin
   case key of
     VK_RETURN: begin
                  s:= edtCommand.Text;
                  s:= Trim(S);
                  edtCommand.Text:= '';
                  if s <> '' then begin
                     if (dm.strHolder.Strings.IndexOf(s) < 0) and not IsNumber(s) then begin
                        s:= 'Unknown command: ' + s;
                        VCPromptProc(0,PCStr(s));
                        exit;
                     end;
                     VCPromptProc(0,PCStr(s));
                     CadCWPutText(vdwg, PCStr(s));
                  end else begin
                     CadExecute(VDWG,VWND, CAD_CMD_REPEAT);
                  end;
                end;
     VK_ESCAPE: begin
                  VCPromptProc(0,'[ESC]');
                  VCCmdFinishProc(0,0);
                  edtCommand.Text:='';
                end;
   end;
end;

procedure TfrmMain.btnUpDownClick(Sender: TObject);
begin
  dm.actMPFoldUnfoldMMenu.Execute;
  if dm.actMPFoldUnfoldMMenu.Checked then
     btnUpDown.Caption:= 'â'
  else
     btnUpDown.Caption:= 'á';
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
   pnlCadWndResize(Tobject(Self));
   CadOnEventKeyDown(@VCKeyDownProc);
   CadOnEventPrompt(@VCPromptProc);
   CadOnEventCmdFinish(@VCCmdFinishProc);
   CadOnEventMouseMove(@VCMouseMoveProc);
   CadOnEventView(@VCViewChangedProc);
end;

procedure TfrmMain.lstCommandClick(Sender: TObject);
begin
  edtCommand.SetFocus;
end;

procedure TfrmMain.pnlCadWndResize(Sender: TObject);
begin
   dm.actMPCadWndResize.Execute;
end;

procedure TfrmMain.scrollMainToolbarChange(Sender: TObject);
begin
  SpkToolbar1.Left:= - scrollMainToolbar.Position;
end;

end.

