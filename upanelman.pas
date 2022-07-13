unit upanelman;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, Menus, cyNavPanel,
  cyRunTimeResize, TBGRAShapeObjects, ovccalc;

type

  { TfrmPanels }

  TfrmPanels = class(TForm)
    chkTape: TCheckBox;
    calculator: TOvcCalculator;
    CoolBar1: TCoolBar;
    cyNavPanel2: TcyNavPanel;
    pnltest: TPanel;
    pnlSnaps: TcyNavPanel;
    Panel4: TPanel;
    pnlCalc: TcyNavPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlComboLayers: TPanel;
    pnlComboLineWidth: TPanel;
    pnlComboLineTypes: TPanel;
    pnlComboColors: TPanel;
    pnltest1: TcyNavPanel;
    pnlViewActions: TcyNavPanel;
    pnlLayersMan: TcyNavPanel;
    pnlViewPan: TPanel;
    pnlViewZoom: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    procedure chkTapeClick(Sender: TObject);
    procedure pnltestMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnltestMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnltestMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton2Resize(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure SpeedButton46Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private

  public

  end;

var
  frmPanels: TfrmPanels;

implementation

Uses
  umodule;
{$R *.frm}

{ TfrmPanels }

procedure TfrmPanels.SpeedButton1Click(Sender: TObject);
begin
 Dm.actMPShowHideLayerPanel.Execute;
end;

procedure TfrmPanels.chkTapeClick(Sender: TObject);
begin
  if chkTape.Checked then calculator.Options:=[coShowClearTapeButton, coShowTape, coShowItemCount, coShowMemoryButtons, coShowSeparatePercent]
                     else calculator.Options:= [];
end;

procedure TfrmPanels.pnltestMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  dm.cynResize.StartJob(X, Y);
end;

procedure TfrmPanels.pnltestMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    dm.cynResize.Control := TControl(Sender);
  dm.cynResize.DoJob(X, Y);
end;

procedure TfrmPanels.pnltestMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      dm.cynResize.EndJob(X, Y)
end;

procedure TfrmPanels.SpeedButton2Click(Sender: TObject);
begin
  //Hide properties window
end;

procedure TfrmPanels.SpeedButton2Resize(Sender: TObject);
begin
  //ShowWindow(HPropWHandle, SW_MAXIMIZE);
end;

procedure TfrmPanels.SpeedButton45Click(Sender: TObject);
begin
  dm.actMPHideShowCalc.Execute;
end;

procedure TfrmPanels.SpeedButton46Click(Sender: TObject);
begin
  dm.actMPHideShowSnapsPanel.Execute;
end;

procedure TfrmPanels.SpeedButton6Click(Sender: TObject);
begin
  dm.actMPHideShowViewPanel.Execute;
end;

end.

