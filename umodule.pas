unit umodule;

{$mode ObjFPC}{$H+} {$LONGSTRINGS ON}{$MODESWITCH TYPEHELPERS}

interface

uses
  Classes, SysUtils, ActnList, Controls, CadApi, Dialogs, Menus,
  JvStringHolder, TplMathParserUnit, cyRunTimeResize, Graphics,
  uVecadTools, upanelman, Types, Windows, DB, csvdataset, ueval;



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
    actDimLinear: TAction;
    actDimAligned: TAction;
    actDimOrdinate: TAction;
    actDimRadius: TAction;
    actDimAngular: TAction;
    actDimDiameter: TAction;
    actDimLeader: TAction;
    actDimCenterMark: TAction;
    actDlgImageManager: TAction;
    actEntImage: TAction;
    actDlgGrid: TAction;
    actDlgSnap: TAction;
    actDlgPolarTrack: TAction;
    actBlockEntInsert: TAction;
    actBlockFromFile: TAction;
    actBlockFromLibrary: TAction;
    actBlockXRef: TAction;
    actBlockCreate: TAction;
    actBlocksDlg: TAction;
    actDlgPlugins: TAction;
    actEntMLine: TAction;
    actDlgAttributes: TAction;
    actSelectByText: TAction;
    actSelectByLayer: TAction;
    actSelectUserData: TAction;
    actSelectByID: TAction;
    actSelectByDistance: TAction;
    actSelectByPolyline: TAction;
    actSelectByPolygon: TAction;
    actSelectByRect: TAction;
    actSelectByPoint: TAction;
    actView3DVPoint: TAction;
    actView3DNW: TAction;
    actView3DNE: TAction;
    actView3DSE: TAction;
    actView3DSW: TAction;
    actView3DBack: TAction;
    actView3Dfront: TAction;
    actView3DRight: TAction;
    actView3DLeft: TAction;
    actView3DBottom: TAction;
    actView3DTop: TAction;
    actSnapNone: TAction;
    actSnapGrip: TAction;
    actSnapNearest: TAction;
    actSnapTangent: TAction;
    actSnapPerpend: TAction;
    actSnapIntersection: TAction;
    actSnapNode: TAction;
    actSnapCenter: TAction;
    actSnapMidPoint: TAction;
    actSnapEndP: TAction;
    actMPHideShowSnapsPanel: TAction;
    actMPRefreshSysChecks: TAction;
    actToolsSnapPolarToogle: TAction;
    actToolsSnapAll: TAction;
    actToolsObjSnapToogle: TAction;
    actToolsSnapToGrid: TAction;
    actToolsShowGrid: TAction;
    actToolsRasterize: TAction;
    actMPGetCalcString: TAction;
    actMPHideShowCalc: TAction;
    actToolsMeasureCalibrate: TAction;
    actToolsAreaInnerPoint: TAction;
    actToolsMeasurePoly: TAction;
    actToolsMeasureArea: TAction;
    actToolsMeasure: TAction;
    actMPReadFPreview: TAction;
    actSysPrintPreview: TAction;
    actPagesFirst: TAction;
    actPagesLast: TAction;
    actPagesPrev: TAction;
    actPagesNext: TAction;
    actPagesSelect: TAction;
    actViewPanUp: TAction;
    actViewPanDown: TAction;
    actViewPanRight: TAction;
    actViewPanLeft: TAction;
    actViewZoomSelEnt: TAction;
    actViewPanPoint: TAction;
    actViewZoomRealTime: TAction;
    actMPHideShowViewPanel: TAction;
    actViewZoomOut: TAction;
    actViewZoomIn: TAction;
    actViewZoomPrev: TAction;
    actViewPanRT: TAction;
    actViewZoomWindow: TAction;
    actViewZoomExtents: TAction;
    actMPHideShowAerialVw: TAction;
    actMPHideShowMagnifier: TAction;
    actMPHideShowRullers: TAction;
    actMPPropertiesWndResize: TAction;
    actMPHideShowEntProperties: TAction;
    actMPShowHideLayerPanel: TAction;
    actTextInsert: TAction;
    actTextWindows: TAction;
    actTextM: TAction;
    actTextSingle: TAction;
    actViewResetView: TAction;
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
    actDlgPages: TAction;
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
    cynResize: TcyRunTimeResize;
    dbBlocksfdcategory: TStringField;
    dbBlocksfdDescription: TMemoField;
    dbBlocksfdName: TStringField;
    imgList: TImageList;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem100: TMenuItem;
    MenuItem101: TMenuItem;
    MenuItem102: TMenuItem;
    MenuItem103: TMenuItem;
    MenuItem104: TMenuItem;
    MenuItem105: TMenuItem;
    MenuItem106: TMenuItem;
    MenuItem107: TMenuItem;
    MenuItem108: TMenuItem;
    MenuItem109: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem110: TMenuItem;
    MenuItem111: TMenuItem;
    MenuItem112: TMenuItem;
    MenuItem113: TMenuItem;
    MenuItem114: TMenuItem;
    MenuItem115: TMenuItem;
    MenuItem116: TMenuItem;
    MenuItem117: TMenuItem;
    MenuItem118: TMenuItem;
    MenuItem119: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem120: TMenuItem;
    MenuItem121: TMenuItem;
    MenuItem122: TMenuItem;
    MenuItem123: TMenuItem;
    MenuItem124: TMenuItem;
    MenuItem125: TMenuItem;
    MenuItem126: TMenuItem;
    MenuItem127: TMenuItem;
    MenuItem128: TMenuItem;
    MenuItem129: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem130: TMenuItem;
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
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem60: TMenuItem;
    MenuItem61: TMenuItem;
    MenuItem62: TMenuItem;
    MenuItem63: TMenuItem;
    MenuItem64: TMenuItem;
    MenuItem65: TMenuItem;
    MenuItem66: TMenuItem;
    MenuItem67: TMenuItem;
    MenuItem68: TMenuItem;
    MenuItem69: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem70: TMenuItem;
    MenuItem71: TMenuItem;
    MenuItem72: TMenuItem;
    MenuItem73: TMenuItem;
    MenuItem74: TMenuItem;
    MenuItem75: TMenuItem;
    MenuItem76: TMenuItem;
    MenuItem77: TMenuItem;
    MenuItem78: TMenuItem;
    MenuItem79: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem80: TMenuItem;
    MenuItem81: TMenuItem;
    MenuItem82: TMenuItem;
    MenuItem83: TMenuItem;
    MenuItem84: TMenuItem;
    MenuItem85: TMenuItem;
    MenuItem86: TMenuItem;
    MenuItem87: TMenuItem;
    MenuItem88: TMenuItem;
    MenuItem89: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem90: TMenuItem;
    MenuItem91: TMenuItem;
    MenuItem92: TMenuItem;
    MenuItem93: TMenuItem;
    MenuItem94: TMenuItem;
    MenuItem95: TMenuItem;
    MenuItem96: TMenuItem;
    MenuItem97: TMenuItem;
    MenuItem98: TMenuItem;
    MenuItem99: TMenuItem;
    popSnaps: TPopupMenu;
    pop3D: TPopupMenu;
    popSelect: TPopupMenu;
    prsMath: TplMathParser;
    popLines: TPopupMenu;
    popCircle: TPopupMenu;
    popArc: TPopupMenu;
    popSysMenu: TPopupMenu;
    popEdit: TPopupMenu;
    popCopyModify: TPopupMenu;
    dlgSave: TSaveDialog;
    popAlign: TPopupMenu;
    popOrder: TPopupMenu;
    popText: TPopupMenu;
    popDim: TPopupMenu;
    popImages: TPopupMenu;
    popLayers: TPopupMenu;
    popPages: TPopupMenu;
    popBlocks: TPopupMenu;
    popMeasure: TPopupMenu;
    popCalcOptions: TPopupMenu;
    Separator1: TMenuItem;
    Separator2: TMenuItem;
    Separator3: TMenuItem;
    Separator4: TMenuItem;
    Separator5: TMenuItem;
    Separator6: TMenuItem;
    Separator7: TMenuItem;
    strHolder: TJvStrHolder;
    procedure actBlocksDlgExecute(Sender: TObject);
    procedure actBlockCreateExecute(Sender: TObject);
    procedure actBlockXRefExecute(Sender: TObject);
    procedure actDimAngularExecute(Sender: TObject);
    procedure actDimCenterMarkExecute(Sender: TObject);
    procedure actDimDiameterExecute(Sender: TObject);
    procedure actDimLeaderExecute(Sender: TObject);
    procedure actDimLinearExecute(Sender: TObject);
    procedure actDimOrdinateExecute(Sender: TObject);
    procedure actDimRadiusExecute(Sender: TObject);
    procedure actBlockFromFileExecute(Sender: TObject);
    procedure actBlockFromLibraryExecute(Sender: TObject);
    procedure actDlgAttributesExecute(Sender: TObject);
    procedure actDlgColorExecute(Sender: TObject);
    procedure actDlgDimStylesExecute(Sender: TObject);
    procedure actDlgDraftAidsExecute(Sender: TObject);
    procedure actDlgDrwInfoExecute(Sender: TObject);
    procedure actDlgEntPropertiesExecute(Sender: TObject);
    procedure actDlgGridExecute(Sender: TObject);
    procedure actDlgImageManagerExecute(Sender: TObject);
    procedure actDlgLayerOrderExecute(Sender: TObject);
    procedure actDlgLayersExecute(Sender: TObject);
    procedure actDlgLineTypesExecute(Sender: TObject);
    procedure actDlgLineWeightExecute(Sender: TObject);
    procedure actDlgMultilineStylesExecute(Sender: TObject);
    procedure actDlgOptionExecute(Sender: TObject);
    procedure actDlgPagesExecute(Sender: TObject);
    procedure actDlgPluginsExecute(Sender: TObject);
    procedure actDlgPointStylesExecute(Sender: TObject);
    procedure actDlgPolarTrackExecute(Sender: TObject);
    procedure actDlgPrintExecute(Sender: TObject);
    procedure actDlgSnapExecute(Sender: TObject);
    procedure actDlgTextStylesExecute(Sender: TObject);
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
    procedure actDimAlignedExecute(Sender: TObject);
    procedure actBlockEntInsertExecute(Sender: TObject);
    procedure actEntImageExecute(Sender: TObject);
    procedure actEntMLineExecute(Sender: TObject);
    procedure actSelectByDistanceExecute(Sender: TObject);
    procedure actSelectByIDExecute(Sender: TObject);
    procedure actSelectByLayerExecute(Sender: TObject);
    procedure actSelectByPointExecute(Sender: TObject);
    procedure actSelectByPolygonExecute(Sender: TObject);
    procedure actSelectByPolylineExecute(Sender: TObject);
    procedure actSelectByRectExecute(Sender: TObject);
    procedure actSelectByTextExecute(Sender: TObject);
    procedure actSelectUserDataExecute(Sender: TObject);
    procedure actSnapCenterExecute(Sender: TObject);
    procedure actSnapEndPExecute(Sender: TObject);
    procedure actMPGetCalcStringExecute(Sender: TObject);
    procedure actMPHideShowAerialVwExecute(Sender: TObject);
    procedure actMPHideShowCalcExecute(Sender: TObject);
    procedure actMPHideShowEntPropertiesExecute(Sender: TObject);
    procedure actMPHideShowMagnifierExecute(Sender: TObject);
    procedure actMPHideShowRullersExecute(Sender: TObject);
    procedure actMPHideShowSnapsPanelExecute(Sender: TObject);
    procedure actMPHideShowViewPanelExecute(Sender: TObject);
    procedure actMPPropertiesWndResizeExecute(Sender: TObject);
    procedure actMPReadFPreviewExecute(Sender: TObject);
    procedure actMPRefreshSysChecksExecute(Sender: TObject);
    procedure actMPShowHideLayerPanelExecute(Sender: TObject);
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
    procedure actPagesFirstExecute(Sender: TObject);
    procedure actPagesLastExecute(Sender: TObject);
    procedure actPagesNextExecute(Sender: TObject);
    procedure actPagesPrevExecute(Sender: TObject);
    procedure actPagesSelectExecute(Sender: TObject);
    procedure actSnapGripExecute(Sender: TObject);
    procedure actSnapIntersectionExecute(Sender: TObject);
    procedure actSnapMidPointExecute(Sender: TObject);
    procedure actSnapNearestExecute(Sender: TObject);
    procedure actSnapNodeExecute(Sender: TObject);
    procedure actSnapNoneExecute(Sender: TObject);
    procedure actSnapPerpendExecute(Sender: TObject);
    procedure actSnapTangentExecute(Sender: TObject);
    procedure actSysCloseFileExecute(Sender: TObject);
    procedure actSysNewExecute(Sender: TObject);
    procedure actTextInsertExecute(Sender: TObject);
    procedure actTextMExecute(Sender: TObject);
    procedure actTextSingleExecute(Sender: TObject);
    procedure actTextWindowsExecute(Sender: TObject);
    procedure actToolsAreaInnerPointExecute(Sender: TObject);
    procedure actToolsMeasureAreaExecute(Sender: TObject);
    procedure actToolsMeasureCalibrateExecute(Sender: TObject);
    procedure actToolsMeasureExecute(Sender: TObject);
    procedure actToolsMeasurePolyExecute(Sender: TObject);
    procedure actToolsObjSnapToogleExecute(Sender: TObject);
    procedure actToolsRasterizeExecute(Sender: TObject);
    procedure actToolsShowGridExecute(Sender: TObject);
    procedure actToolsSnapAllExecute(Sender: TObject);
    procedure actToolsSnapCenterExecute(Sender: TObject);
    procedure actToolsSnapClearAllExecute(Sender: TObject);
    procedure actToolsSnapGripExecute(Sender: TObject);
    procedure actToolsSnapIntersectExecute(Sender: TObject);
    procedure actToolsSnapMidExecute(Sender: TObject);
    procedure actToolsSnapNearestExecute(Sender: TObject);
    procedure actToolsSnapNodeExecute(Sender: TObject);
    procedure actToolsSnapPerpendExecute(Sender: TObject);
    procedure actToolsSnapPointExecute(Sender: TObject);
    procedure actToolsSnapPolarToogleExecute(Sender: TObject);
    procedure actToolsSnapTangentExecute(Sender: TObject);
    procedure actToolsSnapToGridExecute(Sender: TObject);
    procedure actView3DBackExecute(Sender: TObject);
    procedure actView3DBottomExecute(Sender: TObject);
    procedure actView3DfrontExecute(Sender: TObject);
    procedure actView3DLeftExecute(Sender: TObject);
    procedure actView3DNEExecute(Sender: TObject);
    procedure actView3DNWExecute(Sender: TObject);
    procedure actView3DRightExecute(Sender: TObject);
    procedure actView3DSEExecute(Sender: TObject);
    procedure actView3DSWExecute(Sender: TObject);
    procedure actView3DTopExecute(Sender: TObject);
    procedure actView3DVPointExecute(Sender: TObject);
    procedure actViewPanDownExecute(Sender: TObject);
    procedure actViewPanLeftExecute(Sender: TObject);
    procedure actViewPanPointExecute(Sender: TObject);
    procedure actViewPanRightExecute(Sender: TObject);
    procedure actViewPanRTExecute(Sender: TObject);
    procedure actViewPanUpExecute(Sender: TObject);
    procedure actViewResetViewExecute(Sender: TObject);
    procedure actSysCloseExecute(Sender: TObject);
    procedure actViewToggleLineweightExecute(Sender: TObject);
    procedure actViewZoomExtentsExecute(Sender: TObject);
    procedure actViewZoomInExecute(Sender: TObject);
    procedure actViewZoomOutExecute(Sender: TObject);
    procedure actViewZoomPrevExecute(Sender: TObject);
    procedure actViewZoomRealTimeExecute(Sender: TObject);
    procedure actViewZoomSelEntExecute(Sender: TObject);
    procedure actViewZoomWindowExecute(Sender: TObject);
  private

  public

  end;

 {TActionHelper = class helper for TAction
  procedure fGetString(s: String);
 end; }

