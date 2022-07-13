unit umodule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ActnList, Controls, CadApi, Dialogs, Menus, JvStringHolder,
  JvSpellChecker, uVecadTools;



type

  { Tdm }

  Tdm = class(TDataModule)
    actEntPoint: TAction;
    actEntArc: TAction;
    actEntArc3P: TAction;
    actEntArcSCE: TAction;
    actEntArcSCA: TAction;
    actEntArcSCL: TAction;
    actEntArcSEA: TAction;
    actEntArcSED: TAction;
    actEntArcSER: TAction;
    actEntArcCSE: TAction;
    actEntArcCSA: TAction;
    actEntArcCSL: TAction;
    actEntArcCont: TAction;
    actCopyMove: TAction;
    actCopyRotate: TAction;
    actCopyMirror: TAction;
    actCopyScale: TAction;
    actCopyArrayRect: TAction;
    actCopyArrayCirc: TAction;
    actAlignAllLeft: TAction;
    actAlignAllRight: TAction;
    actAlignAllTop: TAction;
    actAlignAllBottom: TAction;
    actAlignAllCenter: TAction;
    actAlignAllCenterX: TAction;
    actAlignAllCenterY: TAction;
    actOrderSwapEntities: TAction;
    actOrderSendToFront: TAction;
    actOrderSendToBottom: TAction;
    actView3DSelect: TAction;
    actViewRasterVectorToggle: TAction;
    actViewToggleLineweight: TAction;
    actDlgLayers: TAction;
    actDlgLayerOrder: TAction;
    actDlgColor: TAction;
    actDlgLineTypes: TAction;
    actDlgLineWeight: TAction;
    actDlgTextStyles: TAction;
    actDlgPointStyles: TAction;
    actDlgMultilineStyles: TAction;
    actDlgDimStyles: TAction;
    actDlgImageMan: TAction;
    actDlgPages: TAction;
    actDlgBlocks: TAction;
    actMPCadWndResize: TAction;
    actEntLine: TAction;
    actEntRay: TAction;
    actEntLineSerial: TAction;
    actEntConstruct: TAction;
    actEntPline: TAction;
    actEntSpline: TAction;
    actEntCircle: TAction;
    actEntCircleCR: TAction;
    actEntCircleCD: TAction;
    actEntCircle2P: TAction;
    actEntCircle3P: TAction;
    actEntRect: TAction;
    actEntEllipse: TAction;
    actEntHatch: TAction;
    actMPFoldUnfoldMMenu: TAction;
    actEditErase: TAction;
    actEditExplode: TAction;
    actEditMCopy: TAction;
    actEditUndo: TAction;
    actEditRedo: TAction;
    actEditCBCopy: TAction;
    actEditCBCut: TAction;
    actEditCBPaste: TAction;
    actEditMove: TAction;
    actEditRotate: TAction;
    actEditScale: TAction;
    actEditMirror: TAction;
    actEditJoin: TAction;
    actEditTrim: TAction;
    actEditExtend: TAction;
    actDlgEntProperties: TAction;
    actDlgOption: TAction;
    actDlgPrint: TAction;
    actDlgDraftAids: TAction;
    actDlgDrwInfo: TAction;
    actDlgExportRaster: TAction;
    actDlgShowHelp: TAction;
    actViewShowGrid: TAction;
    actSysCloseFile: TAction;
    actSysClose: TAction;
    actSysAbout: TAction;
    actSysPrint: TAction;
    actSysSaveAs: TAction;
    actSysSave: TAction;
    actSysRecent: TAction;
    actSysOpen: TAction;
    actSysNew: TAction;
    actMPSaveProfile: TAction;
    actMPLoadProfile: TAction;
    actMPCadEnd: TAction;
    actMPCadInit: TAction;
    CadActions: TActionList;
    imgList: TImageList;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    popLines: TPopupMenu;
    popCircle: TPopupMenu;
    popArc: TPopupMenu;
    popSysMenu: TPopupMenu;
    popEdit: TPopupMenu;
    popCopyModify: TPopupMenu;
    Separator1: TMenuItem;
    Separator2: TMenuItem;
    Separator3: TMenuItem;
    Separator4: TMenuItem;
    strHolder: TJvStrHolder;
    procedure actCopyMoveExecute(Sender: TObject);
    procedure actDlgOptionExecute(Sender: TObject);
    procedure actDlgPrintExecute(Sender: TObject);
    procedure actEditCBCopyExecute(Sender: TObject);
    procedure actEditCBCutExecute(Sender: TObject);
    procedure actEditCBPasteExecute(Sender: TObject);
    procedure actEditEraseExecute(Sender: TObject);
    procedure actEditExplodeExecute(Sender: TObject);
    procedure actEditExtendExecute(Sender: TObject);
    procedure actEditJoinExecute(Sender: TObject);
    procedure actEditMCopyExecute(Sender: TObject);
    procedure actEditMirrorExecute(Sender: TObject);
    procedure actEditMoveExecute(Sender: TObject);
    procedure actEditRedoExecute(Sender: TObject);
    procedure actEditRotateExecute(Sender: TObject);
    procedure actEditScaleExecute(Sender: TObject);
    procedure actEditTrimExecute(Sender: TObject);
    procedure actEditUndoExecute(Sender: TObject);
    procedure actEntArc3PExecute(Sender: TObject);
    procedure actEntArcContExecute(Sender: TObject);
    procedure actEntArcCSAExecute(Sender: TObject);
    procedure actEntArcCSEExecute(Sender: TObject);
    procedure actEntArcCSLExecute(Sender: TObject);
    procedure actEntArcExecute(Sender: TObject);
    procedure actEntArcSCAExecute(Sender: TObject);
    procedure actEntArcSCEExecute(Sender: TObject);
    procedure actEntArcSCLExecute(Sender: TObject);
    procedure actEntArcSEDExecute(Sender: TObject);
    procedure actEntArcSERExecute(Sender: TObject);
    procedure actMPCadWndResizeExecute(Sender: TObject);
    procedure actEntCircle2PExecute(Sender: TObject);
    procedure actEntCircle3PExecute(Sender: TObject);
    procedure actEntCircleCDExecute(Sender: TObject);
    procedure actEntCircleCRExecute(Sender: TObject);
    procedure actEntCircleExecute(Sender: TObject);
    procedure actEntConstructExecute(Sender: TObject);
    procedure actEntEllipseExecute(Sender: TObject);
    procedure actEntHatchExecute(Sender: TObject);
    procedure actEntLineExecute(Sender: TObject);
    procedure actEntLineSerialExecute(Sender: TObject);
    procedure actEntPlineExecute(Sender: TObject);
    procedure actEntPointExecute(Sender: TObject);
    procedure actEntRayExecute(Sender: TObject);
    procedure actEntRectExecute(Sender: TObject);
    procedure actEntSplineExecute(Sender: TObject);
    procedure actMPFoldUnfoldMMenuExecute(Sender: TObject);
    procedure actMPLoadProfileExecute(Sender: TObject);
    procedure actMPCadEndExecute(Sender: TObject);
    procedure actMPCadInitExecute(Sender: TObject);
    procedure actMPSaveProfileExecute(Sender: TObject);
    procedure actOrderSendToBottomExecute(Sender: TObject);
    procedure actOrderSendToFrontExecute(Sender: TObject);
    procedure actOrderSwapEntitiesExecute(Sender: TObject);
    procedure actSysNewExecute(Sender: TObject);
    procedure actSysSaveExecute(Sender: TObject);
    procedure actViewRasterVectorToggleExecute(Sender: TObject);
    procedure actViewShowGridExecute(Sender: TObject);
    procedure actSysCloseExecute(Sender: TObject);
    procedure actViewToggleLineweightExecute(Sender: TObject);
  private

  public

  end;

