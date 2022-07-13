object frmMain: TfrmMain
  Left = 258
  Height = 661
  Top = 242
  Width = 1096
  Caption = 'frmMain'
  ClientHeight = 661
  ClientWidth = 1096
  Color = clNone
  OnClose = FormClose
  OnShow = FormShow
  Position = poScreenCenter
  LCLVersion = '7.8'
  object pnlStatus: TPanel
    Left = 0
    Height = 29
    Top = 632
    Width = 1096
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnlStatus'
    Color = clNone
    ParentColor = False
    TabOrder = 0
  end
  object pnlCommand: TPanel
    Left = 0
    Height = 92
    Top = 540
    Width = 1096
    Align = alBottom
    Alignment = taLeftJustify
    Caption = 'pnlCommand'
    ClientHeight = 92
    ClientWidth = 1096
    TabOrder = 1
    object pnlCommandInput: TPanel
      Left = 1
      Height = 90
      Top = 1
      Width = 447
      Align = alLeft
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ClientHeight = 86
      ClientWidth = 443
      Font.CharSet = ANSI_CHARSET
      Font.Color = clRed
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      ParentFont = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Height = 15
        Top = 71
        Width = 443
        Align = alBottom
        BevelColor = clNone
        BevelOuter = bvNone
        Caption = 'Panel3'
        ClientHeight = 15
        ClientWidth = 443
        Font.CharSet = ANSI_CHARSET
        Font.Color = clRed
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Height = 15
          Top = 0
          Width = 43
          Align = alLeft
          Caption = 'Ready:>'
          Color = cl3DLight
          Font.CharSet = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI Semibold'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object edtCommand: TEdit
          Left = 43
          Height = 15
          Top = 0
          Width = 400
          Align = alClient
          AutoSize = False
          AutoSelect = False
          BorderStyle = bsNone
          CharCase = ecUppercase
          Color = cl3DLight
          Font.CharSet = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI Semibold'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          OnKeyDown = edtCommandKeyDown
          ParentFont = False
          TabOrder = 0
        end
      end
      object lstCommand: TJvHTListBox
        Left = 0
        Height = 71
        Top = 0
        Width = 443
        Align = alClient
        BorderStyle = bsNone
        Color = cl3DLight
        ColorHighlight = clInfoBk
        ColorHighlightText = clBlack
        ColorDisabledText = clBlack
        AutoSize = True
        ParentBiDiMode = False
        ExtendedSelect = False
        Font.CharSet = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Items.Strings = (
          ''
          ''
          ''
          ''
          ''
          ''
          ''
        )
        ParentFont = False
        ParentShowHint = False
        SuperSubScriptRatio = 1
        TabOrder = 1
        OnClick = lstCommandClick
      end
    end
    object BGRAVirtualScreen4: TBGRAVirtualScreen
      Left = 453
      Height = 90
      Top = 1
      Width = 642
      Align = alClient
      Alignment = taLeftJustify
      ClientHeight = 90
      ClientWidth = 642
      Color = clWhite
      ParentColor = False
      TabOrder = 1
      object CoolBar1: TCoolBar
        Left = -8
        Height = 90
        Top = -2
        Width = 642
        Align = alNone
        Bands = <        
          item
            Control = ToolBar1
            MinHeight = 22
            Width = 179
          end        
          item
            Control = ToolBar2
            MinHeight = 22
          end        
          item
            Control = ToolBar3
            MinHeight = 22
            Width = 179
          end>
        Themed = False
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
        end
        object ToolBar2: TToolBar
          AnchorSideLeft.Control = CoolBar1
          AnchorSideTop.Control = CoolBar1
          Left = 24
          Height = 24
          Top = 37
          Width = 151
          Align = alNone
          BorderSpacing.Left = 22
          BorderSpacing.Top = 35
          Caption = 'ToolBar2'
          TabOrder = 1
          object ToolButton4: TToolButton
            Left = 1
            Top = 2
            Caption = 'ToolButton4'
          end
        end
        object ToolBar3: TToolBar
          AnchorSideLeft.Control = CoolBar1
          AnchorSideTop.Control = CoolBar1
          Left = 24
          Height = 24
          Top = 69
          Width = 150
          Align = alNone
          BorderSpacing.Left = 22
          BorderSpacing.Top = 67
          Caption = 'ToolBar3'
          TabOrder = 2
          object ToolButton5: TToolButton
            Left = 1
            Top = 2
            Caption = 'ToolButton5'
          end
        end
      end
    end
    object Splitter2: TSplitter
      Left = 448
      Height = 90
      Top = 1
      Width = 5
    end
  end
  object Splitter1: TSplitter
    Cursor = crVSplit
    Left = 0
    Height = 5
    Top = 535
    Width = 1096
    Align = alBottom
    ResizeAnchor = akBottom
  end
  object BGRAVirtualScreen2: TBGRAVirtualScreen
    Left = 0
    Height = 26
    Top = 0
    Width = 1096
    Align = alTop
    Alignment = taCenter
    Caption = 'Application Title'
    Color = clNone
    ParentBidiMode = False
    ParentColor = False
    TabOrder = 3
  end
  object tbControls: TBGRAVirtualScreen
    Left = 0
    Height = 26
    Top = 26
    Width = 1096
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Tab control buttons'
    Color = clNone
    ParentColor = False
    TabOrder = 4
  end
  object pnlMainToolBar: TBCPanel
    Left = 0
    Height = 112
    Top = 52
    Width = 1096
    Align = alTop
    Background.Color = clBtnFace
    Background.Gradient1.StartColor = clWhite
    Background.Gradient1.EndColor = clBlack
    Background.Gradient1.GradientType = gtLinear
    Background.Gradient1.Point1XPercent = 0
    Background.Gradient1.Point1YPercent = 0
    Background.Gradient1.Point2XPercent = 0
    Background.Gradient1.Point2YPercent = 100
    Background.Gradient2.StartColor = clWhite
    Background.Gradient2.EndColor = clBlack
    Background.Gradient2.GradientType = gtLinear
    Background.Gradient2.Point1XPercent = 0
    Background.Gradient2.Point1YPercent = 0
    Background.Gradient2.Point2XPercent = 0
    Background.Gradient2.Point2YPercent = 100
    Background.Gradient1EndPercent = 35
    Background.Style = bbsColor
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 1
    Border.Color = clWhite
    Border.Style = bboNone
    Border.Width = 0
    BorderBCStyle = bpsBorder
    FontEx.Color = clDefault
    FontEx.FontQuality = fqSystemClearType
    FontEx.Shadow = False
    FontEx.ShadowRadius = 5
    FontEx.ShadowOffsetX = 5
    FontEx.ShadowOffsetY = 5
    FontEx.Style = []
    ParentBackground = False
    Rounding.RoundX = 1
    Rounding.RoundY = 1
    TabOrder = 5
    object SpkToolbar1: TSpkToolbar
      Left = 0
      Height = 112
      Top = 0
      Width = 840
      Color = clBtnFace
      Appearance.Tab.TabHeaderFont.Color = 9787178
      Appearance.Tab.BorderColor = 13816015
      Appearance.Tab.CornerRadius = 0
      Appearance.Tab.GradientFromColor = 15856113
      Appearance.Tab.GradientToColor = 15856113
      Appearance.Tab.GradientType = bkSolid
      Appearance.Tab.InactiveTabHeaderFontColor = 6908265
      Appearance.MenuButton.CaptionFont.Color = clWhite
      Appearance.MenuButton.IdleFrameColor = 13743257
      Appearance.MenuButton.IdleGradientFromColor = 13743257
      Appearance.MenuButton.IdleGradientToColor = 11822592
      Appearance.MenuButton.IdleGradientType = bkSolid
      Appearance.MenuButton.IdleCaptionColor = clWhite
      Appearance.MenuButton.HotTrackFrameColor = 14515456
      Appearance.MenuButton.HotTrackGradientFromColor = 14515456
      Appearance.MenuButton.HotTrackGradientToColor = 14515456
      Appearance.MenuButton.HotTrackGradientType = bkSolid
      Appearance.MenuButton.HotTrackCaptionColor = clWhite
      Appearance.MenuButton.HotTrackBrightnessChange = 40
      Appearance.MenuButton.ActiveFrameColor = 9852160
      Appearance.MenuButton.ActiveGradientFromColor = 9852160
      Appearance.MenuButton.ActiveGradientToColor = 9852160
      Appearance.MenuButton.ActiveGradientType = bkSolid
      Appearance.MenuButton.ActiveCaptionColor = clWhite
      Appearance.MenuButton.ShapeStyle = mbssRectangle
      Appearance.Pane.BorderDarkColor = 13816015
      Appearance.Pane.BorderLightColor = 16315117
      Appearance.Pane.CaptionBgColor = 15856113
      Appearance.Pane.CaptionFont.Color = 6908265
      Appearance.Pane.GradientFromColor = 15856113
      Appearance.Pane.GradientToColor = 15856113
      Appearance.Pane.GradientType = bkSolid
      Appearance.Pane.HotTrackBrightnessChange = 0
      Appearance.Pane.Style = psDividerFlat
      Appearance.Element.CaptionFont.Color = 4144959
      Appearance.Element.IdleFrameColor = 13487565
      Appearance.Element.IdleGradientFromColor = 14671839
      Appearance.Element.IdleGradientToColor = 14671839
      Appearance.Element.IdleGradientType = bkSolid
      Appearance.Element.IdleInnerLightColor = 15461355
      Appearance.Element.IdleInnerDarkColor = 13487565
      Appearance.Element.IdleCaptionColor = 6908265
      Appearance.Element.HotTrackFrameColor = 16371364
      Appearance.Element.HotTrackGradientFromColor = 16248808
      Appearance.Element.HotTrackGradientToColor = 16248808
      Appearance.Element.HotTrackGradientType = bkSolid
      Appearance.Element.HotTrackInnerLightColor = 16248808
      Appearance.Element.HotTrackInnerDarkColor = 16248808
      Appearance.Element.HotTrackCaptionColor = 4144959
      Appearance.Element.HotTrackBrightnessChange = 40
      Appearance.Element.ActiveFrameColor = 14983778
      Appearance.Element.ActiveGradientFromColor = 16244937
      Appearance.Element.ActiveGradientToColor = 16244937
      Appearance.Element.ActiveGradientType = bkSolid
      Appearance.Element.ActiveInnerLightColor = 16244937
      Appearance.Element.ActiveInnerDarkColor = 16244937
      Appearance.Element.ActiveCaptionColor = 2894892
      Appearance.Element.Style = esRectangle
      TabIndex = 0
      Images = dm.imgList
      LargeImages = dm.imgList
      MenuButtonCaption = 'Menu'
      MenuButtonDropdownMenu = dm.popSysMenu
      MenuButtonStyle = mbsCaptionDropdown
      ShowMenuButton = True
      Align = alNone
      Tabs = (
        'SpkTab1'
        'SpkTab2'
        'SpkTab3'
        'SpkTab4'
        'SpkTab5'
      )
      object SpkTab1: TSpkTab
        CustomAppearance.Tab.TabHeaderFont.Color = 9126421
        CustomAppearance.Tab.BorderColor = 14922381
        CustomAppearance.Tab.CornerRadius = 4
        CustomAppearance.Tab.GradientFromColor = 16115934
        CustomAppearance.Tab.GradientToColor = 15587527
        CustomAppearance.Tab.GradientType = bkConcave
        CustomAppearance.Tab.InactiveTabHeaderFontColor = 9126421
        CustomAppearance.MenuButton.CaptionFont.Color = clWhite
        CustomAppearance.MenuButton.IdleFrameColor = 10569759
        CustomAppearance.MenuButton.IdleGradientFromColor = 14649927
        CustomAppearance.MenuButton.IdleGradientToColor = 12017961
        CustomAppearance.MenuButton.IdleGradientType = bkConcave
        CustomAppearance.MenuButton.IdleCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackFrameColor = 10569759
        CustomAppearance.MenuButton.HotTrackGradientFromColor = 15179099
        CustomAppearance.MenuButton.HotTrackGradientToColor = 12478257
        CustomAppearance.MenuButton.HotTrackGradientType = bkConcave
        CustomAppearance.MenuButton.HotTrackCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackBrightnessChange = 40
        CustomAppearance.MenuButton.ActiveFrameColor = 11095324
        CustomAppearance.MenuButton.ActiveGradientFromColor = 14518846
        CustomAppearance.MenuButton.ActiveGradientToColor = 12411174
        CustomAppearance.MenuButton.ActiveGradientType = bkConcave
        CustomAppearance.MenuButton.ActiveCaptionColor = clWhite
        CustomAppearance.MenuButton.ShapeStyle = mbssRounded
        CustomAppearance.Pane.BorderDarkColor = 14335646
        CustomAppearance.Pane.BorderLightColor = 16315117
        CustomAppearance.Pane.CaptionBgColor = 15849922
        CustomAppearance.Pane.CaptionFont.Color = 9126421
        CustomAppearance.Pane.GradientFromColor = 16115934
        CustomAppearance.Pane.GradientToColor = 15587527
        CustomAppearance.Pane.GradientType = bkConcave
        CustomAppearance.Element.IdleFrameColor = 14727067
        CustomAppearance.Element.IdleGradientFromColor = 15653832
        CustomAppearance.Element.IdleGradientToColor = 15323324
        CustomAppearance.Element.IdleGradientType = bkConcave
        CustomAppearance.Element.IdleInnerLightColor = 15852501
        CustomAppearance.Element.IdleInnerDarkColor = 15520702
        CustomAppearance.Element.IdleCaptionColor = 11631958
        CustomAppearance.Element.HotTrackFrameColor = 10211293
        CustomAppearance.Element.HotTrackGradientFromColor = 14351615
        CustomAppearance.Element.HotTrackGradientToColor = 5101567
        CustomAppearance.Element.HotTrackGradientType = bkConcave
        CustomAppearance.Element.HotTrackInnerLightColor = 12972543
        CustomAppearance.Element.HotTrackInnerDarkColor = 8045272
        CustomAppearance.Element.HotTrackCaptionColor = 8864367
        CustomAppearance.Element.HotTrackBrightnessChange = 40
        CustomAppearance.Element.ActiveFrameColor = 5535371
        CustomAppearance.Element.ActiveGradientFromColor = 7126014
        CustomAppearance.Element.ActiveGradientToColor = 4035324
        CustomAppearance.Element.ActiveGradientType = bkConcave
        CustomAppearance.Element.ActiveInnerLightColor = 961020
        CustomAppearance.Element.ActiveInnerDarkColor = 961020
        CustomAppearance.Element.ActiveCaptionColor = 8405614
        CustomAppearance.Element.Style = esRounded
        Caption = 'Home'
        Panes = (
          'SpkPane1'
          'SpkPane2'
          'SpkPane3'
          'SpkPane4'
          'SpkPane5'
          'SpkPane6'
        )
        object SpkPane1: TSpkPane
          Caption = 'Draw'
          Items = (
            'SpkLargeButton1'
            'SpkLargeButton2'
            'SpkLargeButton4'
            'SpkLargeButton5'
            'SpkLargeButton6'
            'SpkLargeButton7'
          )
          object SpkLargeButton1: TSpkLargeButton
            Action = dm.actEntPoint
            Caption = 'Point'
            LargeImageIndex = 0
          end
          object SpkLargeButton2: TSpkLargeButton
            Action = dm.actEntLine
            Caption = 'Line'
            LargeImageIndex = 1
            ButtonKind = bkButtonDropdown
            DropdownMenu = dm.popLines
          end
          object SpkLargeButton4: TSpkLargeButton
            Action = dm.actEntCircle
            Caption = 'Circle'
            LargeImageIndex = 9
            ButtonKind = bkButtonDropdown
            DropdownMenu = dm.popCircle
          end
          object SpkLargeButton5: TSpkLargeButton
            Action = dm.actEntArc
            Caption = 'Arc'
            LargeImageIndex = 7
            ButtonKind = bkButtonDropdown
            DropdownMenu = dm.popArc
          end
          object SpkLargeButton6: TSpkLargeButton
            Action = dm.actEntRect
            Caption = 'Rectangle'
            LargeImageIndex = 12
          end
          object SpkLargeButton7: TSpkLargeButton
            Action = dm.actEntEllipse
            Caption = 'Ellipse'
            LargeImageIndex = 13
          end
        end
        object SpkPane2: TSpkPane
          Caption = 'Modify'
          Items = (
            'SpkLargeButton8'
            'SpkLargeButton9'
            'SpkSmallButton1'
            'SpkSmallButton2'
            'SpkSmallButton3'
          )
          object SpkLargeButton8: TSpkLargeButton
            Action = dm.actEntHatch
            Caption = 'Hatch'
            LargeImageIndex = 14
          end
          object SpkLargeButton9: TSpkLargeButton
            Caption = 'Edit'
            LargeImageIndex = 33
            ButtonKind = bkDropdown
            DropdownMenu = dm.popEdit
          end
          object SpkSmallButton1: TSpkSmallButton
            Action = dm.actCopyMove
            Caption = 'Copy move'
            TableBehaviour = tbBeginsRow
            ButtonKind = bkDropdown
            DropdownMenu = dm.popCopyModify
          end
          object SpkSmallButton2: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
          object SpkSmallButton3: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
        end
        object SpkPane3: TSpkPane
          Caption = 'Annotation'
          Items = (
            'SpkLargeButton10'
            'SpkSmallButton4'
            'SpkSmallButton5'
            'SpkSmallButton6'
          )
          object SpkLargeButton10: TSpkLargeButton
            Caption = 'Button'
          end
          object SpkSmallButton4: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
          object SpkSmallButton5: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
          object SpkSmallButton6: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
        end
        object SpkPane4: TSpkPane
          Caption = 'Format'
          Items = (
            'SpkLargeButton11'
            'SpkLargeButton12'
            'SpkSmallButton7'
            'SpkSmallButton8'
            'SpkSmallButton9'
            'SpkSmallButton10'
            'SpkSmallButton11'
            'SpkSmallButton12'
          )
          object SpkLargeButton11: TSpkLargeButton
            Caption = 'Button'
          end
          object SpkLargeButton12: TSpkLargeButton
            Caption = 'Button'
          end
          object SpkSmallButton7: TSpkSmallButton
            Caption = 'Button'
          end
          object SpkSmallButton8: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
          object SpkSmallButton9: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
          object SpkSmallButton10: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsColumn
          end
          object SpkSmallButton11: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
          object SpkSmallButton12: TSpkSmallButton
            Caption = 'Button'
            TableBehaviour = tbBeginsRow
          end
        end
        object SpkPane5: TSpkPane
          Caption = 'Layer'
          Items = (          )
        end
        object SpkPane6: TSpkPane
          Caption = 'Block'
          Items = (          )
        end
      end
      object SpkTab2: TSpkTab
        CustomAppearance.Tab.TabHeaderFont.Color = 9126421
        CustomAppearance.Tab.BorderColor = 14922381
        CustomAppearance.Tab.CornerRadius = 4
        CustomAppearance.Tab.GradientFromColor = 16115934
        CustomAppearance.Tab.GradientToColor = 15587527
        CustomAppearance.Tab.GradientType = bkConcave
        CustomAppearance.Tab.InactiveTabHeaderFontColor = 9126421
        CustomAppearance.MenuButton.CaptionFont.Color = clWhite
        CustomAppearance.MenuButton.IdleFrameColor = 10569759
        CustomAppearance.MenuButton.IdleGradientFromColor = 14649927
        CustomAppearance.MenuButton.IdleGradientToColor = 12017961
        CustomAppearance.MenuButton.IdleGradientType = bkConcave
        CustomAppearance.MenuButton.IdleCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackFrameColor = 10569759
        CustomAppearance.MenuButton.HotTrackGradientFromColor = 15179099
        CustomAppearance.MenuButton.HotTrackGradientToColor = 12478257
        CustomAppearance.MenuButton.HotTrackGradientType = bkConcave
        CustomAppearance.MenuButton.HotTrackCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackBrightnessChange = 40
        CustomAppearance.MenuButton.ActiveFrameColor = 11095324
        CustomAppearance.MenuButton.ActiveGradientFromColor = 14518846
        CustomAppearance.MenuButton.ActiveGradientToColor = 12411174
        CustomAppearance.MenuButton.ActiveGradientType = bkConcave
        CustomAppearance.MenuButton.ActiveCaptionColor = clWhite
        CustomAppearance.MenuButton.ShapeStyle = mbssRounded
        CustomAppearance.Pane.BorderDarkColor = 14335646
        CustomAppearance.Pane.BorderLightColor = 16315117
        CustomAppearance.Pane.CaptionBgColor = 15849922
        CustomAppearance.Pane.CaptionFont.Color = 9126421
        CustomAppearance.Pane.GradientFromColor = 16115934
        CustomAppearance.Pane.GradientToColor = 15587527
        CustomAppearance.Pane.GradientType = bkConcave
        CustomAppearance.Element.IdleFrameColor = 14727067
        CustomAppearance.Element.IdleGradientFromColor = 15653832
        CustomAppearance.Element.IdleGradientToColor = 15323324
        CustomAppearance.Element.IdleGradientType = bkConcave
        CustomAppearance.Element.IdleInnerLightColor = 15852501
        CustomAppearance.Element.IdleInnerDarkColor = 15520702
        CustomAppearance.Element.IdleCaptionColor = 11631958
        CustomAppearance.Element.HotTrackFrameColor = 10211293
        CustomAppearance.Element.HotTrackGradientFromColor = 14351615
        CustomAppearance.Element.HotTrackGradientToColor = 5101567
        CustomAppearance.Element.HotTrackGradientType = bkConcave
        CustomAppearance.Element.HotTrackInnerLightColor = 12972543
        CustomAppearance.Element.HotTrackInnerDarkColor = 8045272
        CustomAppearance.Element.HotTrackCaptionColor = 8864367
        CustomAppearance.Element.HotTrackBrightnessChange = 40
        CustomAppearance.Element.ActiveFrameColor = 5535371
        CustomAppearance.Element.ActiveGradientFromColor = 7126014
        CustomAppearance.Element.ActiveGradientToColor = 4035324
        CustomAppearance.Element.ActiveGradientType = bkConcave
        CustomAppearance.Element.ActiveInnerLightColor = 961020
        CustomAppearance.Element.ActiveInnerDarkColor = 961020
        CustomAppearance.Element.ActiveCaptionColor = 8405614
        CustomAppearance.Element.Style = esRounded
        Caption = 'View'
        Panes = (        )
      end
      object SpkTab3: TSpkTab
        CustomAppearance.Tab.TabHeaderFont.Color = 9126421
        CustomAppearance.Tab.BorderColor = 14922381
        CustomAppearance.Tab.CornerRadius = 4
        CustomAppearance.Tab.GradientFromColor = 16115934
        CustomAppearance.Tab.GradientToColor = 15587527
        CustomAppearance.Tab.GradientType = bkConcave
        CustomAppearance.Tab.InactiveTabHeaderFontColor = 9126421
        CustomAppearance.MenuButton.CaptionFont.Color = clWhite
        CustomAppearance.MenuButton.IdleFrameColor = 10569759
        CustomAppearance.MenuButton.IdleGradientFromColor = 14649927
        CustomAppearance.MenuButton.IdleGradientToColor = 12017961
        CustomAppearance.MenuButton.IdleGradientType = bkConcave
        CustomAppearance.MenuButton.IdleCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackFrameColor = 10569759
        CustomAppearance.MenuButton.HotTrackGradientFromColor = 15179099
        CustomAppearance.MenuButton.HotTrackGradientToColor = 12478257
        CustomAppearance.MenuButton.HotTrackGradientType = bkConcave
        CustomAppearance.MenuButton.HotTrackCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackBrightnessChange = 40
        CustomAppearance.MenuButton.ActiveFrameColor = 11095324
        CustomAppearance.MenuButton.ActiveGradientFromColor = 14518846
        CustomAppearance.MenuButton.ActiveGradientToColor = 12411174
        CustomAppearance.MenuButton.ActiveGradientType = bkConcave
        CustomAppearance.MenuButton.ActiveCaptionColor = clWhite
        CustomAppearance.MenuButton.ShapeStyle = mbssRounded
        CustomAppearance.Pane.BorderDarkColor = 14335646
        CustomAppearance.Pane.BorderLightColor = 16315117
        CustomAppearance.Pane.CaptionBgColor = 15849922
        CustomAppearance.Pane.CaptionFont.Color = 9126421
        CustomAppearance.Pane.GradientFromColor = 16115934
        CustomAppearance.Pane.GradientToColor = 15587527
        CustomAppearance.Pane.GradientType = bkConcave
        CustomAppearance.Element.IdleFrameColor = 14727067
        CustomAppearance.Element.IdleGradientFromColor = 15653832
        CustomAppearance.Element.IdleGradientToColor = 15323324
        CustomAppearance.Element.IdleGradientType = bkConcave
        CustomAppearance.Element.IdleInnerLightColor = 15852501
        CustomAppearance.Element.IdleInnerDarkColor = 15520702
        CustomAppearance.Element.IdleCaptionColor = 11631958
        CustomAppearance.Element.HotTrackFrameColor = 10211293
        CustomAppearance.Element.HotTrackGradientFromColor = 14351615
        CustomAppearance.Element.HotTrackGradientToColor = 5101567
        CustomAppearance.Element.HotTrackGradientType = bkConcave
        CustomAppearance.Element.HotTrackInnerLightColor = 12972543
        CustomAppearance.Element.HotTrackInnerDarkColor = 8045272
        CustomAppearance.Element.HotTrackCaptionColor = 8864367
        CustomAppearance.Element.HotTrackBrightnessChange = 40
        CustomAppearance.Element.ActiveFrameColor = 5535371
        CustomAppearance.Element.ActiveGradientFromColor = 7126014
        CustomAppearance.Element.ActiveGradientToColor = 4035324
        CustomAppearance.Element.ActiveGradientType = bkConcave
        CustomAppearance.Element.ActiveInnerLightColor = 961020
        CustomAppearance.Element.ActiveInnerDarkColor = 961020
        CustomAppearance.Element.ActiveCaptionColor = 8405614
        CustomAppearance.Element.Style = esRounded
        Caption = 'Tools'
        Panes = (        )
      end
      object SpkTab4: TSpkTab
        CustomAppearance.Tab.TabHeaderFont.Color = 9126421
        CustomAppearance.Tab.BorderColor = 14922381
        CustomAppearance.Tab.CornerRadius = 4
        CustomAppearance.Tab.GradientFromColor = 16115934
        CustomAppearance.Tab.GradientToColor = 15587527
        CustomAppearance.Tab.GradientType = bkConcave
        CustomAppearance.Tab.InactiveTabHeaderFontColor = 9126421
        CustomAppearance.MenuButton.CaptionFont.Color = clWhite
        CustomAppearance.MenuButton.IdleFrameColor = 10569759
        CustomAppearance.MenuButton.IdleGradientFromColor = 14649927
        CustomAppearance.MenuButton.IdleGradientToColor = 12017961
        CustomAppearance.MenuButton.IdleGradientType = bkConcave
        CustomAppearance.MenuButton.IdleCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackFrameColor = 10569759
        CustomAppearance.MenuButton.HotTrackGradientFromColor = 15179099
        CustomAppearance.MenuButton.HotTrackGradientToColor = 12478257
        CustomAppearance.MenuButton.HotTrackGradientType = bkConcave
        CustomAppearance.MenuButton.HotTrackCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackBrightnessChange = 40
        CustomAppearance.MenuButton.ActiveFrameColor = 11095324
        CustomAppearance.MenuButton.ActiveGradientFromColor = 14518846
        CustomAppearance.MenuButton.ActiveGradientToColor = 12411174
        CustomAppearance.MenuButton.ActiveGradientType = bkConcave
        CustomAppearance.MenuButton.ActiveCaptionColor = clWhite
        CustomAppearance.MenuButton.ShapeStyle = mbssRounded
        CustomAppearance.Pane.BorderDarkColor = 14335646
        CustomAppearance.Pane.BorderLightColor = 16315117
        CustomAppearance.Pane.CaptionBgColor = 15849922
        CustomAppearance.Pane.CaptionFont.Color = 9126421
        CustomAppearance.Pane.GradientFromColor = 16115934
        CustomAppearance.Pane.GradientToColor = 15587527
        CustomAppearance.Pane.GradientType = bkConcave
        CustomAppearance.Element.IdleFrameColor = 14727067
        CustomAppearance.Element.IdleGradientFromColor = 15653832
        CustomAppearance.Element.IdleGradientToColor = 15323324
        CustomAppearance.Element.IdleGradientType = bkConcave
        CustomAppearance.Element.IdleInnerLightColor = 15852501
        CustomAppearance.Element.IdleInnerDarkColor = 15520702
        CustomAppearance.Element.IdleCaptionColor = 11631958
        CustomAppearance.Element.HotTrackFrameColor = 10211293
        CustomAppearance.Element.HotTrackGradientFromColor = 14351615
        CustomAppearance.Element.HotTrackGradientToColor = 5101567
        CustomAppearance.Element.HotTrackGradientType = bkConcave
        CustomAppearance.Element.HotTrackInnerLightColor = 12972543
        CustomAppearance.Element.HotTrackInnerDarkColor = 8045272
        CustomAppearance.Element.HotTrackCaptionColor = 8864367
        CustomAppearance.Element.HotTrackBrightnessChange = 40
        CustomAppearance.Element.ActiveFrameColor = 5535371
        CustomAppearance.Element.ActiveGradientFromColor = 7126014
        CustomAppearance.Element.ActiveGradientToColor = 4035324
        CustomAppearance.Element.ActiveGradientType = bkConcave
        CustomAppearance.Element.ActiveInnerLightColor = 961020
        CustomAppearance.Element.ActiveInnerDarkColor = 961020
        CustomAppearance.Element.ActiveCaptionColor = 8405614
        CustomAppearance.Element.Style = esRounded
        Caption = 'Help'
        Panes = (        )
      end
      object SpkTab5: TSpkTab
        CustomAppearance.Tab.TabHeaderFont.Color = 9126421
        CustomAppearance.Tab.BorderColor = 14922381
        CustomAppearance.Tab.CornerRadius = 4
        CustomAppearance.Tab.GradientFromColor = 16115934
        CustomAppearance.Tab.GradientToColor = 15587527
        CustomAppearance.Tab.GradientType = bkConcave
        CustomAppearance.Tab.InactiveTabHeaderFontColor = 9126421
        CustomAppearance.MenuButton.CaptionFont.Color = clWhite
        CustomAppearance.MenuButton.IdleFrameColor = 10569759
        CustomAppearance.MenuButton.IdleGradientFromColor = 14649927
        CustomAppearance.MenuButton.IdleGradientToColor = 12017961
        CustomAppearance.MenuButton.IdleGradientType = bkConcave
        CustomAppearance.MenuButton.IdleCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackFrameColor = 10569759
        CustomAppearance.MenuButton.HotTrackGradientFromColor = 15179099
        CustomAppearance.MenuButton.HotTrackGradientToColor = 12478257
        CustomAppearance.MenuButton.HotTrackGradientType = bkConcave
        CustomAppearance.MenuButton.HotTrackCaptionColor = clWhite
        CustomAppearance.MenuButton.HotTrackBrightnessChange = 40
        CustomAppearance.MenuButton.ActiveFrameColor = 11095324
        CustomAppearance.MenuButton.ActiveGradientFromColor = 14518846
        CustomAppearance.MenuButton.ActiveGradientToColor = 12411174
        CustomAppearance.MenuButton.ActiveGradientType = bkConcave
        CustomAppearance.MenuButton.ActiveCaptionColor = clWhite
        CustomAppearance.MenuButton.ShapeStyle = mbssRounded
        CustomAppearance.Pane.BorderDarkColor = 14335646
        CustomAppearance.Pane.BorderLightColor = 16315117
        CustomAppearance.Pane.CaptionBgColor = 15849922
        CustomAppearance.Pane.CaptionFont.Color = 9126421
        CustomAppearance.Pane.GradientFromColor = 16115934
        CustomAppearance.Pane.GradientToColor = 15587527
        CustomAppearance.Pane.GradientType = bkConcave
        CustomAppearance.Element.IdleFrameColor = 14727067
        CustomAppearance.Element.IdleGradientFromColor = 15653832
        CustomAppearance.Element.IdleGradientToColor = 15323324
        CustomAppearance.Element.IdleGradientType = bkConcave
        CustomAppearance.Element.IdleInnerLightColor = 15852501
        CustomAppearance.Element.IdleInnerDarkColor = 15520702
        CustomAppearance.Element.IdleCaptionColor = 11631958
        CustomAppearance.Element.HotTrackFrameColor = 10211293
        CustomAppearance.Element.HotTrackGradientFromColor = 14351615
        CustomAppearance.Element.HotTrackGradientToColor = 5101567
        CustomAppearance.Element.HotTrackGradientType = bkConcave
        CustomAppearance.Element.HotTrackInnerLightColor = 12972543
        CustomAppearance.Element.HotTrackInnerDarkColor = 8045272
        CustomAppearance.Element.HotTrackCaptionColor = 8864367
        CustomAppearance.Element.HotTrackBrightnessChange = 40
        CustomAppearance.Element.ActiveFrameColor = 5535371
        CustomAppearance.Element.ActiveGradientFromColor = 7126014
        CustomAppearance.Element.ActiveGradientToColor = 4035324
        CustomAppearance.Element.ActiveGradientType = bkConcave
        CustomAppearance.Element.ActiveInnerLightColor = 961020
        CustomAppearance.Element.ActiveInnerDarkColor = 961020
        CustomAppearance.Element.ActiveCaptionColor = 8405614
        CustomAppearance.Element.Style = esRounded
        Caption = 'Tab'
        Panes = (        )
      end
    end
    object btnUpDown: TPanel
      Left = 288
      Height = 22
      Top = 0
      Width = 24
      BevelOuter = bvNone
      Caption = 'á'
      Color = clActiveCaption
      Font.CharSet = SYMBOL_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Wingdings'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnUpDownClick
    end
  end
  object BGRAVirtualScreen3: TBGRAVirtualScreen
    Left = 0
    Height = 354
    Top = 181
    Width = 1096
    Align = alClient
    Alignment = taLeftJustify
    Caption = 'BGRAVirtualScreen3'
    ClientHeight = 354
    ClientWidth = 1096
    Color = clNone
    ParentColor = False
    TabOrder = 6
    object pnlCadWnd: TBGRAVirtualScreen
      Left = 15
      Height = 339
      Top = 15
      Width = 1081
      Align = alClient
      Alignment = taLeftJustify
      AutoSize = True
      Caption = 'pnlCadWnd'
      Color = clMenu
      ParentColor = False
      TabOrder = 0
    end
    object pnlCursorV: TPanel
      Left = 0
      Height = 339
      Top = 15
      Width = 15
      Align = alLeft
      BevelOuter = bvNone
      ClientHeight = 339
      ClientWidth = 15
      Color = clNone
      ParentColor = False
      TabOrder = 1
      object cursorV: TBGRAVirtualScreen
        Left = 0
        Height = 40
        Top = 112
        Width = 15
        Alignment = taLeftJustify
        ClientHeight = 40
        ClientWidth = 15
        Color = clNone
        ParentColor = False
        TabOrder = 0
        object ColorButton2: TColorButton
          Left = 0
          Height = 4
          Top = 36
          Width = 15
          Align = alBottom
          BorderWidth = 0
          ButtonColorSize = 16
          ButtonColor = clTeal
          Color = clTeal
          Flat = True
        end
        object lblCursorV: TLabel
          Left = 0
          Height = 25
          Top = 0
          Width = 15
          Align = alTop
          Alignment = taCenter
          Caption = '(0,0)'
          Font.Orientation = 900
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object pnlCursorH: TPanel
      Left = 0
      Height = 15
      Top = 0
      Width = 1096
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 15
      ClientWidth = 1096
      Color = clNone
      ParentColor = False
      TabOrder = 2
      object SpeedButton1: TSpeedButton
        Left = 0
        Height = 15
        Top = 0
        Width = 15
        Align = alLeft
        Caption = 'X'
      end
      object cursorH: TBGRAVirtualScreen
        Left = 479
        Height = 15
        Top = 0
        Width = 41
        Alignment = taLeftJustify
        ClientHeight = 15
        ClientWidth = 41
        Color = clNone
        ParentColor = False
        TabOrder = 0
        object ColorButton1: TColorButton
          Left = 0
          Height = 15
          Top = 0
          Width = 4
          Align = alLeft
          BorderWidth = 0
          ButtonColorSize = 16
          ButtonColor = clTeal
          Color = clTeal
          Flat = True
        end
        object lblCursorH: TLabel
          Left = 18
          Height = 15
          Top = 0
          Width = 23
          Align = alRight
          Alignment = taCenter
          Caption = '(0,0)'
          ParentColor = False
        end
      end
    end
  end
  object scrollMainToolbar: TScrollBar
    Left = 0
    Height = 17
    Top = 164
    Width = 1096
    Align = alTop
    PageSize = 0
    TabOrder = 7
    OnChange = scrollMainToolbarChange
  end
end
