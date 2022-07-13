object frmCat: TfrmCat
  Left = 373
  Height = 253
  Top = 256
  Width = 328
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Edit Categories'
  ClientHeight = 253
  ClientWidth = 328
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  LCLVersion = '7.8'
  object DBGrid1: TDBGrid
    Left = 0
    Height = 168
    Top = 0
    Width = 328
    Align = alTop
    Color = clWindow
    Columns = <    
      item
        Title.Caption = 'Categories'
        FieldName = 'FCATEGORIES'
      end>
    DataSource = dm.srcDBCat
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Height = 25
    Top = 184
    Width = 241
    BevelOuter = bvNone
    ChildSizing.EnlargeHorizontal = crsScaleChilds
    ChildSizing.EnlargeVertical = crsScaleChilds
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 100
    ClientHeight = 25
    ClientWidth = 241
    DataSource = dm.srcDBCat
    Options = []
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 168
    Height = 30
    Top = 216
    Width = 75
    Default = True
    DefaultCaption = True
    Kind = bkOK
    ModalResult = 1
    OnClick = BitBtn1Click
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 247
    Height = 30
    Top = 216
    Width = 75
    Cancel = True
    DefaultCaption = True
    Kind = bkCancel
    ModalResult = 2
    TabOrder = 3
  end
end