const
  fProfileFileName = 'settings';

var
  dm: Tdm;



implementation
Uses ugprops;

{$R *.frm}

{ Tdm }

procedure Tdm.actMPCadInitExecute(Sender: TObject);
begin
  if  not Boolean(CadRegistration(0)) then begin
      ShowMessage('Cad app canot init');
      exit;
  end;

  vdwg:= CadCreate;
  if vdwg = Null then begin
      ShowMessage('Cad Create Error = null');
      exit;
  end;

  vwnd:= CadWndCreate(vdwg, CadWnd.Handle, 0, 0, 0, CadWnd.Width, CadWnd.Height);
  if vwnd = null then begin
      ShowMessage('Cad window create error = null');
      exit;
  end;

  frmMain.scrollMainToolbar.Min:=0;
  frmMain.scrollMainToolbar.Max:= frmMain.SpkToolbar1.Width div 2;
  actMPLoadProfile.Execute;
  CadFileNew(vdwg, vwnd);
  //comwnd:= CadCWCreate(frmmain.pnlCommand.Handle, 0, 0, frmmain.pnlCommand.width, frmmain.pnlCommand.height);
  CadAccelSetDefault;
  CadWndSetFocus(vwnd);
  CadExecute(vdwg, vwnd, CAD_CMD_SW_SHOWGRID);
  VCPromptProc(0, '[Ready]');
end;

procedure Tdm.actMPSaveProfileExecute(Sender: TObject);
var
  f: TextFile;
begin
  CadRecentSave;
  CadProfileSave(fProfileFileName);
  //CadGetVersion(@StrBuff);
  CadGetVersion(PCstr(''));
  AssignFile(f,'version.txt');
  Rewrite(f);
  WriteLn(f, StrBuff);
  CloseFile(f);
end;

procedure Tdm.actOrderSendToBottomExecute(Sender: TObject);
begin
  //CadEntityToBottom(VHANDLE hEnt);
end;

procedure Tdm.actOrderSendToFrontExecute(Sender: TObject);
begin
  //CadEntityToTop(VHANDLE hEnt);
end;

procedure Tdm.actOrderSwapEntitiesExecute(Sender: TObject);
begin
  //CadEntitySwap(VHANDLE hEnt1,VHANDLE hEnt2);
