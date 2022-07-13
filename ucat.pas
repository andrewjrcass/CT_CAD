unit uCat;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, DBCtrls,
  Buttons, TreeGrids;

type

  { TfrmCat }

  TfrmCat = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
  private

  public

  end;

var
  frmCat: TfrmCat;

implementation
uses
  udbModule;

{$R *.frm}

{ TfrmCat }

procedure TfrmCat.BitBtn1Click(Sender: TObject);
begin

end;

end.

