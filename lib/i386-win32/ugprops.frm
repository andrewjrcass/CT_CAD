object frmMain: TfrmMain
  Left = 72
  Height = 661
  Top = 99
  Width = 1349
  Caption = 'frmMain'
  ClientHeight = 661
  ClientWidth = 1349
  Color = clNone
  OnClose = FormClose
  OnShow = FormShow
  Position = poScreenCenter
  LCLVersion = '7.9'
  object pnlStatus: TPanel
    Left = 0
    Height = 29
    Top = 632
    Width = 1349
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
    Width = 1349
    Align = alBottom
    Alignment = taLeftJustify
    Caption = 'pnlCommand'
    ClientHeight = 92
    ClientWidth = 1349
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
        Height = 18
        Top = 68
        Width = 443
        Align = alBottom
        BevelColor = clNone
        BevelOuter = bvNone
        Caption = 'Panel3'
        ClientHeight = 18
        ClientWidth = 443
        Font.CharSet = ANSI_CHARSET
        Font.Color = clRed
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Height = 18
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
          Height = 18
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
      object lstCommand: TListBox
        Left = 0
        Height = 68
        Hint = 'Command line history'
        Top = 0
        Width = 443
        Align = alClient
        BorderStyle = bsNone
        ClickOnSelChange = False
        Color = cl3DLight
        ExtendedSelect = False
        Font.CharSet = ANSI_CHARSET
        Font.Color = clBlack
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
          ''
          ''
          ''
          ''
        )
        ItemHeight = 17
        ItemIndex = 10
        OnDrawItem = lstCommandDrawItem
        Options = []
        ParentShowHint = False
        ParentFont = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 1
        TopIndex = 7
      end
    end
    object Splitter2: TSplitter
      Left = 448
      Height = 90
      Top = 1
      Width = 5
    end
    object Panel1: TPanel
      Left = 453
      Height = 90
      Top = 1
      Width = 895
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 90
      ClientWidth = 895
      TabOrder = 2
      object Image1: TImage
        Left = 408
        Height = 90
        Top = -2
        Width = 169
      end
      object ToolBar1: TToolBar
        Left = 0
        Height = 26
        Top = 0
        Width = 895
        Caption = 'ToolBar1'
        Images = dm.imgList
        TabOrder = 0
        object ToolButton40: TToolButton
          Left = 1
          Top = 2
          Caption = 'ToolButton40'
        end
      end
      object BitBtn1: TBitBtn
        Left = 256
        Height = 30
        Top = 16
        Width = 75
        Action = dm.actMPReadFPreview
        TabOrder = 1
      end
    end
  end
  object Splitter1: TSplitter
    Cursor = crVSplit
    Left = 0
    Height = 5
    Top = 535
    Width = 1349
    Align = alBottom
    ResizeAnchor = akBottom
  end
  object pnlMainToolBar: TBCPanel
    Left = 0
    Height = 112
    Top = 0
    Width = 1349
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
    TabOrder = 3
    object pnlToolBar: TBCPanel
      Left = 1
      Height = 112
      Top = 0
      Width = 1348
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
      Border.Style = bboNone
      Caption = 'pnlToolBar'
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
      TabOrder = 0
      object SpkToolbar1: TSpkToolbar
        Left = 0
        Height = 112
        Top = 0
        Width = 1348
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
        Appearance.Element.IdleFrameColor = 15856113
        Appearance.Element.IdleGradientFromColor = 15856113
        Appearance.Element.IdleGradientToColor = 14671839
        Appearance.Element.IdleGradientType = bkSolid
        Appearance.Element.IdleInnerLightColor = 15461355
        Appearance.Element.IdleInnerDarkColor = 15856113
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
        Align = alClient
        ParentShowHint = False
        ShowHint = True
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
            'SpkPane7'
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
              'SpkSmallButton39'
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
              ImageIndex = 17
              TableBehaviour = tbBeginsRow
              ButtonKind = bkDropdown
              DropdownMenu = dm.popCopyModify
            end
            object SpkSmallButton39: TSpkSmallButton
              Caption = 'Selection'
              ButtonKind = bkDropdown
              DropdownMenu = dm.popSelect
            end
            object SpkSmallButton2: TSpkSmallButton
              Caption = 'Align'
              ImageIndex = 56
              TableBehaviour = tbBeginsRow
              ButtonKind = bkDropdown
              DropdownMenu = dm.popAlign
            end
            object SpkSmallButton3: TSpkSmallButton
              Caption = 'Order'
              ImageIndex = 61
              ButtonKind = bkDropdown
              DropdownMenu = dm.popOrder
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
              Action = dm.actTextSingle
              Caption = 'Text'
              LargeImageIndex = 66
              ButtonKind = bkButtonDropdown
              DropdownMenu = dm.popText
            end
            object SpkSmallButton4: TSpkSmallButton
              Action = dm.actDimAligned
              Caption = 'Aligned dimencion'
              ImageIndex = 70
              TableBehaviour = tbBeginsRow
              ButtonKind = bkButtonDropdown
              DropdownMenu = dm.popDim
            end
            object SpkSmallButton5: TSpkSmallButton
              Action = dm.actDimLeader
              Caption = 'Leader'
              ImageIndex = 75
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton6: TSpkSmallButton
              Action = dm.actDlgAttributes
              Caption = 'Attributes Manager'
              ImageIndex = 151
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
              Action = dm.actDlgColor
              Caption = 'Colors'
              LargeImageIndex = 77
            end
            object SpkLargeButton12: TSpkLargeButton
              Action = dm.actEntImage
              Caption = 'Insert  image'
              LargeImageIndex = 79
              ButtonKind = bkDropdown
              DropdownMenu = dm.popImages
            end
            object SpkSmallButton7: TSpkSmallButton
              Action = dm.actDlgPointStyles
              Caption = 'Point styles'
              ImageIndex = 80
            end
            object SpkSmallButton8: TSpkSmallButton
              Action = dm.actDlgLineTypes
              Caption = 'Line types'
              ImageIndex = 81
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton9: TSpkSmallButton
              Action = dm.actDlgDimStyles
              Caption = 'Dimention Styles'
              ImageIndex = 70
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton10: TSpkSmallButton
              Action = dm.actDlgTextStyles
              Caption = 'Text styles'
              ImageIndex = 83
              TableBehaviour = tbBeginsColumn
            end
            object SpkSmallButton11: TSpkSmallButton
              Action = dm.actDlgMultilineStyles
              Caption = 'Multiline styles'
              ImageIndex = 84
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton12: TSpkSmallButton
              Action = dm.actDlgLineWeight
              Caption = 'Line weights'
              ImageIndex = 89
              TableBehaviour = tbBeginsRow
            end
          end
          object SpkPane5: TSpkPane
            Caption = 'Layers / Layouts'
            ShowMoreOptionsButtonStyle = mobsArrow
            ShowMoreOptionsButton = True
            OnMoreOptionsButtonClick = SpkPane5MoreOptionsButtonClick
            Items = (
              'SpkLargeButton3'
              'SpkLargeButton14'
            )
            object SpkLargeButton3: TSpkLargeButton
              Action = dm.actDlgLayers
              Caption = 'Layers'
              LargeImageIndex = 85
              ButtonKind = bkButtonDropdown
              DropdownMenu = dm.popLayers
            end
            object SpkLargeButton14: TSpkLargeButton
              Action = dm.actDlgPages
              Caption = 'Pages'
              LargeImageIndex = 87
              ButtonKind = bkButtonDropdown
              DropdownMenu = dm.popPages
            end
          end
          object SpkPane6: TSpkPane
            Caption = 'Block'
            Items = (
              'SpkLargeButton15'
              'SpkSmallButton13'
              'SpkSmallButton26'
              'SpkSmallButton27'
            )
            object SpkLargeButton15: TSpkLargeButton
              Action = dm.actBlocksDlg
              Caption = 'Blocks'
              LargeImageIndex = 139
              ButtonKind = bkButtonDropdown
              DropdownMenu = dm.popBlocks
            end
            object SpkSmallButton13: TSpkSmallButton
              Action = dm.actBlockEntInsert
              Caption = 'Insert Block'
              ImageIndex = 137
            end
            object SpkSmallButton26: TSpkSmallButton
              Action = dm.actBlockCreate
              Caption = 'Create block'
              ImageIndex = 141
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton27: TSpkSmallButton
              Action = dm.actBlockXRef
              Caption = 'Block X Ref'
              ImageIndex = 140
              TableBehaviour = tbBeginsRow
            end
          end
          object SpkPane7: TSpkPane
            Caption = 'Pane'
            Items = (            )
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
          OnClick = SpkTab2Click
          Panes = (
            'SpkPane8'
            'SpkPane9'
            'SpkPane10'
            'SpkPane11'
            'SpkPane12'
          )
          object SpkPane8: TSpkPane
            Caption = 'Visibility'
            Items = (
              'SpkLargeButton13'
              'SpkSmallButton14'
              'SpkSmallButton15'
              'SpkSmallButton16'
            )
            object SpkLargeButton13: TSpkLargeButton
              Action = dm.actMPHideShowEntProperties
              Caption = 'Properties'
              LargeImageIndex = 90
            end
            object SpkSmallButton14: TSpkSmallButton
              Action = dm.actMPHideShowRullers
              Caption = 'Rulers'
              ImageIndex = 92
              Checked = True
            end
            object SpkSmallButton15: TSpkSmallButton
              Action = dm.actMPHideShowMagnifier
              Caption = 'Magnifier'
              ImageIndex = 91
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton16: TSpkSmallButton
              Action = dm.actMPHideShowAerialVw
              Caption = 'Navigator'
              ImageIndex = 93
              TableBehaviour = tbBeginsRow
            end
          end
          object SpkPane9: TSpkPane
            Caption = 'Zoom/Pan'
            ShowMoreOptionsButtonStyle = mobsArrow
            ShowMoreOptionsButton = True
            OnMoreOptionsButtonClick = SpkPane9MoreOptionsButtonClick
            Items = (
              'SpkSmallButton17'
              'SpkSmallButton18'
              'SpkSmallButton19'
            )
            object SpkSmallButton17: TSpkSmallButton
              Action = dm.actViewZoomExtents
              Caption = 'Zoom extents'
              ImageIndex = 94
            end
            object SpkSmallButton18: TSpkSmallButton
              Action = dm.actViewZoomWindow
              Caption = 'Zoom window'
              ImageIndex = 95
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton19: TSpkSmallButton
              Action = dm.actViewPanRT
              Caption = 'Pan real time'
              ImageIndex = 96
              TableBehaviour = tbBeginsRow
            end
          end
          object SpkPane10: TSpkPane
            Caption = 'Drawing Sets'
            Items = (
              'SpkSmallButton20'
              'SpkSmallButton21'
              'SpkSmallButton22'
              'SpkSmallButton23'
              'SpkSmallButton24'
              'SpkSmallButton25'
            )
            object SpkSmallButton20: TSpkSmallButton
              Action = dm.actDlgGrid
              Caption = 'Grid options'
              ImageIndex = 107
            end
            object SpkSmallButton21: TSpkSmallButton
              Action = dm.actDlgSnap
              Caption = 'Snap options'
              ImageIndex = 108
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton22: TSpkSmallButton
              Action = dm.actDlgPolarTrack
              Caption = 'Polar track'
              ImageIndex = 109
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton23: TSpkSmallButton
              Action = dm.actDlgOption
              Caption = 'Options'
              ImageIndex = 34
              TableBehaviour = tbBeginsColumn
            end
            object SpkSmallButton24: TSpkSmallButton
              Action = dm.actDlgDraftAids
              Caption = 'Drafting aids'
              ImageIndex = 110
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton25: TSpkSmallButton
              Action = dm.actDlgDrwInfo
              Caption = 'Drawing info'
              ImageIndex = 111
              TableBehaviour = tbBeginsRow
            end
          end
          object SpkPane11: TSpkPane
            Caption = 'Drafting Tools'
            ShowMoreOptionsButtonStyle = mobsArrow
            ShowMoreOptionsButton = True
            OnMoreOptionsButtonClick = SpkPane11MoreOptionsButtonClick
            Items = (
              'SpkSmallButton33'
              'SpkSmallButton34'
              'SpkSmallButton36'
              'SpkSmallButton35'
              'SpkSmallButton38'
              'SpkSmallButton37'
            )
            object SpkSmallButton33: TSpkSmallButton
              Action = dm.actToolsShowGrid
              Caption = 'Grid (f7)'
              ImageIndex = 107
              TableBehaviour = tbBeginsRow
              Checked = True
            end
            object SpkSmallButton34: TSpkSmallButton
              Action = dm.actToolsSnapToGrid
              Caption = 'Snap to grid (F9)'
              ImageIndex = 148
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton36: TSpkSmallButton
              Action = dm.actToolsObjSnapToogle
              Caption = 'Toggle snap (F3)'
              ImageIndex = 149
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton35: TSpkSmallButton
              Action = dm.actToolsSnapAll
              Caption = 'All modes on until turned off'
              ImageIndex = 162
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton38: TSpkSmallButton
              Caption = 'Quick Snaps'
              TableBehaviour = tbBeginsRow
              ButtonKind = bkDropdown
              DropdownMenu = dm.popSnaps
            end
            object SpkSmallButton37: TSpkSmallButton
              Action = dm.actToolsSnapPolarToogle
              Caption = 'Polar snap toggle (F8)'
              ImageIndex = 163
              TableBehaviour = tbBeginsRow
            end
          end
          object SpkPane12: TSpkPane
            Caption = '3D Tools'
            Items = (
              'SpkLargeButton19'
            )
            object SpkLargeButton19: TSpkLargeButton
              Action = dm.actView3DVPoint
              Caption = '3D point'
              LargeImageIndex = 164
              ButtonKind = bkButtonDropdown
              DropdownMenu = dm.pop3D
            end
          end
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
          Panes = (
            'SpkPane13'
            'SpkPane17'
            'SpkPane14'
            'SpkPane15'
            'SpkPane16'
          )
          object SpkPane13: TSpkPane
            Caption = 'Measure'
            Items = (
              'SpkLargeButton16'
              'SpkLargeButton17'
              'SpkSmallButton28'
              'SpkSmallButton29'
              'SpkSmallButton30'
            )
            object SpkLargeButton16: TSpkLargeButton
              Action = dm.actToolsMeasure
              Caption = 'Distance'
              LargeImageIndex = 142
            end
            object SpkLargeButton17: TSpkLargeButton
              Action = dm.actToolsMeasureArea
              Caption = 'Area'
              LargeImageIndex = 143
            end
            object SpkSmallButton28: TSpkSmallButton
              Action = dm.actToolsMeasurePoly
              Caption = 'Measure polyline'
              ImageIndex = 144
            end
            object SpkSmallButton29: TSpkSmallButton
              Action = dm.actToolsAreaInnerPoint
              Caption = 'Area by IP'
              ImageIndex = 145
              TableBehaviour = tbBeginsRow
            end
            object SpkSmallButton30: TSpkSmallButton
              Action = dm.actToolsMeasureCalibrate
              Caption = 'Calibrate Measure'
              ImageIndex = 129
              TableBehaviour = tbBeginsRow
            end
          end
          object SpkPane17: TSpkPane
            Caption = 'Selection modes'
            Items = (            )
          end
          object SpkPane14: TSpkPane
            Caption = 'Miscellaneous'
            Items = (
              'SpkSmallButton31'
              'SpkSmallButton32'
            )
            object SpkSmallButton31: TSpkSmallButton
              Action = dm.actMPHideShowCalc
              Caption = 'Calculator'
              ImageIndex = 146
            end
            object SpkSmallButton32: TSpkSmallButton
              Action = dm.actToolsRasterize
              Caption = 'Drawing rasterize'
              ImageIndex = 79
              TableBehaviour = tbBeginsRow
            end
          end
          object SpkPane15: TSpkPane
            Caption = 'Plugins'
            Items = (
              'SpkLargeButton18'
            )
            object SpkLargeButton18: TSpkLargeButton
              Action = dm.actDlgPlugins
              Caption = 'Plugins'
              LargeImageIndex = 147
            end
          end
          object SpkPane16: TSpkPane
            Caption = '3D party plugins'
            Items = (            )
          end
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
          Panes = (          )
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
          Panes = (          )
        end
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
    Height = 383
    Top = 152
    Width = 1349
    Align = alClient
    Alignment = taLeftJustify
    ClientHeight = 383
    ClientWidth = 1349
    Color = clNone
    ParentColor = False
    TabOrder = 4
    object BGRAVirtualScreen1: TBGRAVirtualScreen
      Left = 221
      Height = 383
      Top = 0
      Width = 1128
      Align = alClient
      Alignment = taLeftJustify
      Caption = 'BGRAVirtualScreen1'
      ClientHeight = 383
      ClientWidth = 1128
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      object pnlCadWnd: TBGRAVirtualScreen
        Left = 14
        Height = 369
        Top = 14
        Width = 1114
        Align = alClient
        Alignment = taLeftJustify
        AutoSize = True
        Color = clMenu
        ParentColor = False
        TabOrder = 0
      end
      object pnlCursorH: TPanel
        Left = 0
        Height = 14
        Top = 0
        Width = 1128
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 14
        ClientWidth = 1128
        Color = clNone
        ParentColor = False
        TabOrder = 1
        object spdViewBorderButton: TPanel
          Left = 0
          Height = 14
          Top = 0
          Width = 14
          Align = alLeft
          Color = clActiveCaption
          ParentColor = False
          TabOrder = 0
          OnClick = spdViewBorderButtonClick
        end
        object cursorH: TBGRAVirtualScreen
          Left = 479
          Height = 14
          Top = 0
          Width = 52
          Alignment = taLeftJustify
          ClientHeight = 14
          ClientWidth = 52
          Color = clNone
          ParentColor = False
          TabOrder = 1
          object lblCursorH: TLabel
            Left = 32
            Height = 14
            Top = 0
            Width = 20
            Align = alRight
            Alignment = taRightJustify
            Caption = '(0,0)'
            Color = clDefault
            Font.CharSet = ANSI_CHARSET
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Pitch = fpVariable
            Font.Quality = fqDraft
            ParentColor = False
            ParentFont = False
          end
          object ColorButton1: TColorButton
            Left = 0
            Height = 14
            Top = 0
            Width = 4
            Align = alLeft
            BorderWidth = 0
            ButtonColorSize = 16
            ButtonColor = clTeal
            Color = clTeal
            Flat = True
          end
        end
      end
      object pnlCursorV: TPanel
        Left = 0
        Height = 369
        Top = 14
        Width = 14
        Align = alLeft
        BevelOuter = bvNone
        ClientHeight = 369
        ClientWidth = 14
        Color = clNone
        ParentColor = False
        TabOrder = 2
        object cursorV: TBGRAVirtualScreen
          Left = 0
          Height = 52
          Top = 104
          Width = 13
          Alignment = taLeftJustify
          ClientHeight = 52
          ClientWidth = 13
          Color = clNone
          ParentColor = False
          TabOrder = 0
          object ColorButton2: TColorButton
            Left = 0
            Height = 4
            Top = 48
            Width = 13
            Align = alBottom
            BorderWidth = 0
            ButtonColorSize = 16
            ButtonColor = clTeal
            Color = clTeal
            Flat = True
          end
          object lblCursorV: TLabel
            Left = 0
            Height = 20
            Top = 0
            Width = 13
            Align = alTop
            Alignment = taCenter
            Caption = '(0,0)'
            Color = clDefault
            Font.CharSet = ANSI_CHARSET
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Orientation = 900
            Font.Pitch = fpVariable
            Font.Quality = fqDraft
            ParentColor = False
            ParentFont = False
          end
        end
      end
    end
    object pnlproperties: TBGRAVirtualScreen
      Left = 0
      Height = 383
      Top = 0
      Width = 216
      Align = alLeft
      Alignment = taLeftJustify
      ClientHeight = 383
      ClientWidth = 216
      Color = clWhite
      ParentColor = False
      TabOrder = 1
      Visible = False
      OnResize = pnlpropertiesResize
      object Label2: TLabel
        Left = 0
        Height = 15
        Top = 0
        Width = 216
        Align = alTop
        Caption = 'Properties'
        Color = clDefault
        ParentColor = False
      end
    end
    object spltProp: TSplitter
      Left = 216
      Height = 383
      Top = 0
      Width = 5
      Visible = False
    end
  end
  object scrollMainToolbar: TScrollBar
    Left = 0
    Height = 17
    Top = 112
    Width = 1349
    Align = alTop
    PageSize = 0
    TabOrder = 5
    OnChange = scrollMainToolbarChange
  end
  object tbTop: TToolBar
    Left = 0
    Height = 23
    Top = 129
    Width = 1349
    AutoSize = True
    ButtonHeight = 23
    ButtonWidth = 23
    Caption = 'tbTop'
    Color = clBtnFace
    EdgeBorders = []
    EdgeInner = esNone
    EdgeOuter = esNone
    Images = dm.imgList
    ImagesWidth = 16
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    object ToolButton1: TToolButton
      Left = 1
      Top = 0
      Action = dm.actSysNew
    end
    object ToolButton2: TToolButton
      Left = 24
      Top = 0
      Action = dm.actSysOpen
    end
    object ToolButton3: TToolButton
      Left = 47
      Top = 0
      Action = dm.actSysRecent
    end
    object ToolButton4: TToolButton
      Left = 70
      Top = 0
      Action = dm.actSysSave
    end
    object ToolButton5: TToolButton
      Left = 93
      Top = 0
      Action = dm.actSysPrint
    end
    object ToolButton6: TToolButton
      Left = 116
      Top = 0
      Action = dm.actSysPrintPreview
    end
    object ToolButton7: TToolButton
      Left = 139
      Height = 23
      Top = 0
      Caption = 'ToolButton7'
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 293
      Top = 0
      Action = dm.actViewZoomWindow
    end
    object ToolButton9: TToolButton
      Left = 270
      Top = 0
      Action = dm.actViewZoomExtents
    end
    object ToolButton10: TToolButton
      Left = 316
      Top = 0
      Action = dm.actViewZoomPrev
    end
    object ToolButton11: TToolButton
      Left = 339
      Top = 0
      Action = dm.actViewZoomRealTime
    end
    object ToolButton12: TToolButton
      Left = 362
      Top = 0
      Action = dm.actViewPanRT
    end
    object ToolButton13: TToolButton
      Left = 385
      Top = 0
      Action = dm.actMPHideShowMagnifier
      Style = tbsCheck
    end
    object ToolButton14: TToolButton
      Left = 262
      Height = 23
      Top = 0
      Caption = 'ToolButton14'
      Style = tbsSeparator
    end
    object ToolButton15: TToolButton
      Left = 147
      Top = 0
      Action = dm.actEditCBCut
    end
    object ToolButton16: TToolButton
      Left = 170
      Top = 0
      Action = dm.actEditCBCopy
    end
    object ToolButton17: TToolButton
      Left = 193
      Top = 0
      Action = dm.actEditCBPaste
    end
    object ToolButton18: TToolButton
      Left = 216
      Top = 0
      Action = dm.actEditUndo
    end
    object ToolButton19: TToolButton
      Left = 239
      Top = 0
      Action = dm.actEditRedo
    end
    object ToolButton20: TToolButton
      Left = 408
      Height = 23
      Top = 0
      Caption = 'ToolButton20'
      Style = tbsSeparator
    end
    object ToolButton21: TToolButton
      Left = 634
      Top = 0
      Action = dm.actDlgLayers
    end
    object ToolButton22: TToolButton
      Left = 657
      Top = 0
      Action = dm.actDlgLayerOrder
    end
    object ToolButton23: TToolButton
      Left = 680
      Top = 0
      Action = dm.actDlgColor
    end
    object ToolButton24: TToolButton
      Left = 703
      Top = 0
      Action = dm.actDlgImageManager
    end
    object ToolButton25: TToolButton
      Left = 726
      Height = 23
      Top = 0
      Caption = 'ToolButton25'
      Style = tbsSeparator
    end
    object ToolButton26: TToolButton
      Left = 857
      Top = 0
      Action = dm.actDimLinear
      DropdownMenu = dm.popDim
      Style = tbsDropDown
    end
    object ToolButton27: TToolButton
      Left = 892
      Top = 0
      Action = dm.actDimAligned
    end
    object ToolButton28: TToolButton
      Left = 915
      Top = 0
      Action = dm.actDimLeader
    end
    object ToolButton29: TToolButton
      Left = 757
      Top = 0
      Action = dm.actDlgDimStyles
    end
    object ToolButton30: TToolButton
      Left = 849
      Height = 23
      Top = 0
      Caption = 'ToolButton30'
      Style = tbsSeparator
    end
    object ToolButton31: TToolButton
      Left = 734
      Top = 0
      Action = dm.actDlgLineTypes
    end
    object ToolButton32: TToolButton
      Left = 780
      Top = 0
      Action = dm.actDlgLineWeight
    end
    object ToolButton33: TToolButton
      Left = 803
      Top = 0
      Action = dm.actDlgPointStyles
    end
    object ToolButton34: TToolButton
      Left = 826
      Top = 0
      Action = dm.actDlgTextStyles
    end
    object ToolButton35: TToolButton
      Left = 416
      Top = 0
      Caption = 'ToolButton35'
      DropdownMenu = dm.popEdit
      ImageIndex = 33
      Style = tbsDropDown
    end
    object ToolButton36: TToolButton
      Left = 626
      Height = 23
      Top = 0
      Caption = 'ToolButton36'
      Style = tbsSeparator
    end
    object ToolButton37: TToolButton
      Left = 451
      Top = 0
      Action = dm.actEntLine
      DropdownMenu = dm.popLines
      Style = tbsDropDown
    end
    object ToolButton38: TToolButton
      Left = 486
      Top = 0
      Action = dm.actEntCircle
      DropdownMenu = dm.popCircle
      Style = tbsDropDown
    end
    object ToolButton39: TToolButton
      Left = 521
      Top = 0
      Action = dm.actEntArc
      DropdownMenu = dm.popArc
      PopupMenu = dm.popArc
      Style = tbsDropDown
    end
    object ToolButton41: TToolButton
      Left = 556
      Top = 0
      Action = dm.actTextSingle
      DropdownMenu = dm.popText
      PopupMenu = dm.popText
      Style = tbsDropDown
    end
    object ToolButton42: TToolButton
      Left = 938
      Top = 0
      Action = dm.actPagesSelect
      DropdownMenu = dm.popPages
      Style = tbsDropDown
    end
    object ToolButton43: TToolButton
      Left = 973
      Height = 23
      Top = 0
      Caption = 'ToolButton43'
      Style = tbsSeparator
    end
    object ToolButton44: TToolButton
      Left = 981
      Top = 0
      Action = dm.actBlockEntInsert
      DropdownMenu = dm.popBlocks
      ShowCaption = False
      Style = tbsDropDown
    end
    object ToolButton45: TToolButton
      Left = 1016
      Top = 0
      Action = dm.actBlockCreate
    end
    object ToolButton46: TToolButton
      Left = 1039
      Top = 0
      Action = dm.actBlocksDlg
    end
    object ToolButton47: TToolButton
      Left = 1062
      Height = 23
      Top = 0
      Caption = 'ToolButton47'
      Style = tbsSeparator
    end
    object ToolButton48: TToolButton
      Left = 1070
      Top = 0
      Action = dm.actToolsMeasure
    end
    object ToolButton49: TToolButton
      Left = 1093
      Top = 0
      Action = dm.actToolsMeasureArea
    end
    object ToolButton50: TToolButton
      Left = 1116
      Top = 0
      Action = dm.actToolsAreaInnerPoint
      DropdownMenu = dm.popMeasure
      Style = tbsDropDown
    end
    object tbSnaps: TToolButton
      Left = 591
      Top = 0
      Action = dm.actSnapEndP
      DropdownMenu = dm.popSnaps
      ShowCaption = False
      Style = tbsDropDown
    end
  end
end