const
  fProfileFileName = 'settings';

var
  dm: Tdm;
  fdirName: String;
  fS: string; // String buffer to calc strings
  actLastSnap: TAction;
  FileName: TFileName;


implementation
Uses ugprops;

{$R *.frm}

{ Tdm }

{procedure TActionHelper.fGetString(s: String);
begin
 fS:= s;
end;}

procedure Tdm.actMPCadInitExecute(Sender: TObject);
begin
{%REGION initvars}
  actLastSnap:= Taction.Create(DM);
  actlastSnap:= actSnapEndP;
  frmMain.tbSnaps.Action:= actLastSnap;
  fCommandRunning:= False;
  HPropWHandle:= 0;
  NavPnl:=0;
  fS:= '';
  fdirName:='';
{%ENDREGION}

{%REGION Init Vecad Objects}
 // if  not Boolean(CadRegistration(0)) then begin
 //     ShowMessage('Cad app canot init');
 //     exit;
 // end;

  SetEvents;
  CadAccelSetDefault;
  actMPLoadProfile.Execute;


  vdwg:= CadCreate();
  if vdwg = Null then begin
      ShowMessage('Cad Create Error = null');
      exit;
  end;

  vwnd:= CadWndCreate(vdwg, CadWnd.Handle, CAD_WS_DEFAULT, 0, 0, CadWnd.Width, CadWnd.Height);
  if vwnd = null then begin
      ShowMessage('Cad window create error = null');
      exit;
  end;
