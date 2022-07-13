unit DemoX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, PDJRotoLabel, Spin,Shellapi;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Panel1: TPanel;
    PDJRotoLabel1: TPDJRotoLabel;
    Panel2: TPanel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    ListBox1: TListBox;
    Panel3: TPanel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup2: TRadioGroup;
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.itemindex=0 then PDJRotoLabel1.Angle:=ag0;
if RadioGroup1.itemindex=1 then PDJRotoLabel1.Angle:=ag45;
if RadioGroup1.itemindex=2 then PDJRotoLabel1.Angle:=ag90;
if RadioGroup1.itemindex=3 then PDJRotoLabel1.Angle:=ag135;
if RadioGroup1.itemindex=4 then PDJRotoLabel1.Angle:=ag180;
if RadioGroup1.itemindex=5 then PDJRotoLabel1.Angle:=ag225;
if RadioGroup1.itemindex=6 then PDJRotoLabel1.Angle:=ag270;
if RadioGroup1.itemindex=7 then PDJRotoLabel1.Angle:=ag315;
end;



procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
PDJRotoLabel1.IntToAngle(SpinEdit1.Value);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var
i:integer;
s:string;
begin
i:=listbox1.itemindex;
s:=listbox1.items[i];
PDJRotoLabel1.inttoangle(strtoint(s));
end;


procedure TForm1.Label6Click(Sender: TObject);
var
  AnUrl: array[0..255] of char;
begin
  StrPCopy(AnUrl, 'mailto:'+'pericddn@ptt.yu');
  ShellExecute(Application.Handle, 'open', AnUrl, nil, nil, SW_NORMAL);
  Label6.Font.Color:=clMaroon;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin

Case RadioGroup2.itemindex of
0:PDJRotoLabel1.Text3D:=True;
1:PDJRotoLabel1.Text3D:=False;
end;
end;

end.
