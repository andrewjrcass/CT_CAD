object Form1: TForm1
  Left = 373
  Height = 517
  Top = 256
  Width = 609
  Caption = 'Form1'
  ClientHeight = 497
  ClientWidth = 609
  Menu = MMenu
  OnShow = FormShow
  LCLVersion = '7.8'
  object DBEdit1: TDBEdit
    Left = 8
    Height = 23
    Top = 184
    Width = 128
    DataField = 'BlockName'
    DataSource = dm.srcDB
    MaxLength = 0
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Height = 25
    Top = 416
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
    DataSource = dm.srcDB
    Options = []
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 168
    Height = 128
    Top = 184
    Width = 209
    DataField = 'Descript'
    DataSource = dm.srcDB
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Height = 160
    Top = 0
    Width = 609
    Align = alTop
    Color = clWindow
    Columns = <    
      item
        Title.Caption = 'Item name'
        FieldName = 'BlockName'
      end    
      item
        Title.Caption = 'Category'
        FieldName = 'Category'
      end    
      item
        Title.Caption = 'File name'
        FieldName = 'FileName'
      end>
    DataSource = dm.srcDB
    TabOrder = 3
  end
  object Label1: TLabel
    Left = 8
    Height = 15
    Top = 168
    Width = 67
    Caption = 'Block Name:'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 8
    Height = 15
    Top = 208
    Width = 51
    Caption = 'Category:'
    ParentColor = False
  end
  object btnLoadBlob: TBitBtn
    Left = 8
    Height = 30
    Top = 344
    Width = 83
    Action = actLoadBLOB
    Caption = 'Image File'
    TabOrder = 4
  end
  object Label3: TLabel
    Left = 8
    Height = 15
    Top = 248
    Width = 54
    Caption = 'File name:'
    ParentColor = False
  end
  object DBEdit3: TDBEdit
    Left = 8
    Height = 23
    Top = 267
    Width = 128
    DataField = 'FileName'
    DataSource = dm.srcDB
    MaxLength = 0
    TabOrder = 5
  end
  object Label4: TLabel
    Left = 168
    Height = 15
    Top = 168
    Width = 63
    Caption = 'Description:'
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 407
    Height = 337
    Top = 160
    Width = 202
    Align = alRight
    ClientHeight = 337
    ClientWidth = 202
    TabOrder = 6
    object DBImage1: TDBImage
      Left = 1
      Height = 335
      Top = 1
      Width = 200
      Align = alClient
      DataField = 'Blob'
      DataSource = dm.srcDB
      PopupMenu = PopupMenu1
      Proportional = True
      Stretch = True
    end
  end
  object edtFilter: TEdit
    Left = 8
    Height = 23
    Top = 312
    Width = 128
    TabOrder = 7
  end
  object Label5: TLabel
    Left = 8
    Height = 15
    Top = 295
    Width = 29
    Caption = 'Filter:'
    ParentColor = False
  end
  object SpeedButton1: TSpeedButton
    Left = 136
    Height = 22
    Top = 312
    Width = 23
    AllowAllUp = True
    GroupIndex = 1
    OnClick = SpeedButton1Click
  end
  object Splitter1: TSplitter
    Left = 402
    Height = 337
    Top = 160
    Width = 5
    Align = alRight
    ResizeAnchor = akRight
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Height = 23
    Top = 224
    Width = 128
    DataField = 'Category'
    DataSource = dm.srcDB
    KeyField = 'FCATEGORIES'
    ListField = 'FCATEGORIES'
    ListFieldIndex = 0
    ListSource = dm.srcDBCat
    LookupCache = False
    TabOrder = 9
  end
  object MMenu: TMainMenu
    Left = 472
    Top = 384
    object MenuItem1: TMenuItem
      Caption = 'Files'
      object MenuItem2: TMenuItem
        Action = actOpen
      end
      object MenuItem3: TMenuItem
        Action = actCreate
      end
      object MenuItem4: TMenuItem
        Action = actClose
      end
    end
    object MenuItem6: TMenuItem
      Action = actEditcat
    end
  end
  object actList: TActionList
    Left = 504
    Top = 384
    object actOpen: TAction
      Category = 'Files'
      Caption = 'Open'
      OnExecute = actOpenExecute
    end
    object actCreate: TAction
      Category = 'Files'
      Caption = 'Create'
      OnExecute = actCreateExecute
    end
    object actClose: TAction
      Category = 'Files'
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
    object actLoadBLOB: TAction
      Category = 'Files'
      Caption = 'Load Blob file'
      OnExecute = actLoadBLOBExecute
    end
    object actPasteImage: TAction
      Category = 'Files'
      Caption = 'Image paste'
      OnExecute = actPasteImageExecute
    end
    object actRunFilter: TAction
      Category = 'Files'
      AutoCheck = True
      Caption = 'Apply DB Filter'
      OnExecute = actRunFilterExecute
    end
    object actEditcat: TAction
      Category = 'Files'
      Caption = 'Edit categories'
      OnExecute = actEditcatExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    Top = 384
    object MenuItem5: TMenuItem
      Action = actPasteImage
    end
  end
end