//  CadGetFileName (vdwg,@StrBuff);
 // filename:= UTF8ToString(StrBuff);
//  FileName:= BuffToString(StrBuff);
 // VCPromptProc(0, @StrBuff);
  //comwnd:= CadCWCreate(frmmain.pnlCommand.Handle, 0, 0, 1, 1);


  //CadCboxCreate(CAD_CBOX_COLOR, frmMain.pnlLayerColor.Handle, 0, 0, frmMain.pnlLayerColor.Width, frmMain.pnlLayerColor.Height, 240);
  //CadCboxCreate(CAD_CBOX_LINETYPE, frmMain.pnlLineType.Handle, 0, 0, frmMain.pnlLineType.Width, frmMain.pnlLineType.Height, 240);
  //CadCboxCreate(CAD_CBOX_LWEIGHT, frmMain.pnlLineWedth.Handle, 0, 0, frmMain.pnlLineWedth.Width, frmMain.pnlLineWedth.Height, 240);

  //Set command window focus on active cad.window.handle
  CadWndSetFocus(vwnd); // importante nÃO APAGAR SENÃO O COMMAND WINDOW PUT TEXT NÃO FUNCIONA!!!!!!

  {%ENDREGION}


  // Catch window handle to embeed into main program frame
  CadExecute(vdwg,vwnd, CAD_CMD_ENTPROP);
  HPropWHandle:= FindWindow(nil, 'Properties - Drawing.vec');
  ShowAppEmbedded(HPropWHandle,frmMain.pnlProperties);

  //Start cad window defaults
  CadExecute(vdwg, vwnd, CAD_CMD_SW_SHOWGRID);
  VCPromptProc(0, '[Ready]');
  //SetEvents; // sets main events