end;

procedure Tdm.actSysNewExecute(Sender: TObject);
begin

end;

procedure Tdm.actSysSaveExecute(Sender: TObject);
begin

end;

procedure Tdm.actViewRasterVectorToggleExecute(Sender: TObject);
begin

end;

procedure Tdm.actViewShowGridExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SW_SHOWGRID);
  actViewShowGrid.Checked:= Boolean(CadGridGetShow(VDWG));
end;

procedure Tdm.actSysCloseExecute(Sender: TObject);
begin
  frmMain.Close;
end;

procedure Tdm.actViewToggleLineweightExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SW_LINEWEIGHT);
  actViewShowGrid.Checked:= Boolean(CadGetLwDisplay(VDWG));
end;

procedure Tdm.actMPCadEndExecute(Sender: TObject);
begin

  actMPSaveProfile.Execute;
  CadDelete(vdwg);
end;

procedure Tdm.actMPLoadProfileExecute(Sender: TObject);
begin
  if not Boolean(CadProfileLoad(fProfileFileName)) then
         ShowMessage('Settings not loaded error=');
  CadRecentLoad('recent.ini');
end;

procedure Tdm.actEntPointExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_POINT);
end;

procedure Tdm.actEntRayExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_RAY);
end;

procedure Tdm.actEntRectExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAW_RECT);
end;

procedure Tdm.actEntSplineExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAW_SPLINE);
end;

procedure Tdm.actMPFoldUnfoldMMenuExecute(Sender: TObject);
begin
  if   actMPFoldUnfoldMMenu.Checked then
       frmMain.pnlMainToolBar.Height:= 22
  else
       frmMain.pnlMainToolBar.Height:= 112;
end;

procedure Tdm.actMPCadWndResizeExecute(Sender: TObject);
begin
 CadWndResize(vwnd, 0, 0, frmMain.pnlCadWnd.Width, frmMain.pnlCadWnd.Height);
 frmMain.btnUpDown.Left:= frmMain.Width - frmMain.btnUpDown.Width;
 frmMain.scrollMainToolbar.Visible:= frmMain.pnlMainToolBar.Width < frmMain.SpkToolbar1.Width;
end;

procedure Tdm.actEditEraseExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_ERASE);
end;

procedure Tdm.actEditCBCopyExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_CBCOPY);
end;

procedure Tdm.actDlgOptionExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_OPTIONS);
end;

procedure Tdm.actCopyMoveExecute(Sender: TObject);
begin

end;

procedure Tdm.actDlgPrintExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_PRINT);
end;

procedure Tdm.actEditCBCutExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_CBCUT);
end;

procedure Tdm.actEditCBPasteExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_CBPASTE);
end;

procedure Tdm.actEditExplodeExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_EXPLODE);
end;

procedure Tdm.actEditExtendExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_EXTEND);
end;

procedure Tdm.actEditJoinExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_JOIN);
end;

procedure Tdm.actEditMCopyExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_COPY);
end;

procedure Tdm.actEditMirrorExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_MIRROR);
end;

procedure Tdm.actEditMoveExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_MOVE);
end;

procedure Tdm.actEditRedoExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_REDO);
end;

procedure Tdm.actEditRotateExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_ROTATE);
end;

procedure Tdm.actEditScaleExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SCALE);
end;

procedure Tdm.actEditTrimExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_TRIM);
end;

procedure Tdm.actEditUndoExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_UNDO);
end;

procedure Tdm.actEntArc3PExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_3P);
end;

procedure Tdm.actEntArcContExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_CONT);
end;

procedure Tdm.actEntArcCSAExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_CSA);
end;

procedure Tdm.actEntArcCSEExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_CSE);
end;

procedure Tdm.actEntArcCSLExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_CSL);
end;

procedure Tdm.actEntArcExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC);
end;

procedure Tdm.actEntArcSCAExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_SCA);
end;

procedure Tdm.actEntArcSCEExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_SCE);
end;

procedure Tdm.actEntArcSCLExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_SCL);
end;

procedure Tdm.actEntArcSEDExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_SED);
end;

procedure Tdm.actEntArcSERExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ARC_SER);
end;

procedure Tdm.actEntCircle2PExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAW_CIRC_2P);
end;

procedure Tdm.actEntCircle3PExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_CIRC_3P);
end;

procedure Tdm.actEntCircleCDExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAW_CIRC_CD);
end;

procedure Tdm.actEntCircleCRExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAW_CIRC_CR);
end;

procedure Tdm.actEntCircleExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_CIRCLE);
end;

procedure Tdm.actEntConstructExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_XLINE);
end;

procedure Tdm.actEntEllipseExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_ELLIPSE);
end;

procedure Tdm.actEntHatchExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_HATCH);
end;

procedure Tdm.actEntLineExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_LINE);
end;

procedure Tdm.actEntLineSerialExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_LINE);
end;

procedure Tdm.actEntPlineExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_POLYLINE);
end;

end.

