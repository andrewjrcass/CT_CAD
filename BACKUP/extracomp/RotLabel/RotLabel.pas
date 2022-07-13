{ This file was automatically created by Typhon IDE. Do not edit!
  This source is only used to compile and install the package.
 }

unit RotLabel;

{$warn 5023 off : no warning about unused units}
interface

uses
  PDJRotoLabel, TyphonPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('PDJRotoLabel', @PDJRotoLabel.Register);
end;

initialization
  RegisterPackage('RotLabel', @Register);
end.