end;

procedure Tdm.actMPSaveProfileExecute(Sender: TObject);
var
  f: TextFile;
begin
  CadRecentSave;
  CadProfileSave(fProfileFileName);
  //CadGetVersion(@StrBuff);
  //CadGetVersion(LPCstr(''));
  //AssignFile(f,'version.txt');
  //Rewrite(f);
  //WriteLn(f, StrBuff);
  //CloseFile(f);
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

procedure Tdm.actPagesFirstExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAGE_FIRST);
end;

procedure Tdm.actPagesLastExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAGE_LAST);
end;

procedure Tdm.actPagesNextExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAGE_NEXT);
end;

procedure Tdm.actPagesPrevExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAGE_PREV);
end;

procedure Tdm.actPagesSelectExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAGE_SELECT);
end;

procedure Tdm.actSnapGripExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_GRIP);
  frmMain.tbSnaps.Action:= actSnapGrip;
end;

procedure Tdm.actSnapIntersectionExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_INTER);
  frmMain.tbSnaps.Action:= actSnapIntersection;
end;

procedure Tdm.actSnapMidPointExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_MIDPOINT);
  frmMain.tbSnaps.Action:= actSnapMidPoint;
end;

procedure Tdm.actSnapNearestExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_NEAREST);
  frmMain.tbSnaps.Action:= actSnapNearest;
end;

procedure Tdm.actSnapNodeExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_NODE);
  frmMain.tbSnaps.Action:= actSnapNode;
end;

procedure Tdm.actSnapNoneExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_NONE);
end;

procedure Tdm.actSnapPerpendExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_PERPEND);
  frmMain.tbSnaps.Action:= actSnapPerpend;
end;

procedure Tdm.actSnapTangentExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_TANGENT);
  frmMain.tbSnaps.Action:= actSnapTangent;
end;

procedure Tdm.actSysCloseFileExecute(Sender: TObject);
var
  dlgResult: integer;
