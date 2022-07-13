unit udbasenav;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, dbf, Forms, Controls, Graphics, Dialogs, Menus,
  DBCtrls, ActnList, DBGrids, StdCtrls, ExtCtrls, Buttons, Clipbrd, CADAPI, uCat;

type

  { TForm1 }

  TForm1 = class(TForm)
    actEditcat: TAction;
    actRunFilter: TAction;
    actPasteImage: TAction;
    actLoadBLOB: TAction;
    actOpen: TAction;
    actCreate: TAction;
    actClose: TAction;
    actList: TActionList;
    btnLoadBlob: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBImage1: TDBImage;
    edtFilter: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    SpeedButton1: TSpeedButton;
    Splitter1: TSplitter;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    MMenu: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure actCloseExecute(Sender: TObject);
    procedure actCreateExecute(Sender: TObject);
    procedure actEditcatExecute(Sender: TObject);
    procedure actLoadBLOBExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actPasteImageExecute(Sender: TObject);
    procedure actRunFilterExecute(Sender: TObject);
    procedure dbAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
uses
  udbModule;
var
 s: TFileName;
{$R *.frm}

{ TForm1 }

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  actRunFilter.Execute;
  SpeedButton1.Down:=actRunFilter.Checked;
end;

procedure TForm1.actCreateExecute(Sender: TObject);
begin
  dm.dlgOpen.InitialDir:= ExtractFilePath(Application.ExeName) + 'DBase';
  if dm.dlgOpen.Execute then begin
     s:= dm.dlgOpen.FileName;
     if trim(s) = '' then exit; // nothing do do
  if FileExists(s) then begin
   if MessageDlg('Alert','File already exists: Overwrite?',mtWarning,[mbYes, mbNo],0) = mrNo then Exit;
  end;
    With dm.db do begin
    Close;
    with FieldDefs do begin
      Clear;
      Add('BlockName',ftString,30);
      Add('Category',ftString,30);
      Add('FileName', ftString,30);
      Add('Descript',ftMemo,400);
      Add('Blob',ftGraphic);
    end;
    TableName:=s;
    CreateTable;
    Exclusive := true;
    Open;
    AddIndex('byBlockName', 'BlockName+Category', [],'');
    AddIndex('byCategory', 'Category+BlockName', [],'');
    AddIndex('byFileName', 'Filename+BlockName', [],'');
    end;
  end;
end;

procedure TForm1.actEditcatExecute(Sender: TObject);
begin
  dm.dbCat.Active:=true;
  frmCat.ShowModal;
  if frmCat.ModalResult = mrOK then begin
     if dm.dbCat.State in dsEditModes then
        dm.dbCat.Post;
  end;
end;

procedure TForm1.actLoadBLOBExecute(Sender: TObject);
begin
 if dm.db.State in dsEditModes then
    if dm.dlgOpenBlob.execute then begin
       DBImage1.Picture.LoadFromFile(dm.dlgOpenBlob.filename);
    end;
end;

procedure TForm1.actCloseExecute(Sender: TObject);
begin
  if dm.db .State in dsEditModes then
     dm.db.Post;
  dm.db.Close;
end;

procedure TForm1.actOpenExecute(Sender: TObject);
begin
  dm.dlgOpen.InitialDir:= ExtractFilePath(Application.ExeName) + 'DBase';
  if dm.dlgOpen.execute then begin
     s:= dm.dlgOpen.FileName;
     if Trim(s) = '' then Exit;
     dm.db.Close;
     dm.db.TableName:=s;
     dm.db.Open;
     dm.db.Active:=true;
  end;
end;

procedure TForm1.actPasteImageExecute(Sender: TObject);
begin
  DBImage1.Picture.Bitmap.Assign(Clipboard);
end;

procedure TForm1.actRunFilterExecute(Sender: TObject);
var
 s: string;
begin
 s:= edtFilter.Text;
 dm.db.Filter:=s;
 dm.db.Filtered:=actRunFilter.Checked;
end;

procedure TForm1.dbAfterPost(DataSet: TDataSet);
begin
  btnLoadBlob.Visible:=False;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  dm.dbCat.TableName:= ExtractFilePath(Application.ExeName) + 'DBase\Categories.db';
  dm.dbCat.IndexName:= 'BYCATEGORY';
  dm.dbCat.Active:=true;
end;

end.

