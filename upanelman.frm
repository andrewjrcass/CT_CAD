object frmPanels: TfrmPanels
  Left = 358
  Height = 488
  Top = 256
  Width = 897
  Caption = 'frmPanels'
  ClientHeight = 488
  ClientWidth = 897
  LCLVersion = '7.8'
  object pnlLayersMan: TcyNavPanel
    Left = 26
    Height = 58
    Top = 232
    Width = 656
    Wallpaper.Transparent = False
    Alignment = taLeftJustify
    BorderStyle = bsSingle
    Caption = 'Layers'
    DockSite = True
    TabOrder = 0
    TabStop = True
    Visible = False
    Bevels = <    
      item
        HighlightColor = clBtnShadow
        Style = bcNone
      end>
    CaptionOrientation = coVertical
    RunTimeDesign.AllowMove = True
    RunTimeDesign.OutsideParentRect = False
    Shadow.Color = clNone
    Degrade.AngleDegree = 0
    Degrade.Balance = 0
    Degrade.FromColor = clBtnFace
    Degrade.SpeedPercent = 0
    Degrade.ToColor = clBtnFace
    ActiveControlFrame = <    
      item
      end>
    InactiveControlsFrame = <>
    object SpeedButton1: TSpeedButton
      Left = 635
      Height = 12
      Top = 0
      Width = 10
      Caption = 'X'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      OnClick = SpeedButton1Click
      ParentFont = False
    end
    object pnlComboLayers: TPanel
      Left = 72
      Height = 22
      Top = 22
      Width = 186
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 0
    end
    object Label1: TLabel
      Left = 72
      Height = 15
      Top = 6
      Width = 33
      Caption = 'Layers'
      Color = clDefault
      ParentColor = False
    end
    object Label2: TLabel
      Left = 264
      Height = 15
      Top = 6
      Width = 34
      Caption = 'Colors'
      Color = clDefault
      ParentColor = False
    end
    object pnlComboColors: TPanel
      Left = 264
      Height = 23
      Top = 22
      Width = 94
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 1
    end
    object Label3: TLabel
      Left = 549
      Height = 15
      Top = 6
      Width = 54
      Caption = 'Line Types'
      Color = clDefault
      ParentColor = False
    end
    object pnlComboLineTypes: TPanel
      Left = 400
      Height = 22
      Top = 22
      Width = 114
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 2
    end
    object pnlComboLineWidth: TPanel
      Left = 549
      Height = 22
      Top = 22
      Width = 96
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 3
    end
    object Label4: TLabel
      Left = 400
      Height = 15
      Top = 6
      Width = 57
      Caption = 'Line Width'
      Color = clDefault
      ParentColor = False
    end
    object SpeedButton16: TSpeedButton
      Left = 48
      Height = 22
      Top = 22
      Width = 23
      Action = dm.actDlgLayerOrder
      Images = dm.imgList
      ImageIndex = 86
      ShowCaption = False
    end
    object SpeedButton17: TSpeedButton
      Left = 24
      Height = 22
      Top = 22
      Width = 23
      Action = dm.actDlgLayers
      Images = dm.imgList
      ImageIndex = 85
      ShowCaption = False
    end
    object SpeedButton18: TSpeedButton
      Left = 376
      Height = 22
      Top = 22
      Width = 23
      Action = dm.actDlgLineTypes
      Images = dm.imgList
      ImageIndex = 81
      ShowCaption = False
    end
    object SpeedButton19: TSpeedButton
      Left = 525
      Height = 22
      Top = 22
      Width = 23
      Action = dm.actDlgLineWeight
      Images = dm.imgList
      ImageIndex = 89
      ShowCaption = False
    end
  end
  object pnlViewActions: TcyNavPanel
    Left = 488
    Height = 112
    Top = 296
    Width = 200
    Wallpaper.Transparent = False
    Alignment = taLeftJustify
    BorderStyle = bsSingle
    Caption = 'View'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    Visible = False
    Bevels = <    
      item
        HighlightColor = clNone
        ShadowColor = clNone
        Style = bcNone
        Width = 0
      end>
    CaptionOrientation = coVertical
    RunTimeDesign.AllowMove = True
    RunTimeDesign.OutsideParentRect = False
    Degrade.FromColor = clBtnFace
    Degrade.SpeedPercent = 100
    Degrade.ToColor = clBtnFace
    ActiveControlFrame = <    
      item
        DrawLeft = False
        DrawTop = False
        DrawRight = False
        DrawBottom = False
        HighlightColor = clNavy
        ShadowColor = clNavy
        Style = bcNone
        Width = 4
      end    
      item
        DrawLeft = False
        DrawTop = False
        DrawRight = False
        DrawBottom = False
        HighlightColor = clNavy
        ShadowColor = clNavy
        Style = bcNone
        Width = 4
      end>
    InactiveControlsFrame = <>
    object SpeedButton6: TSpeedButton
      Left = 180
      Height = 12
      Top = 0
      Width = 11
      Caption = 'X'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      OnClick = SpeedButton6Click
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 24
      Height = 22
      Top = 24
      Width = 23
      Action = dm.actViewZoomWindow
      Images = dm.imgList
      ImageIndex = 95
      OnClick = SpeedButton2Click
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton3: TSpeedButton
      Left = 47
      Height = 22
      Top = 24
      Width = 23
      Action = dm.actViewZoomExtents
      Images = dm.imgList
      ImageIndex = 94
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton4: TSpeedButton
      Left = 72
      Height = 22
      Top = 24
      Width = 23
      Action = dm.actViewZoomPrev
      Images = dm.imgList
      ImageIndex = 97
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton5: TSpeedButton
      Left = 96
      Height = 22
      Top = 24
      Width = 23
      Action = dm.actViewZoomIn
      Images = dm.imgList
      ImageIndex = 98
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton7: TSpeedButton
      Left = 120
      Height = 22
      Top = 24
      Width = 23
      Action = dm.actViewZoomOut
      Images = dm.imgList
      ImageIndex = 99
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton8: TSpeedButton
      Left = 144
      Height = 22
      Top = 24
      Width = 23
      Action = dm.actViewZoomRealTime
      Images = dm.imgList
      ImageIndex = 100
      ShowCaption = False
    end
    object SpeedButton9: TSpeedButton
      Left = 168
      Height = 22
      Top = 24
      Width = 23
      Action = dm.actViewZoomSelEnt
      Images = dm.imgList
      ImageIndex = 101
      ShowCaption = False
    end
    object SpeedButton10: TSpeedButton
      Left = 24
      Height = 22
      Top = 64
      Width = 23
      Action = dm.actViewPanRT
      Images = dm.imgList
      ImageIndex = 96
      ShowCaption = False
    end
    object SpeedButton11: TSpeedButton
      Left = 48
      Height = 22
      Top = 64
      Width = 23
      Action = dm.actViewPanPoint
      Images = dm.imgList
      ImageIndex = 102
      ShowCaption = False
    end
    object SpeedButton12: TSpeedButton
      Left = 128
      Height = 22
      Top = 64
      Width = 23
      Action = dm.actViewPanRight
      Images = dm.imgList
      ImageIndex = 105
      ShowCaption = False
    end
    object SpeedButton13: TSpeedButton
      Left = 80
      Height = 22
      Top = 64
      Width = 23
      Action = dm.actViewPanLeft
      Images = dm.imgList
      ImageIndex = 104
      ShowCaption = False
    end
    object SpeedButton14: TSpeedButton
      Left = 104
      Height = 22
      Top = 80
      Width = 23
      Action = dm.actViewPanDown
      Images = dm.imgList
      ImageIndex = 103
      ShowCaption = False
    end
    object SpeedButton15: TSpeedButton
      Left = 104
      Height = 22
      Top = 56
      Width = 23
      Action = dm.actViewPanUp
      Images = dm.imgList
      ImageIndex = 106
      ShowCaption = False
    end
    object Label5: TLabel
      Left = 27
      Height = 15
      Top = 8
      Width = 32
      Caption = 'Zoom'
      Color = clDefault
      ParentColor = False
    end
    object Label6: TLabel
      Left = 27
      Height = 15
      Top = 48
      Width = 20
      Caption = 'Pan'
      Color = clDefault
      ParentColor = False
    end
  end
  object Panel1: TPanel
    Left = 112
    Height = 30
    Top = 48
    Width = 148
    ClientHeight = 30
    ClientWidth = 148
    TabOrder = 2
    object SpeedButton20: TSpeedButton
      Left = 0
      Height = 22
      Top = 4
      Width = 23
      Action = dm.actSysNew
      Images = dm.imgList
      ImageIndex = 28
    end
    object SpeedButton21: TSpeedButton
      Left = 24
      Height = 22
      Top = 4
      Width = 23
      Action = dm.actSysOpen
      Images = dm.imgList
      ImageIndex = 24
    end
    object SpeedButton22: TSpeedButton
      Left = 49
      Height = 22
      Top = 4
      Width = 23
      Action = dm.actSysRecent
      Images = dm.imgList
      ImageIndex = 123
    end
    object SpeedButton23: TSpeedButton
      Left = 72
      Height = 22
      Top = 4
      Width = 23
      Action = dm.actSysSave
      Images = dm.imgList
      ImageIndex = 25
    end
    object SpeedButton24: TSpeedButton
      Left = 96
      Height = 22
      Top = 4
      Width = 23
      Action = dm.actSysPrint
      Images = dm.imgList
      ImageIndex = 27
    end
    object SpeedButton25: TSpeedButton
      Left = 120
      Height = 22
      Top = 4
      Width = 23
      Action = dm.actSysPrintPreview
      Images = dm.imgList
      ImageIndex = 118
    end
  end
  object pnlViewPan: TPanel
    Left = 362
    Height = 25
    Top = 56
    Width = 135
    AutoSize = True
    BorderSpacing.Left = 362
    ClientHeight = 25
    ClientWidth = 135
    DragKind = dkDock
    DragMode = dmAutomatic
    TabOrder = 3
    object SpeedButton27: TSpeedButton
      Left = 23
      Height = 22
      Top = 2
      Width = 23
      Action = dm.actViewPanRT
      Images = dm.imgList
      ImageIndex = 96
      ShowCaption = False
    end
    object SpeedButton28: TSpeedButton
      Left = 1
      Height = 22
      Top = 2
      Width = 23
      Action = dm.actViewPanPoint
      Images = dm.imgList
      ImageIndex = 102
      ShowCaption = False
    end
    object SpeedButton29: TSpeedButton
      Left = 89
      Height = 22
      Top = 2
      Width = 23
      Action = dm.actViewPanLeft
      Images = dm.imgList
      ImageIndex = 104
      ShowCaption = False
    end
    object SpeedButton30: TSpeedButton
      Left = 45
      Height = 22
      Top = 2
      Width = 23
      Action = dm.actViewPanUp
      Images = dm.imgList
      ImageIndex = 106
      ShowCaption = False
    end
    object SpeedButton31: TSpeedButton
      Left = 111
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actViewPanRight
      Images = dm.imgList
      ImageIndex = 105
      ShowCaption = False
    end
    object SpeedButton32: TSpeedButton
      Left = 67
      Height = 22
      Top = 2
      Width = 23
      Action = dm.actViewPanDown
      Images = dm.imgList
      ImageIndex = 103
      ShowCaption = False
    end
  end
  object pnlViewZoom: TPanel
    Left = 182
    Height = 24
    Top = 0
    Width = 157
    Alignment = taLeftJustify
    AutoSize = True
    BorderSpacing.Left = 182
    ClientHeight = 24
    ClientWidth = 157
    DragKind = dkDock
    DragMode = dmAutomatic
    ParentFont = False
    TabOrder = 4
    Wordwrap = True
    object SpeedButton26: TSpeedButton
      Left = 111
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actViewZoomRealTime
      Images = dm.imgList
      ImageIndex = 100
      ShowCaption = False
    end
    object SpeedButton33: TSpeedButton
      Left = 133
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actViewZoomSelEnt
      Images = dm.imgList
      ImageIndex = 101
      ShowCaption = False
    end
    object SpeedButton34: TSpeedButton
      Left = 89
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actViewZoomOut
      Images = dm.imgList
      ImageIndex = 99
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton35: TSpeedButton
      Left = 67
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actViewZoomIn
      Images = dm.imgList
      ImageIndex = 98
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton36: TSpeedButton
      Left = 45
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actViewZoomPrev
      Images = dm.imgList
      ImageIndex = 97
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton37: TSpeedButton
      Left = 23
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actViewZoomExtents
      Images = dm.imgList
      ImageIndex = 94
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton38: TSpeedButton
      Left = 1
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actViewZoomWindow
      Images = dm.imgList
      ImageIndex = 95
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
  end
  object Panel2: TPanel
    Left = 22
    Height = 47
    Top = 0
    Width = 136
    AutoSize = True
    BorderSpacing.Left = 22
    ClientHeight = 47
    ClientWidth = 136
    TabOrder = 5
    object SpeedButton39: TSpeedButton
      Left = 1
      Height = 22
      Top = 24
      Width = 23
      Action = dm.actSysNew
      Images = dm.imgList
      ImageIndex = 28
    end
    object SpeedButton40: TSpeedButton
      Left = 24
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actSysOpen
      Images = dm.imgList
      ImageIndex = 24
    end
    object SpeedButton41: TSpeedButton
      Left = 46
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actSysRecent
      Images = dm.imgList
      ImageIndex = 123
    end
    object SpeedButton42: TSpeedButton
      Left = 68
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actSysSave
      Images = dm.imgList
      ImageIndex = 25
    end
    object SpeedButton43: TSpeedButton
      Left = 90
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actSysPrint
      Images = dm.imgList
      ImageIndex = 27
    end
    object SpeedButton44: TSpeedButton
      Left = 112
      Height = 22
      Top = 1
      Width = 23
      Action = dm.actSysPrintPreview
      Images = dm.imgList
      ImageIndex = 118
    end
  end
  object pnlCalc: TcyNavPanel
    Left = 696
    Height = 257
    Top = 224
    Width = 192
    Wallpaper.Transparent = False
    BorderWidth = 7
    BorderStyle = bsSingle
    UseDockManager = False
    PopupMenu = dm.popCalcOptions
    TabOrder = 6
    TabStop = True
    Visible = False
    Bevels = <    
      item
        DrawLeft = False
        DrawTop = False
        DrawRight = False
        DrawBottom = False
        HighlightColor = clBtnShadow
        Style = bcNone
      end>
    RunTimeDesign.AllowMove = True
    RunTimeDesign.AllowResizeRight = True
    RunTimeDesign.AllowResizeBottom = True
    RunTimeDesign.OutsideParentRect = False
    Degrade.FromColor = 15000804
    Degrade.SpeedPercent = 100
    Degrade.ToColor = 15000804
    ActiveControlFrame = <    
      item
        DrawLeft = False
        DrawTop = False
        DrawRight = False
        DrawBottom = False
        HighlightColor = clNone
        ShadowColor = clNone
        Style = bcNone
        Width = 4
      end    
      item
        DrawLeft = False
        DrawTop = False
        DrawRight = False
        DrawBottom = False
        HighlightColor = clNone
        ShadowColor = clNone
        Style = bcNone
        Width = 4
      end>
    InactiveControlsFrame = <>
    Options = [noNavigateWithArrowKeys]
    object Panel3: TPanel
      Left = 7
      Height = 13
      Top = 7
      Width = 174
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'Calculator'
      ClientHeight = 13
      ClientWidth = 174
      PopupMenu = dm.popCalcOptions
      TabOrder = 0
      object SpeedButton45: TSpeedButton
        Left = 164
        Height = 13
        Top = 0
        Width = 10
        Align = alRight
        Caption = 'X'
        Flat = True
        Font.CharSet = ANSI_CHARSET
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        OnClick = SpeedButton45Click
        ParentFont = False
      end
      object chkTape: TCheckBox
        Left = 88
        Height = 19
        Top = -3
        Width = 73
        Caption = 'Show tape'
        OnClick = chkTapeClick
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 7
      Height = 226
      Top = 20
      Width = 174
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 226
      ClientWidth = 174
      TabOrder = 1
      object calculator: TOvcCalculator
        Left = 0
        Height = 226
        Top = 0
        Width = 174
        Align = alClient
        Ctl3D = False
        Font.CharSet = ANSI_CHARSET
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        TapeFont.Height = -13
        TapeFont.Name = 'Courier New'
        Colors.ColorScheme = cscalcCustom
        Colors.DisabledMemoryButtons = clGray
        Colors.Display = clWindow
        Colors.DisplayTextColor = clDefault
        Colors.EditButtons = clMaroon
        Colors.FunctionButtons = clNavy
        Colors.MemoryButtons = clRed
        Colors.NumberButtons = clBlue
        Colors.OperatorButtons = clRed
        Decimals = 2
        TapeHeight = 46
        Options = [coShowItemCount, coShowMemoryButtons, coShowSeparatePercent]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlSnaps: TcyNavPanel
    Left = 120
    Height = 72
    Top = 384
    Width = 176
    Wallpaper.Transparent = False
    Alignment = taLeftJustify
    BorderStyle = bsSingle
    Caption = 'Quick Snaps'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = True
    Bevels = <    
      item
        Style = bcNone
      end>
    CaptionOrientation = coVertical
    RunTimeDesign.AllowMove = True
    RunTimeDesign.OutsideParentRect = False
    Degrade.FromColor = clBtnFace
    Degrade.SpeedPercent = 100
    Degrade.ToColor = clBtnFace
    ActiveControlFrame = <    
      item
        DrawLeft = False
        DrawTop = False
        DrawRight = False
        DrawBottom = False
        HighlightColor = clNavy
        ShadowColor = clNavy
        Style = bcNone
        Width = 4
      end    
      item
        DrawLeft = False
        DrawTop = False
        DrawRight = False
        DrawBottom = False
        HighlightColor = clNavy
        ShadowColor = clNavy
        Style = bcTransparent
        Width = 4
      end>
    InactiveControlsFrame = <>
    object SpeedButton46: TSpeedButton
      Left = 156
      Height = 12
      Top = 0
      Width = 11
      Caption = 'X'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      OnClick = SpeedButton46Click
      ParentFont = False
    end
    object SpeedButton47: TSpeedButton
      Left = 23
      Height = 22
      Top = 16
      Width = 23
      Action = dm.actSnapEndP
      Images = dm.imgList
      ImageIndex = 152
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton48: TSpeedButton
      Left = 144
      Height = 22
      Top = 39
      Width = 23
      Action = dm.actDlgSnap
      Images = dm.imgList
      ImageIndex = 108
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton49: TSpeedButton
      Left = 47
      Height = 22
      Top = 16
      Width = 23
      Action = dm.actSnapMidPoint
      Images = dm.imgList
      ImageIndex = 153
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton50: TSpeedButton
      Left = 71
      Height = 22
      Top = 16
      Width = 23
      Action = dm.actSnapCenter
      Images = dm.imgList
      ImageIndex = 154
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton52: TSpeedButton
      Left = 95
      Height = 22
      Top = 16
      Width = 23
      Action = dm.actSnapNode
      Images = dm.imgList
      ImageIndex = 155
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton53: TSpeedButton
      Left = 119
      Height = 22
      Top = 16
      Width = 23
      Action = dm.actSnapIntersection
      Images = dm.imgList
      ImageIndex = 156
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton54: TSpeedButton
      Left = 144
      Height = 22
      Top = 16
      Width = 23
      Action = dm.actSnapPerpend
      Images = dm.imgList
      ImageIndex = 157
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton55: TSpeedButton
      Left = 23
      Height = 22
      Top = 40
      Width = 23
      Action = dm.actSnapTangent
      Images = dm.imgList
      ImageIndex = 158
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton56: TSpeedButton
      Left = 47
      Height = 22
      Top = 39
      Width = 23
      Action = dm.actSnapNearest
      Images = dm.imgList
      ImageIndex = 159
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton57: TSpeedButton
      Left = 96
      Height = 22
      Top = 39
      Width = 23
      Action = dm.actSnapNone
      Images = dm.imgList
      ImageIndex = 161
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton61: TSpeedButton
      Left = 120
      Height = 22
      Top = 39
      Width = 23
      Action = dm.actToolsSnapPolarToogle
      Images = dm.imgList
      ImageIndex = 163
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
    object SpeedButton62: TSpeedButton
      Left = 72
      Height = 22
      Top = 39
      Width = 23
      Action = dm.actToolsSnapAll
      Images = dm.imgList
      ImageIndex = 162
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
  end
  object SpeedButton51: TSpeedButton
    Left = 160
    Height = 22
    Top = 32
    Width = 23
    ShowCaption = False
  end
  object cyNavPanel2: TcyNavPanel
    Left = 152
    Height = 50
    Top = 136
    Width = 170
    Wallpaper.Transparent = False
    Caption = 'cyNavPanel2'
    TabOrder = 8
    TabStop = True
    Bevels = <    
      item
      end>
    Degrade.FromColor = clWhite
    Degrade.SpeedPercent = 100
    Degrade.ToColor = clBtnFace
    ActiveControlFrame = <    
      item
        HighlightColor = clNavy
        ShadowColor = clNavy
        Width = 4
      end    
      item
        HighlightColor = clNavy
        ShadowColor = clNavy
        Style = bcTransparent
        Width = 4
      end>
    InactiveControlsFrame = <>
  end
  object pnltest1: TcyNavPanel
    Left = 26
    Height = 76
    Top = 304
    Width = 248
    Wallpaper.Transparent = False
    Alignment = taLeftJustify
    BorderWidth = 7
    BorderStyle = bsSingle
    Caption = 'pnltest1'
    TabOrder = 9
    TabStop = True
    Bevels = <    
      item
        Style = bcGradientToNext
        Width = 10
      end>
    RunTimeDesign.AllowMove = True
    RunTimeDesign.AllowResizeTop = True
    RunTimeDesign.AllowResizeLeft = True
    RunTimeDesign.AllowResizeRight = True
    RunTimeDesign.AllowResizeBottom = True
    RunTimeDesign.OutsideParentRect = False
    RunTimeDesign.ResizeBorderSize = 20
    Degrade.FromColor = clBtnFace
    Degrade.SpeedPercent = 100
    Degrade.ToColor = clBtnFace
    ActiveControlFrame = <    
      item
        HighlightColor = clNavy
        ShadowColor = clNavy
        Style = bcGradientToNext
        Width = 10
      end    
      item
        HighlightColor = clNavy
        ShadowColor = clNavy
        Style = bcGradientToNext
        Width = 10
      end>
    InactiveControlsFrame = <>
    object CoolBar1: TCoolBar
      Left = 17
      Height = 38
      Top = 17
      Width = 210
      Align = alClient
      AutoSize = True
      Bands = <      
        item
          Control = ToolBar1
          Width = 179
        end>
      object ToolBar1: TToolBar
        AnchorSideLeft.Control = CoolBar1
        AnchorSideTop.Control = CoolBar1
        Left = 24
        Height = 24
        Top = 5
        Width = 150
        Align = alNone
        BorderSpacing.Left = 22
        BorderSpacing.Top = 3
        Caption = 'ToolBar1'
        TabOrder = 0
        object ToolButton1: TToolButton
          Left = 1
          Top = 2
          Caption = 'ToolButton1'
        end
        object ToolButton2: TToolButton
          Left = 24
          Top = 2
          Caption = 'ToolButton2'
        end
        object ToolButton3: TToolButton
          Left = 47
          Top = 2
          Caption = 'ToolButton3'
        end
        object ToolButton4: TToolButton
          Left = 70
          Top = 2
          Caption = 'ToolButton4'
        end
        object ToolButton5: TToolButton
          Left = 93
          Top = 2
          Caption = 'ToolButton5'
        end
        object ToolButton6: TToolButton
          Left = 116
          Top = 2
          Caption = 'ToolButton6'
        end
      end
    end
  end
  object pnltest: TPanel
    Left = 288
    Height = 50
    Top = 320
    Width = 170
    Caption = 'pnltest'
    TabOrder = 10
    OnMouseDown = pnltestMouseDown
    OnMouseMove = pnltestMouseMove
    OnMouseUp = pnltestMouseUp
  end
end