begin
 actSysCloseFile.Checked:= true; //false only if save file was canceled
 if Boolean(CadGetDirty(vdwg)) then
    dlgResult:= MessageDlg('Save before quit?','the file wasn'+#39+'t saved.',mtWarning, [mbYes, mbNo, mbCancel],0 );
 case dlgResult of
  mrYes: begin {dlgSave.Execute then} {if save and new file// or cancel do nothing}
              CadFileSave(vdwg, vwnd);
              if Boolean(CadGetDirty(vdwg)) then begin
                 actSysCloseFile.Checked := false;
              end;
         end;
  // CadWinClose(vdwg, vwnd);
  mrNo: CadFileNew(vdwg, vwnd); {new file}
  mrCancel: actSysCloseFile.Checked := false; {do nothing and checked = false to alerta that calcel was pressed}
 end;
// if fStatus show message save 0 canceled 1 saved 2 dont save
end;

procedure Tdm.actSysNewExecute(Sender: TObject);
begin
  actSysCloseFile.Execute;
end;

procedure Tdm.actTextInsertExecute(Sender: TObject);
begin
 // CadExecute(vdwg,vwnd, CAD_CMD_INSERT_TEXT);
end;

procedure Tdm.actTextMExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_DRAW_MTEXT);
end;

procedure Tdm.actTextSingleExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_DRAW_TEXT);
end;

procedure Tdm.actTextWindowsExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_DRAW_WTEXT);
end;

procedure Tdm.actToolsAreaInnerPointExecute(Sender: TObject);
begin
 CadExecute(vdwg,vwnd, CAD_CMD_AREAIP);
end;

procedure Tdm.actToolsMeasureAreaExecute(Sender: TObject);
begin
 CadExecute(vdwg,vwnd, CAD_CMD_AREA);
end;

procedure Tdm.actToolsMeasureCalibrateExecute(Sender: TObject);
begin
 CadExecute(vdwg,vwnd, CAD_CMD_CALIBRATE);
end;

procedure Tdm.actToolsMeasureExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_DISTANCE);
end;

procedure Tdm.actToolsMeasurePolyExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_DISTPLINE);
end;

procedure Tdm.actToolsObjSnapToogleExecute(Sender: TObject);
begin
 CadExecute(vdwg,vwnd, CAD_CMD_SW_OSNAPON);
end;

procedure Tdm.actToolsRasterizeExecute(Sender: TObject);
begin
 CadExecute(vdwg,vwnd, CAD_CMD_RASTERIZE);
end;

procedure Tdm.actToolsShowGridExecute(Sender: TObject);
begin
 CadExecute(vdwg,vwnd, CAD_CMD_SW_SHOWGRID);
end;

procedure Tdm.actToolsSnapAllExecute(Sender: TObject);
var
  bI: UINT;
begin
 CadSnapPutMode (VDWG,CAD_SNAP_ALL );
 bI:= UINT(actToolsSnapAll.Checked);
 CadSnapPutOn (VDWG, bI);
 actToolsObjSnapToogle.Checked:= actToolsSnapAll.Checked;
end;

procedure Tdm.actToolsSnapCenterExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_CENTER);
end;

procedure Tdm.actToolsSnapClearAllExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_NONE);
end;

procedure Tdm.actToolsSnapGripExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_GRIP);
end;

procedure Tdm.actToolsSnapIntersectExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_INTER);
end;

procedure Tdm.actToolsSnapMidExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_MIDPOINT);
end;

procedure Tdm.actToolsSnapNearestExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_NEAREST);
end;

procedure Tdm.actToolsSnapNodeExecute(Sender: TObject);
begin
   CadExecute(vdwg,vwnd, CAD_CMD_SNAP_NODE);
end;

procedure Tdm.actToolsSnapPerpendExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_PERPEND);
end;

procedure Tdm.actToolsSnapPointExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_POINT);
end;

procedure Tdm.actToolsSnapPolarToogleExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SW_POLARON);
  actToolsSnapPolarToogle.Checked:= Boolean(CadPolarGetOn (VDWG));
end;

procedure Tdm.actToolsSnapTangentExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SNAP_TANGENT);
end;

procedure Tdm.actToolsSnapToGridExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_SW_SNAPGRID);
end;

procedure Tdm.actView3DBackExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_BACK);
end;

procedure Tdm.actView3DBottomExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_BOTTOM);
end;

procedure Tdm.actView3DfrontExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_FRONT);
end;

procedure Tdm.actView3DLeftExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_LEFT);
end;

procedure Tdm.actView3DNEExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_NE);
end;

procedure Tdm.actView3DNWExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_NW);
end;

procedure Tdm.actView3DRightExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_RIGHT);
end;

procedure Tdm.actView3DSEExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_SE);
end;

procedure Tdm.actView3DSWExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_SW);
end;

procedure Tdm.actView3DTopExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_TOP);
end;

procedure Tdm.actView3DVPointExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_VIEW_VPOINT);
end;

procedure Tdm.actViewPanDownExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAN_DOWN);
end;

procedure Tdm.actViewPanLeftExecute(Sender: TObject);
begin
 CadExecute(vdwg,vwnd, CAD_CMD_PAN_LEFT);
end;

procedure Tdm.actViewPanPointExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAN_POINT);
end;

procedure Tdm.actViewPanRightExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAN_RIGHT);
end;

procedure Tdm.actViewPanRTExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAN_RTIME);
end;

procedure Tdm.actViewPanUpExecute(Sender: TObject);
begin
  CadExecute(vdwg,vwnd, CAD_CMD_PAN_UP);
end;

