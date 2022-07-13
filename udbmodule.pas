unit udbModule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Dialogs, DB, dbf;

type

  { Tdm }

  Tdm = class(TDataModule)
    db: TDbf;
    dbCat: TDbf;
    dlgDir: TSelectDirectoryDialog;
    dlgOpen: TOpenDialog;
    dlgOpenBlob: TOpenDialog;
    srcDB: TDataSource;
    srcDBCat: TDataSource;
  private

  public

  end;

var
  dm: Tdm;

implementation

{$R *.frm}

end.

