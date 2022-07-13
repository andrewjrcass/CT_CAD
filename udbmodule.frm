object dm: Tdm
  OldCreateOrder = False
  Height = 386
  HorizontalOffset = 86
  VerticalOffset = 85
  Width = 485
  object srcDBCat: TDataSource
    DataSet = dbCat
    Left = 184
    Top = 176
  end
  object dbCat: TDbf
    FilePath = 'C:\Users\andrew\OneDrive\Área de Trabalho\VCGeoprops\Bin\DBase\'
    IndexDefs = <    
      item
        IndexFile = 'BYCATEGORY'
        SortField = 'FCATEGORIES'
        Options = [ixPrimary, ixExpression]
      end>
    TableName = 'Categories.db'
    TableLevel = 4
    FilterOptions = []
    Left = 232
    Top = 176
  end
  object db: TDbf
    IndexDefs = <>
    TableLevel = 4
    FilterOptions = []
    Left = 232
    Top = 248
  end
  object srcDB: TDataSource
    DataSet = db
    Left = 184
    Top = 248
  end
  object dlgOpen: TOpenDialog
    Title = 'Open database file'
    DefaultExt = '.db'
    Filter = 'Data base|*.dbf|Dbase|*.db|Untyped files|*.*'
    Left = 56
    Top = 104
  end
  object dlgDir: TSelectDirectoryDialog
    Left = 112
    Top = 104
  end
  object dlgOpenBlob: TOpenDialog
    Left = 184
    Top = 104
  end
end