procedure Tdm.actViewResetViewExecute(Sender: TObject);
begin
 CadExecute(vdwg,vwnd, CAD_CMD_ZOOM_EXT);
end;

procedure Tdm.actSysCloseExecute(Sender: TObject);
begin
  actSysCloseFile.Execute;
  //if clse file not canceled then go ahead and close application
  if actSysCloseFile.Checked then
     frmMain.Close;
end;

procedure Tdm.actViewToggleLineweightExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SW_LINEWEIGHT);
  actViewShowGrid.Checked:= Boolean(CadGetLwDisplay(VDWG));
end;

procedure Tdm.actViewZoomExtentsExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_ZOOM_EXT);
end;

procedure Tdm.actViewZoomInExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_ZOOM_IN);
end;

procedure Tdm.actViewZoomOutExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_ZOOM_OUT );
end;

procedure Tdm.actViewZoomPrevExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_ZOOM_PREV);
end;

procedure Tdm.actViewZoomRealTimeExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_ZOOM_RTIME);
end;

procedure Tdm.actViewZoomSelEntExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_ZOOM_SEL);
end;

procedure Tdm.actViewZoomWindowExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_ZOOM_WIN);
end;

procedure Tdm.actMPCadEndExecute(Sender: TObject);
begin
  actMPSaveProfile.Execute;
  actLastSnap.Free;
  CadDelete(vdwg);
end;

procedure Tdm.actMPLoadProfileExecute(Sender: TObject);
begin
  if not Boolean(CadProfileLoad(fProfileFileName)) then
         ShowMessage('Settings not loaded error=');
  CadRecentLoad('recent.ini');
  fdirName:=ExtractFileDir(GetCurrentDir());
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
  if   actMPFoldUnfoldMMenu.Checked then begin
       frmMain.pnlMainToolBar.Height:= 22;
       frmMain.btnUpDown.Caption:= 'â';
  end else begin
       frmMain.pnlMainToolBar.Height:= 112;
       frmMain.btnUpDown.Caption:= 'á';
  end;
end;

procedure Tdm.actMPCadWndResizeExecute(Sender: TObject);
var
  fScrollVis: boolean;
begin
 CadWndResize(vwnd, 0, 0, frmMain.pnlCadWnd.Width, frmMain.pnlCadWnd.Height);
 frmMain.btnUpDown.Left:= frmMain.Width - frmMain.btnUpDown.Width;
 fScrollVis:=frmMain.pnlMainToolBar.Width < frmMain.SpkToolbar1.Width;
 frmMain.scrollMainToolbar.Visible:= fScrollVis;
 if not fScrollVis then frmmain. pnlToolBar.Left:= 0;
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

procedure Tdm.actDlgPagesExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_PAGE);
end;

procedure Tdm.actDlgPluginsExecute(Sender: TObject);
begin
 CadPluginsDlg (frmMain.Handle);
end;

procedure Tdm.actDlgPointStylesExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_PNTSTYLE);
end;

procedure Tdm.actDlgPolarTrackExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_POLAR_DLG );
end;

procedure Tdm.actBlockXRefExecute(Sender: TObject);
var
  HBlock: Thandle;
  s: string;
  sF: TFileBuff;
begin
 HBlock:=0;
 VCPromptProc(vdwg, 'Select XRef block file');
 if Boolean(CadDialogOpenFile(FrmMain.Handle, VCPCStr('', sF))) then begin
    HBlock:=CadAddBlockXref (VDWG,@sF);
    if HBlock <> 0 then begin
       s:= 'Selected block: ' + ExtractFileName(sF);
       VCPromptProc(vdwg, VCPCStr(s, sF));
       VCInsertHBlock(HBlock);
    end;
 end;
end;

procedure Tdm.actBlockCreateExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_CREATE_BLOCK);
end;

procedure Tdm.actBlocksDlgExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_BLOCK);
end;

procedure Tdm.actDimAngularExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_DIM_ANG);
end;

procedure Tdm.actDimCenterMarkExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAW_CENMARK);
end;

procedure Tdm.actDimDiameterExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_DIM_DIAM);
end;

procedure Tdm.actDimLeaderExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_LEADER);
end;

procedure Tdm.actDimLinearExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAW_DIM_LIN);
end;

procedure Tdm.actDimOrdinateExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_DIM_ORD);
end;

procedure Tdm.actDimRadiusExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_DIM_RAD);
end;

procedure Tdm.actBlockFromFileExecute(Sender: TObject);
var
  HBlock: Thandle;
  s: String;
  sF: TFileBuff;
begin
 HBlock:=0;
 VCPromptProc(vdwg, 'Select block file');
 if Boolean(CadDialogOpenFile(FrmMain.Handle, VCPCStr('',sF))) then begin
    HBlock:= CadAddBlockFile (VDWG,@sF);
    if HBlock <> 0 then begin
       s:= 'Loaded block: ' + '...\' + ExtractFileName(sF);
       VCPromptProc(vdwg, VCPCStr(s, sF));
       //VCPromptProc(vdwg, '');
       actBlockEntInsert.Execute;
    end;
 end;

 //Open dialog if selected then
 // validade
 //then
 //CadAddBlockFromFile(VDWG, LPCTSTR szFileName,   // drawing's filename , LPCTSTR szName        // block name );
end;

procedure Tdm.actBlockFromLibraryExecute(Sender: TObject);
var
  HBlock: Thandle;
  S: String;
  fCS1, fCS2: TFileBuff;
begin
  //open dialog find in block library then load
 HBlock:= 0;
 s:= '';
 VCPromptProc(vdwg, 'Select block file');
 if Boolean(CadDialogOpenFile(FrmMain.Handle, VCPCStr(s, fCS1))) then begin
    VCPromptProc(vdwg, 'Input block name ');
    s:= InputBox('Insert Block Name', 'Blockname', '');
    if Trim(s) = '' then begin
       VCPromptProc(vdwg, 'No block selected! Cancel....');
       exit;
    end;
    HBlock:= CadAddBlockFromFile (VDWG,@fCS1, VCPCStr(s, fCS2));
    if HBlock <> 0 then begin
       //actBlockEntInsert.Execute;
       s:= 'Selected block: ' + s;
       VCPromptProc(vdwg, VCPCStr(s, fCS1));
       VCInsertHBlock(HBlock);
    end else begin
       VCPromptProc(vdwg, 'Unknown block!');
    end;
 end;
end;

procedure Tdm.actDlgAttributesExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_CREATE_ATTRIB);
end;

procedure Tdm.actDlgColorExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_COLOR);
end;

procedure Tdm.actDlgDimStylesExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DIMSTYLE);
end;

procedure Tdm.actDlgDraftAidsExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DRAFT_AIDS);
end;

procedure Tdm.actDlgDrwInfoExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_DWGINFO);
end;

procedure Tdm.actDlgEntPropertiesExecute(Sender: TObject);
begin
  //não é usado neste programa
  CadExecute(vdwg, vwnd, CAD_CMD_ENTPROP);
end;

procedure Tdm.actDlgGridExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_GRID_DLG);
end;

procedure Tdm.actDlgImageManagerExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_IMAGE_MANAGER);
end;

procedure Tdm.actDlgLayerOrderExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_LAYERS_ORDER);
end;

procedure Tdm.actDlgLayersExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_LAYER);
end;

procedure Tdm.actDlgLineTypesExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_LINETYPE);
end;

procedure Tdm.actDlgLineWeightExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_LINEWEIGHT);
end;

procedure Tdm.actDlgMultilineStylesExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_MLINESTYLE);
end;

procedure Tdm.actDlgPrintExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_PRINT);
end;

procedure Tdm.actDlgSnapExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SNAP_DLG);
end;

procedure Tdm.actDlgTextStylesExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_TEXTSTYLE);
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

procedure Tdm.actDimAlignedExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_DIM_ALIGN);
end;

procedure Tdm.actBlockEntInsertExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_INSERT_BLOCK);
end;

procedure Tdm.actEntImageExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_INSERT_IMAGE);
end;

procedure Tdm.actEntMLineExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_DRAW_MLINE);
end;

procedure Tdm.actSelectByDistanceExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYDIST);
end;

procedure Tdm.actSelectByIDExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYID);
end;

procedure Tdm.actSelectByLayerExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYLAYER);
end;

procedure Tdm.actSelectByPointExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYPOINT);
end;

procedure Tdm.actSelectByPolygonExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYPOLYGON);
end;

procedure Tdm.actSelectByPolylineExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYPOLYLINE);
end;

procedure Tdm.actSelectByRectExecute(Sender: TObject);
begin
 CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYRECT);
end;

procedure Tdm.actSelectByTextExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYTEXT);
end;

procedure Tdm.actSelectUserDataExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SEL_BYUSERDATA);
end;

procedure Tdm.actSnapCenterExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SNAP_CENTER);
  frmMain.tbSnaps.Action:= actSnapCenter;
end;

procedure Tdm.actSnapEndPExecute(Sender: TObject);
begin
  CadExecute(vdwg, vwnd, CAD_CMD_SNAP_ENDPOINT);
  frmMain.tbSnaps.Action:= actSnapEndP;
end;

procedure Tdm.actMPGetCalcStringExecute(Sender: TObject);
begin
  //fS:= fS + '= ';
  prsMath.Expression:= fS;
  fS:= 'Exp : ' + fS + '= ' + FloatToStr(prsMath.Value);
  VCPromptProc(0,LPCStr(fS));
  InitEval;
  fS:= 'Exp : ' + fS + '= ' + FloatToStr(Eval(prsMath.Expression));
  VCPromptProc(0,LPCStr(fS));

  fS:= '';
end;

procedure Tdm.actMPHideShowAerialVwExecute(Sender: TObject);
var
  fXY: Tpoint;
begin
 fXY:= frmMain.pnlCadWnd.ClientToScreen(Types.Point(frmMain.pnlCadWnd.Left, frmMain.pnlCadWnd.Top));
 NavPnl:= CadNavCreate(frmMain.Handle, fXY.X, fXY.Y, 300,
          300, CAD_NAV_CPANEL);
 CadNavSetLink(vwnd);

end;

procedure Tdm.actMPHideShowCalcExecute(Sender: TObject);
var
  aPoint: TPoint;
begin
 aPoint:= frmMain.ScreenToClient(mouse.CursorPos);
 With frmPanels.pnlCalc do begin
   Parent:= frmMain;
   Top:= aPoint.Y+15;
   Left:= aPoint.X - Width+10;
   Visible:= actMPHideShowCalc.Checked;
   //actMPShowHideLayerPanel.Checked:= Visible;
 end;
end;

procedure Tdm.actMPHideShowEntPropertiesExecute(Sender: TObject);
var
  IsVisible: Boolean;
begin
 IsVisible:= actMPHideShowEntProperties.Checked;
 frmMain.spltProp.Visible:= IsVisible;
 frmMain.pnlProperties.Visible:= IsVisible;
 if IsVisible then
    SetWindowPos(HPropWHandle,0,0,0,frmMain.pnlproperties.ClientWidth,frmMain.pnlproperties.ClientHeight,0);
end;

procedure Tdm.actMPHideShowMagnifierExecute(Sender: TObject);
begin
 CadMagPutShow(Integer(actMPHideShowMagnifier.Checked));
 CadWndRedraw(vwnd);
end;

procedure Tdm.actMPHideShowRullersExecute(Sender: TObject);
var
  IsVisible: Boolean;
begin
  IsVisible:= actMPHideShowRullers.Checked;
  frmMain.pnlCursorH.Visible:= IsVisible;
  frmMain.pnlCursorV.Visible:= IsVisible;
end;

procedure Tdm.actMPHideShowSnapsPanelExecute(Sender: TObject);
var
  aPoint: TPoint;
begin
 aPoint:= frmMain.ScreenToClient(mouse.CursorPos);
 With frmPanels.pnlSnaps do begin
   Parent:= frmMain;
   Top:= aPoint.Y+15;
   Left:= aPoint.X - Width+10;
   Visible:= actMPHideShowSnapsPanel.Checked;
   //actMPShowHideLayerPanel.Checked:= Visible;
 end;
end;

procedure Tdm.actMPHideShowViewPanelExecute(Sender: TObject);
var
  aPoint: TPoint;
begin
 aPoint:= frmMain.ScreenToClient(mouse.CursorPos);
 With frmPanels.pnlViewActions do begin
   Parent:= frmMain;
   Top:= aPoint.Y+15;
   Left:= aPoint.X - Width+10;
   Visible:= actMPHideShowViewPanel.Checked;
   //actMPShowHideLayerPanel.Checked:= Visible;
 end;
end;

procedure Tdm.actMPPropertiesWndResizeExecute(Sender: TObject);
begin
  SetWindowPos(HPropWHandle,0,0,0,frmMain.pnlproperties.ClientWidth,frmMain.pnlproperties.ClientHeight,0);
end;

procedure Tdm.actMPReadFPreviewExecute(Sender: TObject);
var
  fIFile: TVCImageInfo;
  MemStream : TMemoryStream;
  pic: TPicture;
begin
{ try
  MemStream := TMemoryStream.Create;
  pic:= TPicture.Create;
   if Boolean(CadDialogOpenFile(FrmMain.Handle, @STrBuff)) then begin
    fIFile.fSize:= CadExtractImage  (@StrBuff, @fIFile.fImgBuff);
    if fIFile.fSize <> 0 then begin
       MemStream.Write(fIFile.fImgBuff, fIFile.fSize); //write from buffer to memory stream
       MemStream.Position:= 0;
       pic.LoadFromStream(MemStream);
       frmMain.Image1.Picture.Assign(pic);
       //frmMain.Image1.Picture.LoadFromStream(MemStream);
       frmMain.Image1.Repaint;
    end;
 end;
 finally
  pic.Free;
  if assigned(MemStream) then MemStream.Free;
 end;}
 if Boolean(CadDialogOpenFile(FrmMain.Handle, @StrBuff)) then begin
    GetFilePicture(StrBuff, frmMain.Image1.Picture);
    frmMain.Image1.Repaint;
 end;

end;

procedure Tdm.actMPRefreshSysChecksExecute(Sender: TObject);
begin
  //Check Object snap on/off on panel View
  actToolsObjSnapToogle.Checked:= Bool(CadSnapGetOn(VDWG));
  actToolsSnapToGrid.Checked:= Bool(CadGridGetSnap(VDWG));
  actToolsShowGrid.Checked:=Bool(CadGridGetShow(VDWG));
end;

procedure Tdm.actMPShowHideLayerPanelExecute(Sender: TObject);
var
  aPoint: TPoint;
begin
 aPoint:= frmMain.ScreenToClient(mouse.CursorPos);
 With frmPanels.pnlLayersMan do begin
   Parent:= frmMain;
   if not Visible then begin
    Top:= aPoint.Y+15;
    Left:= aPoint.X - Width+10;
   end;
   Visible:= actMPShowHideLayerPanel.Checked;
   CadCboxCreate(CAD_CBOX_LAYER, frmPanels.pnlComboLayers.Handle, -1, -1, frmPanels.pnlComboLayers.Width-1, frmPanels.pnlComboLayers.Height-1, 20);
   CadCboxCreate(CAD_CBOX_COLOR, frmPanels.pnlComboColors.Handle, -1, -1, frmPanels.pnlComboColors.Width-1, frmPanels.pnlComboColors.Height-1, 200);
   CadCboxCreate(CAD_CBOX_LINETYPE, frmPanels.pnlComboLineTypes.Handle, -1, -1, frmPanels.pnlComboLineTypes.Width-1, frmPanels.pnlComboLineTypes.Height-1, 10);
   CadCboxCreate(CAD_CBOX_LWEIGHT, frmPanels.pnlComboLineWidth.Handle, -1, -1, frmPanels.pnlComboLineWidth.Width-1, frmPanels.pnlComboLineWidth.Height-1, 10);
   CadWndSetFocus(vwnd);
 end;
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

