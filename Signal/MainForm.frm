VERSION 5.00
Object = "{2037E3AD-18D6-101C-8158-221E4B551F8E}#5.0#0"; "Vsocx32.ocx"
Object = "{D2FFAA40-074A-11D1-BAA2-444553540000}#3.0#0"; "VsVIEW3.ocx"
Begin VB.Form MainForm 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   ClientHeight    =   5340
   ClientLeft      =   720
   ClientTop       =   80505
   ClientWidth     =   7380
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   5340
   ScaleWidth      =   7380
   StartUpPosition =   1  'CenterOwner
   Begin VsOcxLib.VideoSoftElastic VSElastic1 
      Height          =   5340
      Left            =   510
      TabIndex        =   0
      Top             =   0
      Width           =   6870
      _Version        =   327680
      _ExtentX        =   12118
      _ExtentY        =   9419
      _StockProps     =   70
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ConvInfo        =   1418783674
      BackColor       =   8421504
      Align           =   5
      AutoSizeChildren=   2
      BorderWidth     =   0
      ChildSpacing    =   0
      BevelOuter      =   0
      BevelInnerWidth =   0
      BevelOuterWidth =   0
      BevelChildren   =   3
      Begin VsOcxLib.VideoSoftIndexTab TabRight 
         Height          =   5340
         Left            =   0
         TabIndex        =   1
         Top             =   0
         Width           =   6870
         _Version        =   327680
         _ExtentX        =   12118
         _ExtentY        =   9419
         _StockProps     =   102
         Caption         =   "1|2|3|4|5|6|7|8"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial CYR"
            Size            =   11.25
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ConvInfo        =   1418783674
         BackColor       =   8421504
         ForeColor       =   16777215
         FrontTabColor   =   12632256
         BackTabColor    =   12632256
         Style           =   3
         Position        =   4
         ShowFocusRect   =   0   'False
         TabsPerPage     =   8
         BoldCurrent     =   -1  'True
         FrontTabForeColor=   16777215
         TabHeight       =   500
         Begin VsOcxLib.VideoSoftElastic EllCnt 
            Height          =   5250
            Index           =   7
            Left            =   76845
            TabIndex        =   73
            TabStop         =   0   'False
            Top             =   45
            Width           =   6285
            _Version        =   327680
            _ExtentX        =   11086
            _ExtentY        =   9260
            _StockProps     =   70
            ConvInfo        =   1418783674
            AutoSizeChildren=   7
            BorderWidth     =   0
            BevelOuter      =   0
            Begin VB.OptionButton Option_H_8 
               Caption         =   "Показать сигнал с помехой"
               Height          =   345
               Left            =   1995
               TabIndex        =   153
               Top             =   3975
               Value           =   -1  'True
               Width           =   2685
            End
            Begin VB.OptionButton Option_Out_8 
               Caption         =   "Сглаженный сигнал"
               Height          =   345
               Left            =   1995
               MaskColor       =   &H000000FF&
               TabIndex        =   152
               Top             =   4290
               Width           =   2475
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic22 
               Height          =   2100
               Left            =   180
               TabIndex        =   154
               TabStop         =   0   'False
               Top             =   225
               Width           =   2925
               _Version        =   327680
               _ExtentX        =   5159
               _ExtentY        =   3704
               _StockProps     =   70
               Caption         =   "Входной сигнал Гаусса"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Np_8 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1800
                  TabIndex        =   67
                  Text            =   "5"
                  Top             =   1650
                  Width           =   780
               End
               Begin VB.TextBox Text_A_8 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   1800
                  TabIndex        =   64
                  Text            =   "5"
                  Top             =   420
                  Width           =   780
               End
               Begin VB.TextBox Text_Sigma_8 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   1800
                  TabIndex        =   66
                  Text            =   "5"
                  Top             =   1245
                  Width           =   780
               End
               Begin VB.TextBox Text_To_8 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1800
                  TabIndex        =   65
                  Text            =   "5"
                  Top             =   825
                  Width           =   780
               End
               Begin VB.Label Label60 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Число помех"
                  Height          =   315
                  Left            =   210
                  TabIndex        =   164
                  Top             =   1635
                  Width           =   1050
               End
               Begin VB.Label Label54 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   195
                  Left            =   210
                  TabIndex        =   157
                  Top             =   450
                  Width           =   960
               End
               Begin VB.Label Label53 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Sigma"
                  Height          =   300
                  Left            =   210
                  TabIndex        =   156
                  Top             =   1230
                  Width           =   1050
               End
               Begin VB.Label Label52 
                  BackStyle       =   0  'Transparent
                  Caption         =   "To"
                  Height          =   225
                  Left            =   210
                  TabIndex        =   155
                  Top             =   840
                  Width           =   1170
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic23 
               Height          =   1365
               Left            =   1440
               TabIndex        =   158
               TabStop         =   0   'False
               Top             =   2505
               Width           =   3555
               _Version        =   327680
               _ExtentX        =   6271
               _ExtentY        =   2408
               _StockProps     =   70
               Caption         =   "Дискретизация"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_T_8 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2400
                  TabIndex        =   70
                  Text            =   "5"
                  Top             =   420
                  Width           =   780
               End
               Begin VB.TextBox Text_N_8 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2415
                  TabIndex        =   71
                  Text            =   "4"
                  Top             =   855
                  Width           =   780
               End
               Begin VB.Label Label56 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Ширина"
                  Height          =   210
                  Left            =   405
                  TabIndex        =   160
                  Top             =   450
                  Width           =   1230
               End
               Begin VB.Label Label55 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Число точек"
                  Height          =   285
                  Left            =   405
                  TabIndex        =   159
                  Top             =   855
                  Width           =   1680
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic24 
               Height          =   1305
               Left            =   3285
               TabIndex        =   161
               TabStop         =   0   'False
               Top             =   225
               Width           =   2850
               _Version        =   327680
               _ExtentX        =   5027
               _ExtentY        =   2302
               _StockProps     =   70
               Caption         =   "Параметры голосования"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Delta_8 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1815
                  TabIndex        =   69
                  Text            =   "5"
                  Top             =   840
                  Width           =   780
               End
               Begin VB.TextBox Text_Nm_8 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   1815
                  TabIndex        =   68
                  Text            =   "5"
                  Top             =   405
                  Width           =   780
               End
               Begin VB.Label Label59 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Порог"
                  Height          =   225
                  Left            =   210
                  TabIndex        =   163
                  Top             =   870
                  Width           =   1410
               End
               Begin VB.Label Label57 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Nm"
                  Height          =   210
                  Left            =   210
                  TabIndex        =   162
                  Top             =   435
                  Width           =   960
               End
            End
         End
         Begin VsOcxLib.VideoSoftElastic EllCnt 
            Height          =   5250
            Index           =   6
            Left            =   76545
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   45
            Width           =   6285
            _Version        =   327680
            _ExtentX        =   11086
            _ExtentY        =   9260
            _StockProps     =   70
            ConvInfo        =   1418783674
            AutoSizeChildren=   7
            BorderWidth     =   0
            BevelOuter      =   0
            Begin VB.TextBox Text_SY_7 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1049
                  SubFormatType   =   1
               EndProperty
               Height          =   330
               Left            =   1740
               TabIndex        =   63
               Text            =   "1"
               Top             =   4365
               Width           =   780
            End
            Begin VB.TextBox Text_SX_7 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1049
                  SubFormatType   =   1
               EndProperty
               Height          =   330
               Left            =   1740
               TabIndex        =   62
               Text            =   "1"
               Top             =   3825
               Width           =   780
            End
            Begin VB.OptionButton Option_H_7 
               Height          =   315
               Left            =   3255
               TabIndex        =   132
               Top             =   2415
               Value           =   -1  'True
               Width           =   300
            End
            Begin VB.OptionButton Option_R_7 
               Height          =   300
               Left            =   3255
               MaskColor       =   &H000000FF&
               TabIndex        =   131
               Top             =   3765
               Width           =   510
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic17 
               Height          =   1530
               Left            =   120
               TabIndex        =   133
               TabStop         =   0   'False
               Top             =   315
               Width           =   2985
               _Version        =   327680
               _ExtentX        =   5265
               _ExtentY        =   2699
               _StockProps     =   70
               Caption         =   "Исходный сигнал (Гаусса)"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_A2_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1875
                  TabIndex        =   48
                  Text            =   "5"
                  Top             =   360
                  Width           =   780
               End
               Begin VB.TextBox Text_S2_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1875
                  TabIndex        =   50
                  Text            =   "5"
                  Top             =   1080
                  Width           =   780
               End
               Begin VB.TextBox Text_T2_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   1875
                  TabIndex        =   49
                  Text            =   "5"
                  Top             =   720
                  Width           =   780
               End
               Begin VB.Label Label40 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   195
                  Left            =   210
                  TabIndex        =   136
                  Top             =   420
                  Width           =   1020
               End
               Begin VB.Label Label39 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Sigma"
                  Height          =   255
                  Left            =   180
                  TabIndex        =   135
                  Top             =   1110
                  Width           =   750
               End
               Begin VB.Label Label38 
                  BackStyle       =   0  'Transparent
                  Caption         =   "To"
                  Height          =   180
                  Left            =   195
                  TabIndex        =   134
                  Top             =   780
                  Width           =   525
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic18 
               Height          =   1215
               Left            =   120
               TabIndex        =   137
               TabStop         =   0   'False
               Top             =   1965
               Width           =   2820
               _Version        =   327680
               _ExtentX        =   4974
               _ExtentY        =   2143
               _StockProps     =   70
               Caption         =   "Дискретизация"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_N_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   1695
                  TabIndex        =   55
                  Text            =   "4"
                  Top             =   735
                  Width           =   780
               End
               Begin VB.TextBox Text_T_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1695
                  TabIndex        =   54
                  Text            =   "5"
                  Top             =   330
                  Width           =   780
               End
               Begin VB.Label Label42 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Ширина"
                  Height          =   180
                  Left            =   225
                  TabIndex        =   139
                  Top             =   390
                  Width           =   1005
               End
               Begin VB.Label Label41 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Число точек"
                  Height          =   255
                  Left            =   240
                  TabIndex        =   138
                  Top             =   765
                  Width           =   1050
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic19 
               Height          =   1530
               Left            =   3195
               TabIndex        =   140
               TabStop         =   0   'False
               Top             =   315
               Width           =   3000
               _Version        =   327680
               _ExtentX        =   5292
               _ExtentY        =   2699
               _StockProps     =   70
               Caption         =   "Идеальный сигнал (Гаусса)"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_T1_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2025
                  TabIndex        =   52
                  Text            =   "5"
                  Top             =   720
                  Width           =   780
               End
               Begin VB.TextBox Text_S1_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2025
                  TabIndex        =   53
                  Text            =   "5"
                  Top             =   1080
                  Width           =   780
               End
               Begin VB.TextBox Text_A1_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2025
                  TabIndex        =   51
                  Text            =   "5"
                  Top             =   360
                  Width           =   780
               End
               Begin VB.Label Label45 
                  BackStyle       =   0  'Transparent
                  Caption         =   "To"
                  Height          =   180
                  Left            =   195
                  TabIndex        =   143
                  Top             =   780
                  Width           =   615
               End
               Begin VB.Label Label44 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Sigma"
                  Height          =   255
                  Left            =   195
                  TabIndex        =   142
                  Top             =   1110
                  Width           =   630
               End
               Begin VB.Label Label43 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   195
                  Left            =   195
                  TabIndex        =   141
                  Top             =   435
                  Width           =   1065
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic20 
               Height          =   1215
               Left            =   3780
               TabIndex        =   144
               TabStop         =   0   'False
               Top             =   1965
               Width           =   2415
               _Version        =   327680
               _ExtentX        =   4260
               _ExtentY        =   2143
               _StockProps     =   70
               Caption         =   "Импульсный отклик"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Step1_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   1395
                  TabIndex        =   57
                  Text            =   "4"
                  Top             =   735
                  Width           =   780
               End
               Begin VB.TextBox Text_Alpha1_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1395
                  TabIndex        =   56
                  Text            =   "5"
                  Top             =   330
                  Width           =   780
               End
               Begin VB.Label Label47 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Step"
                  Height          =   255
                  Left            =   315
                  TabIndex        =   146
                  Top             =   765
                  Width           =   810
               End
               Begin VB.Label Label46 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Alpha"
                  Height          =   180
                  Left            =   315
                  TabIndex        =   145
                  Top             =   390
                  Width           =   810
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic21 
               Height          =   1230
               Left            =   3780
               TabIndex        =   147
               TabStop         =   0   'False
               Top             =   3315
               Width           =   2415
               _Version        =   327680
               _ExtentX        =   4260
               _ExtentY        =   2170
               _StockProps     =   70
               Caption         =   "Ro(alpha)"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Alpha2_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   1410
                  TabIndex        =   58
                  Text            =   "5"
                  Top             =   315
                  Width           =   780
               End
               Begin VB.TextBox Text_Step2_7 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1410
                  TabIndex        =   59
                  Text            =   "4"
                  Top             =   735
                  Width           =   780
               End
               Begin VB.Label Label49 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Alpha"
                  Height          =   180
                  Left            =   315
                  TabIndex        =   149
                  Top             =   375
                  Width           =   810
               End
               Begin VB.Label Label48 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Step"
                  Height          =   270
                  Left            =   315
                  TabIndex        =   148
                  Top             =   765
                  Width           =   795
               End
            End
            Begin VB.Label Label51 
               BackStyle       =   0  'Transparent
               Caption         =   "Масштаб Y"
               Height          =   270
               Left            =   630
               TabIndex        =   151
               Top             =   4395
               Width           =   975
            End
            Begin VB.Label Label50 
               BackStyle       =   0  'Transparent
               Caption         =   "Масштаб X"
               Height          =   195
               Left            =   630
               TabIndex        =   150
               Top             =   3900
               Width           =   870
            End
         End
         Begin VsOcxLib.VideoSoftElastic EllCnt 
            Height          =   5250
            Index           =   5
            Left            =   76245
            TabIndex        =   47
            TabStop         =   0   'False
            Top             =   45
            Width           =   6285
            _Version        =   327680
            _ExtentX        =   11086
            _ExtentY        =   9260
            _StockProps     =   70
            ConvInfo        =   1418783674
            AutoSizeChildren=   7
            BorderWidth     =   0
            BevelOuter      =   0
            Begin VB.OptionButton Option_Ff_6 
               Caption         =   "Отфильтрованный сигнал"
               Height          =   270
               Left            =   1695
               MaskColor       =   &H000000FF&
               TabIndex        =   111
               Top             =   4515
               Width           =   2850
            End
            Begin VB.OptionButton Option_Hc_6 
               Caption         =   "Показать сигнал с помехой"
               Height          =   270
               Left            =   1695
               TabIndex        =   110
               Top             =   4185
               Value           =   -1  'True
               Width           =   3345
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic14 
               Height          =   1635
               Left            =   1245
               TabIndex        =   112
               TabStop         =   0   'False
               Top             =   2325
               Width           =   3780
               _Version        =   327680
               _ExtentX        =   6667
               _ExtentY        =   2884
               _StockProps     =   70
               Caption         =   "Входной сигнал Гаусса"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_To_6 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2700
                  TabIndex        =   115
                  Text            =   "47"
                  Top             =   750
                  Width           =   780
               End
               Begin VB.TextBox Text_Sigma_6 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2700
                  TabIndex        =   114
                  Text            =   "48"
                  Top             =   1155
                  Width           =   780
               End
               Begin VB.TextBox Text_Ampl_6 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2700
                  TabIndex        =   113
                  Text            =   "46"
                  Top             =   330
                  Width           =   780
               End
               Begin VB.Label Label32 
                  BackStyle       =   0  'Transparent
                  Caption         =   "To"
                  Height          =   195
                  Left            =   330
                  TabIndex        =   118
                  Top             =   810
                  Width           =   585
               End
               Begin VB.Label Label31 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Sigma"
                  Height          =   315
                  Left            =   330
                  TabIndex        =   117
                  Top             =   1155
                  Width           =   1020
               End
               Begin VB.Label Label30 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   210
                  Left            =   330
                  TabIndex        =   116
                  Top             =   390
                  Width           =   1620
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic15 
               Height          =   1215
               Left            =   3645
               TabIndex        =   119
               TabStop         =   0   'False
               Top             =   540
               Width           =   2460
               _Version        =   327680
               _ExtentX        =   4339
               _ExtentY        =   2143
               _StockProps     =   70
               Caption         =   "Дискретизация"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_N_6 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   1425
                  TabIndex        =   121
                  Text            =   "44"
                  Top             =   330
                  Width           =   780
               End
               Begin VB.TextBox Text_T_6 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   1425
                  TabIndex        =   120
                  Text            =   "45"
                  Top             =   780
                  Width           =   780
               End
               Begin VB.Label Label34 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Число точек"
                  Height          =   270
                  Left            =   225
                  TabIndex        =   123
                  Top             =   345
                  Width           =   1140
               End
               Begin VB.Label Label33 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Ширина"
                  Height          =   210
                  Left            =   240
                  TabIndex        =   122
                  Top             =   810
                  Width           =   1050
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic16 
               Height          =   1650
               Left            =   180
               TabIndex        =   124
               TabStop         =   0   'False
               Top             =   375
               Width           =   3285
               _Version        =   327680
               _ExtentX        =   5794
               _ExtentY        =   2910
               _StockProps     =   70
               Caption         =   "Помеха (сигнал Гаусса)"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Ampl2_6 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2010
                  TabIndex        =   127
                  Text            =   "41"
                  Top             =   375
                  Width           =   780
               End
               Begin VB.TextBox Text_Sigma2_6 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2010
                  TabIndex        =   126
                  Text            =   "43"
                  Top             =   1155
                  Width           =   780
               End
               Begin VB.TextBox Text_To2_6 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2010
                  TabIndex        =   125
                  Text            =   "42"
                  Top             =   750
                  Width           =   780
               End
               Begin VB.Label Label37 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   240
                  Left            =   210
                  TabIndex        =   130
                  Top             =   405
                  Width           =   1185
               End
               Begin VB.Label Label36 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Sigma"
                  Height          =   240
                  Left            =   210
                  TabIndex        =   129
                  Top             =   1200
                  Width           =   1020
               End
               Begin VB.Label Label35 
                  BackStyle       =   0  'Transparent
                  Caption         =   "To"
                  Height          =   255
                  Left            =   210
                  TabIndex        =   128
                  Top             =   780
                  Width           =   885
               End
            End
         End
         Begin VsOcxLib.VideoSoftElastic EllCnt 
            Height          =   5250
            Index           =   4
            Left            =   75945
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   45
            Width           =   6285
            _Version        =   327680
            _ExtentX        =   11086
            _ExtentY        =   9260
            _StockProps     =   70
            ConvInfo        =   1418783674
            AutoSizeChildren=   7
            BorderWidth     =   0
            BevelOuter      =   0
            Begin VB.OptionButton Option_Hc_5 
               Caption         =   "Показать сигнал с помехой"
               Height          =   270
               Left            =   1965
               TabIndex        =   39
               Top             =   4005
               Value           =   -1  'True
               Width           =   2580
            End
            Begin VB.OptionButton Option_Flt_5 
               Caption         =   "Отфильтрованный сигнал"
               Height          =   240
               Left            =   1965
               MaskColor       =   &H000000FF&
               TabIndex        =   40
               Top             =   4350
               Width           =   2730
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic12 
               Height          =   1710
               Left            =   1215
               TabIndex        =   165
               TabStop         =   0   'False
               Top             =   555
               Width           =   3945
               _Version        =   327680
               _ExtentX        =   6959
               _ExtentY        =   3016
               _StockProps     =   70
               Caption         =   "Входной сигнал Гаусса"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_To_5 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2835
                  TabIndex        =   35
                  Text            =   "5"
                  Top             =   825
                  Width           =   780
               End
               Begin VB.TextBox Text_Sigma_5 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2835
                  TabIndex        =   36
                  Text            =   "5"
                  Top             =   1290
                  Width           =   780
               End
               Begin VB.TextBox Text_Ampl_5 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2835
                  TabIndex        =   34
                  Text            =   "5"
                  Top             =   360
                  Width           =   780
               End
               Begin VB.Label Label25 
                  BackStyle       =   0  'Transparent
                  Caption         =   "To"
                  Height          =   210
                  Left            =   360
                  TabIndex        =   168
                  Top             =   855
                  Width           =   1275
               End
               Begin VB.Label Label26 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Sigma"
                  Height          =   255
                  Left            =   360
                  TabIndex        =   167
                  Top             =   1305
                  Width           =   1245
               End
               Begin VB.Label Label27 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   270
                  Left            =   360
                  TabIndex        =   166
                  Top             =   375
                  Width           =   1230
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic13 
               Height          =   1380
               Left            =   1215
               TabIndex        =   169
               TabStop         =   0   'False
               Top             =   2430
               Width           =   3945
               _Version        =   327680
               _ExtentX        =   6959
               _ExtentY        =   2434
               _StockProps     =   70
               Caption         =   "Параметры"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_B_5 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2835
                  TabIndex        =   38
                  Text            =   "4"
                  Top             =   900
                  Width           =   780
               End
               Begin VB.TextBox Text_Nhc_5 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2835
                  TabIndex        =   37
                  Text            =   "5"
                  Top             =   420
                  Width           =   780
               End
               Begin VB.Label Label28 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Ширина фильтра (B)"
                  Height          =   240
                  Left            =   360
                  TabIndex        =   171
                  Top             =   915
                  Width           =   1695
               End
               Begin VB.Label Label29 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Число помех"
                  Height          =   225
                  Left            =   360
                  TabIndex        =   170
                  Top             =   435
                  Width           =   1770
               End
            End
         End
         Begin VsOcxLib.VideoSoftElastic EllCnt 
            Height          =   5250
            Index           =   3
            Left            =   75645
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   45
            Width           =   6285
            _Version        =   327680
            _ExtentX        =   11086
            _ExtentY        =   9260
            _StockProps     =   70
            ConvInfo        =   1418783674
            AutoSizeChildren=   7
            BorderWidth     =   0
            BevelOuter      =   0
            Begin VB.CheckBox Check_ShowIn_4 
               BackColor       =   &H0082B8DC&
               Caption         =   "Показать входной сигнал"
               Height          =   285
               Left            =   1800
               TabIndex        =   32
               Top             =   4095
               Value           =   1  'Checked
               Width           =   2565
            End
            Begin VB.CheckBox Check_ShowImp_4 
               BackColor       =   &H0082B8DC&
               Caption         =   "Показать импульсный отклик"
               Height          =   285
               Left            =   1800
               TabIndex        =   33
               Top             =   4425
               Value           =   1  'Checked
               Width           =   2940
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic11 
               Height          =   1755
               Left            =   735
               TabIndex        =   103
               TabStop         =   0   'False
               Top             =   495
               Width           =   4830
               _Version        =   327680
               _ExtentX        =   8520
               _ExtentY        =   3096
               _StockProps     =   70
               Caption         =   "Дискретизация"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_X2_4 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   3705
                  TabIndex        =   28
                  Text            =   "5"
                  Top             =   825
                  Width           =   780
               End
               Begin VB.TextBox Text_N_4 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   3705
                  TabIndex        =   29
                  Text            =   "5"
                  Top             =   1230
                  Width           =   780
               End
               Begin VB.TextBox Text_X1_4 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   3705
                  TabIndex        =   27
                  Text            =   "5"
                  Top             =   405
                  Width           =   780
               End
               Begin VB.Label Label24 
                  BackStyle       =   0  'Transparent
                  Caption         =   "X2"
                  Height          =   195
                  Left            =   885
                  TabIndex        =   106
                  Top             =   870
                  Width           =   2130
               End
               Begin VB.Label Label23 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Число точек"
                  Height          =   300
                  Left            =   855
                  TabIndex        =   105
                  Top             =   1230
                  Width           =   2265
               End
               Begin VB.Label Label22 
                  BackStyle       =   0  'Transparent
                  Caption         =   "X1"
                  Height          =   210
                  Left            =   915
                  TabIndex        =   104
                  Top             =   450
                  Width           =   1635
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic10 
               Height          =   1425
               Left            =   990
               TabIndex        =   107
               TabStop         =   0   'False
               Top             =   2475
               Width           =   4350
               _Version        =   327680
               _ExtentX        =   7673
               _ExtentY        =   2514
               _StockProps     =   70
               Caption         =   "Сигма сигнала Гаусса (A=1,To=0)"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Sg2_4 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   3240
                  TabIndex        =   31
                  Text            =   "4"
                  Top             =   855
                  Width           =   780
               End
               Begin VB.TextBox Text_Sg1_4 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   3240
                  TabIndex        =   30
                  Text            =   "5"
                  Top             =   435
                  Width           =   780
               End
               Begin VB.Label Label20 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Отклик"
                  Height          =   315
                  Left            =   390
                  TabIndex        =   109
                  Top             =   825
                  Width           =   1380
               End
               Begin VB.Label Label21 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Импульс"
                  Height          =   225
                  Left            =   390
                  TabIndex        =   108
                  Top             =   450
                  Width           =   1890
               End
            End
         End
         Begin VsOcxLib.VideoSoftElastic EllCnt 
            Height          =   5250
            Index           =   2
            Left            =   75345
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   45
            Width           =   6285
            _Version        =   327680
            _ExtentX        =   11086
            _ExtentY        =   9260
            _StockProps     =   70
            ConvInfo        =   1418783674
            AutoSizeChildren=   7
            BorderWidth     =   0
            BevelOuter      =   0
            Begin VB.OptionButton Option_SI_G 
               Height          =   405
               Left            =   570
               MaskColor       =   &H000000FF&
               TabIndex        =   21
               Top             =   3750
               Width           =   735
            End
            Begin VB.OptionButton Option_SI_F 
               Height          =   315
               Left            =   600
               TabIndex        =   20
               Top             =   2280
               Value           =   -1  'True
               Width           =   750
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic6 
               Height          =   1395
               Left            =   165
               TabIndex        =   89
               TabStop         =   0   'False
               Top             =   165
               Width           =   3840
               _Version        =   327680
               _ExtentX        =   6773
               _ExtentY        =   2461
               _StockProps     =   70
               Caption         =   "Дискретизация"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Diskr_N 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2595
                  TabIndex        =   91
                  Text            =   "18"
                  Top             =   945
                  Width           =   840
               End
               Begin VB.TextBox Text_Diskr_T 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2595
                  TabIndex        =   90
                  Text            =   "17"
                  Top             =   435
                  Width           =   840
               End
               Begin VB.Label Label14 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Число точек (N)"
                  Height          =   255
                  Left            =   360
                  TabIndex        =   95
                  Top             =   960
                  Width           =   2040
               End
               Begin VB.Label Label12 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Ширина (T)"
                  Height          =   285
                  Left            =   360
                  TabIndex        =   94
                  Top             =   435
                  Width           =   1395
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic7 
               Height          =   1305
               Left            =   1560
               TabIndex        =   96
               TabStop         =   0   'False
               Top             =   1785
               Width           =   3915
               _Version        =   327680
               _ExtentX        =   6906
               _ExtentY        =   2302
               _StockProps     =   70
               Caption         =   "Ступенчатый сигнал"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_St_T 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2790
                  TabIndex        =   23
                  Text            =   "4"
                  Top             =   825
                  Width           =   840
               End
               Begin VB.TextBox Text_St_Ampl 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2790
                  TabIndex        =   22
                  Text            =   "5"
                  Top             =   375
                  Width           =   840
               End
               Begin VB.Label Label16 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Период"
                  Height          =   285
                  Left            =   285
                  TabIndex        =   102
                  Top             =   825
                  Width           =   1695
               End
               Begin VB.Label Label15 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   195
                  Left            =   285
                  TabIndex        =   97
                  Top             =   405
                  Width           =   1695
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic8 
               Height          =   1620
               Left            =   1560
               TabIndex        =   98
               TabStop         =   0   'False
               Top             =   3240
               Width           =   3915
               _Version        =   327680
               _ExtentX        =   6906
               _ExtentY        =   2857
               _StockProps     =   70
               Caption         =   "Сигнал Гаусса"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_G_Ampl 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2790
                  TabIndex        =   24
                  Text            =   "5"
                  Top             =   330
                  Width           =   840
               End
               Begin VB.TextBox Text_G_Sigma 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   2790
                  TabIndex        =   26
                  Text            =   "5"
                  Top             =   1140
                  Width           =   840
               End
               Begin VB.TextBox Text_G_To 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   2790
                  TabIndex        =   25
                  Text            =   "5"
                  Top             =   735
                  Width           =   840
               End
               Begin VB.Label Label19 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   225
                  Left            =   285
                  TabIndex        =   101
                  Top             =   375
                  Width           =   945
               End
               Begin VB.Label Label18 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Сигма"
                  Height          =   300
                  Left            =   300
                  TabIndex        =   100
                  Top             =   1155
                  Width           =   885
               End
               Begin VB.Label Label17 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Среднее значение (to)"
                  Height          =   180
                  Left            =   270
                  TabIndex        =   99
                  Top             =   795
                  Width           =   990
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic9 
               Height          =   1110
               Left            =   4170
               TabIndex        =   19
               TabStop         =   0   'False
               Top             =   270
               Width           =   1890
               _Version        =   327680
               _ExtentX        =   3334
               _ExtentY        =   1958
               _StockProps     =   70
               Caption         =   "Преоб. Фурье"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.OptionButton Option_F_Fast 
                  Caption         =   "Быстрое"
                  Height          =   360
                  Left            =   180
                  MaskColor       =   &H000000FF&
                  TabIndex        =   93
                  Top             =   630
                  Width           =   1365
               End
               Begin VB.OptionButton Option_F_Form 
                  Caption         =   "Формула"
                  Height          =   345
                  Left            =   180
                  TabIndex        =   92
                  Top             =   330
                  Value           =   -1  'True
                  Width           =   1410
               End
            End
         End
         Begin VsOcxLib.VideoSoftElastic EllCnt 
            Height          =   5250
            Index           =   1
            Left            =   75045
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   45
            Width           =   6285
            _Version        =   327680
            _ExtentX        =   11086
            _ExtentY        =   9260
            _StockProps     =   70
            ConvInfo        =   1418783674
            AutoSizeChildren=   7
            BorderWidth     =   0
            BevelOuter      =   0
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic4 
               Height          =   1905
               Left            =   855
               TabIndex        =   77
               TabStop         =   0   'False
               Top             =   585
               Width           =   4575
               _Version        =   327680
               _ExtentX        =   8070
               _ExtentY        =   3360
               _StockProps     =   70
               Caption         =   "Сигнал Гаусса"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Ampl_G2 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   3390
                  TabIndex        =   78
                  Text            =   "12"
                  Top             =   345
                  Width           =   840
               End
               Begin VB.TextBox Text_Sigma_G2 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   3390
                  TabIndex        =   82
                  Text            =   "14"
                  Top             =   1395
                  Width           =   840
               End
               Begin VB.TextBox Text_T0_G2 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Enabled         =   0   'False
                  Height          =   300
                  Left            =   3390
                  TabIndex        =   80
                  Text            =   "13"
                  Top             =   870
                  Width           =   840
               End
               Begin VB.Label Label10 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   300
                  Left            =   360
                  TabIndex        =   85
                  Top             =   330
                  Width           =   1095
               End
               Begin VB.Label Label9 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Сигма"
                  Height          =   270
                  Left            =   360
                  TabIndex        =   81
                  Top             =   1395
                  Width           =   735
               End
               Begin VB.Label Label8 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Среднее значение (to)"
                  Enabled         =   0   'False
                  Height          =   225
                  Left            =   375
                  TabIndex        =   79
                  Top             =   885
                  Width           =   1875
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic5 
               Height          =   1605
               Left            =   855
               TabIndex        =   86
               TabStop         =   0   'False
               Top             =   2760
               Width           =   4575
               _Version        =   327680
               _ExtentX        =   8070
               _ExtentY        =   2831
               _StockProps     =   70
               Caption         =   "Параметры восстановления"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Cnt_G2 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   315
                  Left            =   3390
                  TabIndex        =   84
                  Text            =   "16"
                  Top             =   1065
                  Width           =   840
               End
               Begin VB.TextBox Text_F_G2 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   300
                  Left            =   3390
                  TabIndex        =   83
                  Text            =   "15"
                  Top             =   465
                  Width           =   840
               End
               Begin VB.Label Label13 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Число отсчётов"
                  Height          =   225
                  Left            =   360
                  TabIndex        =   88
                  Top             =   1065
                  Width           =   1875
               End
               Begin VB.Label Label11 
                  BackStyle       =   0  'Transparent
                  Caption         =   "F"
                  Height          =   270
                  Left            =   360
                  TabIndex        =   87
                  Top             =   465
                  Width           =   1095
               End
            End
         End
         Begin VsOcxLib.VideoSoftElastic EllCnt 
            Height          =   5250
            Index           =   0
            Left            =   45
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   45
            Width           =   6285
            _Version        =   327680
            _ExtentX        =   11086
            _ExtentY        =   9260
            _StockProps     =   70
            ConvInfo        =   1418783674
            AutoSizeChildren=   7
            BorderWidth     =   0
            BevelOuter      =   0
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic1 
               Height          =   1305
               Left            =   1650
               TabIndex        =   44
               TabStop         =   0   'False
               Top             =   240
               Width           =   3570
               _Version        =   327680
               _ExtentX        =   6297
               _ExtentY        =   2302
               _StockProps     =   70
               Caption         =   "Одиночный импульс"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Ampl_SI 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   285
                  Left            =   2535
                  TabIndex        =   5
                  Text            =   "5"
                  Top             =   405
                  Width           =   765
               End
               Begin VB.TextBox Text_To_SI 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   285
                  Left            =   2535
                  TabIndex        =   6
                  Text            =   "5"
                  Top             =   855
                  Width           =   765
               End
               Begin VB.Label Label1 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   270
                  Left            =   270
                  TabIndex        =   46
                  Top             =   420
                  Width           =   885
               End
               Begin VB.Label Label2 
                  BackStyle       =   0  'Transparent
                  Caption         =   "To"
                  Height          =   210
                  Left            =   270
                  TabIndex        =   45
                  Top             =   930
                  Width           =   390
               End
            End
            Begin VB.OptionButton Option_SI 
               Height          =   225
               Left            =   900
               TabIndex        =   2
               Top             =   795
               Value           =   -1  'True
               Width           =   450
            End
            Begin VB.OptionButton Option_Gauss 
               Height          =   255
               Left            =   900
               TabIndex        =   4
               Top             =   3975
               Width           =   570
            End
            Begin VB.OptionButton Option_SS 
               Height          =   210
               Left            =   900
               MaskColor       =   &H000000FF&
               TabIndex        =   3
               Top             =   2325
               Width           =   375
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic2 
               Height          =   1290
               Left            =   1665
               TabIndex        =   42
               TabStop         =   0   'False
               Top             =   1785
               Width           =   3570
               _Version        =   327680
               _ExtentX        =   6297
               _ExtentY        =   2275
               _StockProps     =   70
               Caption         =   "Ступенчатый сигнал"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_Ampl_SS 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   285
                  Left            =   2535
                  TabIndex        =   7
                  Text            =   "5"
                  Top             =   390
                  Width           =   765
               End
               Begin VB.TextBox Text_T_SS 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   285
                  Left            =   2535
                  TabIndex        =   8
                  Text            =   "4"
                  Top             =   825
                  Width           =   765
               End
               Begin VB.Label Label3 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   255
                  Left            =   270
                  TabIndex        =   72
                  Top             =   405
                  Width           =   945
               End
               Begin VB.Label Label4 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Длительность (T)"
                  Height          =   255
                  Left            =   270
                  TabIndex        =   60
                  Top             =   840
                  Width           =   1455
               End
            End
            Begin VsOcxLib.VideoSoftElastic VideoSoftElastic3 
               Height          =   1635
               Left            =   1680
               TabIndex        =   43
               TabStop         =   0   'False
               Top             =   3300
               Width           =   3570
               _Version        =   327680
               _ExtentX        =   6297
               _ExtentY        =   2884
               _StockProps     =   70
               Caption         =   "Сигнал Гаусса"
               ConvInfo        =   1418783674
               ForeColor       =   16711680
               AutoSizeChildren=   7
               BevelOuter      =   6
               CaptionPos      =   3
               TagPosition     =   2
               Begin VB.TextBox Text_T0_Gauss 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   285
                  Left            =   2535
                  TabIndex        =   10
                  Text            =   "5"
                  Top             =   750
                  Width           =   780
               End
               Begin VB.TextBox Text_Sigma_Gauss 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   285
                  Left            =   2535
                  TabIndex        =   11
                  Text            =   "5"
                  Top             =   1185
                  Width           =   780
               End
               Begin VB.TextBox Text_Ampl_Gauss 
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1049
                     SubFormatType   =   1
                  EndProperty
                  Height          =   285
                  Left            =   2535
                  TabIndex        =   9
                  Text            =   "5"
                  Top             =   330
                  Width           =   780
               End
               Begin VB.Label Label6 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Среднее значение (to)"
                  Height          =   285
                  Left            =   270
                  TabIndex        =   76
                  Top             =   750
                  Width           =   1740
               End
               Begin VB.Label Label7 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Сигма"
                  Height          =   255
                  Left            =   270
                  TabIndex        =   75
                  Top             =   1200
                  Width           =   1005
               End
               Begin VB.Label Label5 
                  BackStyle       =   0  'Transparent
                  Caption         =   "Амплитуда"
                  Height          =   225
                  Left            =   270
                  TabIndex        =   74
                  Top             =   375
                  Width           =   1050
               End
            End
         End
      End
   End
   Begin VsOcxLib.VideoSoftElastic VideoSoftElastic1Fix 
      Height          =   5340
      Left            =   0
      TabIndex        =   12
      Top             =   0
      Width           =   510
      _Version        =   327680
      _ExtentX        =   900
      _ExtentY        =   9419
      _StockProps     =   70
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ConvInfo        =   1418783674
      BackColor       =   8421504
      Align           =   3
      AutoSizeChildren=   4
      BorderWidth     =   0
      ChildSpacing    =   0
      BevelOuter      =   0
      BevelInnerWidth =   0
      BevelOuterWidth =   0
      BevelChildren   =   2
      Begin VsOcxLib.VideoSoftIndexTab TabsLeft 
         Height          =   5340
         Left            =   0
         TabIndex        =   13
         Top             =   0
         Width           =   510
         _Version        =   327680
         _ExtentX        =   900
         _ExtentY        =   9419
         _StockProps     =   102
         Caption         =   "-|-|-|-|-|-|-|-"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial CYR"
            Size            =   11.25
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ConvInfo        =   1418783674
         BackColor       =   8421504
         ForeColor       =   16777215
         FrontTabColor   =   12632256
         CurrTab         =   -1
         Style           =   3
         Position        =   2
         ShowFocusRect   =   0   'False
         TabsPerPage     =   8
         BoldCurrent     =   -1  'True
         FrontTabForeColor=   16777215
         TabHeight       =   500
      End
   End
   Begin vsViewLib.vsInForm vsInForm1 
      Height          =   480
      Left            =   0
      TabIndex        =   41
      Top             =   0
      Visible         =   0   'False
      Width           =   480
      _Version        =   196608
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   6
      Caption         =   "Обработка сигналов"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CustomFrame     =   -1  'True
      FrameStyle      =   4
      BarStyle        =   5
      BarColor        =   8567004
      CapStyle        =   3
      CapColor        =   8421376
      CapColorInactive=   4210752
      ButtonsRight    =   3
      PictLeft0       =   "MainForm.frx":0000
      PictRight0      =   "MainForm.frx":010A
      PictRight1      =   "MainForm.frx":0214
      PictRight2      =   "MainForm.frx":031E
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim TABSTEXT(7) As String
Dim TABSTEXT_TTL(7) As String

Private arrOfItems(7) As Collection

Private Type RECT
        Left As Long
        Top As Long
        Right As Long
        Bottom As Long
End Type

Private Declare Function GetSystemMenu Lib "user32" (ByVal hwnd As Long, ByVal bRevert As Long) As Long
Private Declare Function TrackPopupMenu Lib "user32" (ByVal hMenu As Long, ByVal wFlags As Long, ByVal x As Long, ByVal y As Long, ByVal nReserved As Long, ByVal hwnd As Long, lprc As Long) As Long
Private Const TPM_CENTERALIGN = &H4&
Private Const TPM_LEFTALIGN = &H0&
Private Const TPM_LEFTBUTTON = &H0&
Private Const TPM_RIGHTALIGN = &H8&
Private Const TPM_RIGHTBUTTON = &H2&

Private Declare Sub PostQuitMessage Lib "user32" (ByVal nExitCode As Long)


Private Sub CloseChapter(Chapter)
  
  Dim i As Long
  If TabsLeft.CurrTab = -1 Then Exit Sub
  
  TabRight.CurrTab = Chapter
  
  For i = Chapter To TabsLeft.NumTabs - 1
    TabsLeft.TabCaption(i) = "-"
    TabRight.TabCaption(i) = TABSTEXT(i)
  Next i
  TabsLeft.CurrTab = -1
  
End Sub

Private Sub EllCnt_KeyDown(index As Integer, KeyCode As Integer, Shift As Integer)
  Debug.Print
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
  Debug.Print
End Sub


Private Sub Form_Load()
      
  TABSTEXT_TTL(0) = "Типовые сигналы"
  TABSTEXT_TTL(1) = "Дискретезация и восстановление сигнала по т.Котельникова"
  TABSTEXT_TTL(2) = "Дискретное преобразование Фурье"
  TABSTEXT_TTL(3) = "Поиск выходного сигнала фильтра через свёртку"
  TABSTEXT_TTL(4) = "Фильтрация помехи низкочастотным фильтром Баттера Уотта"
  TABSTEXT_TTL(5) = "Фильтрация линейным адаптивным фильтром"
  TABSTEXT_TTL(6) = "Поиск импульсного отклика фильтра"
  TABSTEXT_TTL(7) = "Сглаживание импульсных помех"
    
  
  Dim i As Long

  TabsLeft.BackColor = RGB(200, 164, 110)
  TabsLeft.BackTabColor = RGB(200, 164, 110)

  TabRight.BackColor = RGB(200, 164, 110)
  TabRight.BackTabColor = RGB(200, 164, 110)

  'TabRight.ForeColor = RGB(126, 156, 35)
  TabRight.ForeColor = RGB(0, 100, 0)
  'TabRight.FrontTabForeColor = RGB(74, 186, 44)
  TabRight.FrontTabForeColor = RGB(50, 255, 50)

  TabsLeft.ForeColor = RGB(0, 100, 0)
  TabsLeft.FrontTabForeColor = RGB(50, 255, 50)

  For i = LBound(TABSTEXT) To UBound(TABSTEXT)
    TabsLeft.TabColor(i) = RGB(220, 184, 130)
    TabRight.TabColor(i) = RGB(220, 184, 130)
    TabRight.TabCaption(i) = i + 1
    TABSTEXT(i) = i + 1
  Next i
  
  Dim ell As VideoSoftElastic
  For Each ell In EllCnt
    ell.BackColor = RGB(220, 184, 130)
    SetContainedBkGnds ell, RGB(220, 184, 130)
  Next ell
  
  If TabRight.CurrTab = -1 Then vsInForm1.Caption = "Обработка сигналов: " _
  Else _
    vsInForm1.Caption = "Обработка сигналов: " & "'" & TABSTEXT_TTL(TabRight.CurrTab) & "'": _
    TabRight.TabColor(TabRight.CurrTab) = RGB(228, 192, 137): _
    EllCnt(TabRight.CurrTab).BackColor = RGB(228, 192, 137): _
    SetContainedBkGnds EllCnt(TabRight.CurrTab), RGB(228, 192, 137)
    
  InitItems
    
  Load Form_Present
  Form_Present.Show vbModeless
  
  MkLoadToForm
  
End Sub

Public Function IsSubContainer_N_For(ByVal objContainer As Object, ByVal objControl As Object) As Boolean
  If objControl Is Nothing Then IsSubContainer_N_For = False: Exit Function
    
  On Error Resume Next
  Dim objC As Object
  Set objC = objControl.Container
  If objC Is Nothing Then IsSubContainer_N_For = False: Exit Function
  
  If objC Is Nothing Then IsSubContainer_N_For = (objContainer Is Nothing): Exit Function
    
  If objC Is objContainer Then IsSubContainer_N_For = True: Exit Function
  
  IsSubContainer_N_For = IsSubContainer_N_For(objContainer, objC)
  'IsSubContainer_N_For = False
End Function

Public Sub SetContainedBkGnds(ByVal ctlCont As Control, ByVal lColor As Long)
  Dim vbeExt As Object
    
  For Each vbeExt In Controls
    If IsSubContainer_N_For(ctlCont, vbeExt) Then
      On Error Resume Next
      If TypeName(vbeExt) <> "TextBox" Then _
        vbeExt.BackColor = lColor
    End If
  Next vbeExt
End Sub

Public Function GetContainedControls(ByVal ctlCont As Control) As Collection
  Dim vbeExt As Object
  Dim coll As New Collection
    
  For Each vbeExt In Controls
    If IsSubContainer_N_For(ctlCont, vbeExt) Then
      On Error Resume Next
      Dim sName As String
      sName = vbeExt.Name
      If Err.Number = 0 Then
        'Dim lInd As Long
        'lInd = vbeExt.index
        coll.Add vbeExt, sName
      End If
    End If
  Next vbeExt
  
  Set GetContainedControls = coll
  
End Function

Private Sub OpenChapter(Chapter As Long)
  
  Dim i As Long

  For i = Chapter - 1 To 0 Step -1
    TabRight.TabCaption(i) = "-"
    TabsLeft.TabCaption(i) = TABSTEXT(i)
  Next i
  
  vsInForm1.Caption = "Обработка сигналов: " & "'" & TABSTEXT_TTL(Chapter) & "'"
  vsInForm1.CapAlign = caCenterCenter
  
  MkLoadToForm

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
  Debug.Print "Qry unload"
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Unload Form_Opt
  Unload Form_Present
  Set Form_Opt = Nothing
  Set Form_Present = Nothing
End Sub

Private Sub Option_Gauss_Click()
  LoadItemToForm arrOfItems(0).Item(3), EllCnt(0)
End Sub

Public Function ValidateAll_x(ByVal bFocus As Boolean) As Boolean
  Select Case TabRight.CurrTab
    Case 0
      ValidateAll_x = ValidateAll_0(bFocus)
    Case 1
      ValidateAll_x = ValidateAll_1(bFocus)
    Case 2
      ValidateAll_x = ValidateAll_2(bFocus)
    Case 3
      ValidateAll_x = ValidateAll_3(bFocus)
    Case 4
      ValidateAll_x = ValidateAll_4(bFocus)
    Case 5
      ValidateAll_x = ValidateAll_5(bFocus)
    Case 6
      ValidateAll_x = ValidateAll_6(bFocus)
    Case 7
      ValidateAll_x = ValidateAll_7(bFocus)
  End Select
End Function


Public Function ValidateAll_0(ByVal bFocus As Boolean) As Boolean
  On Error GoTo ERR_H
  
  CheckNumeric Text_Ampl_SI, "Амплитуда импульса", bFocus
  CheckNumeric Text_To_SI, "To импульса", bFocus
  CheckNumeric Text_Ampl_SS, "Амплитуда ступенчатого сигнала", bFocus
  CheckNumeric Text_T_SS, "Длительность ступенчатого сигнала", bFocus
  CheckNumeric Text_Ampl_Gauss, "Амплитуда сигнала Гаусса", bFocus
  CheckNumeric Text_T0_Gauss, "To сигнала Гаусса", bFocus
  CheckNumeric Text_Sigma_Gauss, "Сигма сигнала Гаусса", bFocus
  
  
  If CDbl(Text_Sigma_Gauss.Text) <= 0 Then ReportError Text_Sigma_Gauss, "Сигма > 0", bFocus
  
  ValidateAll_0 = True
  Exit Function
  
ERR_H:
  ValidateAll_0 = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function

Public Function ValidateAll_1(ByVal bFocus As Boolean) As Boolean
  On Error GoTo ERR_H
  
  CheckNumeric Text_Ampl_G2, "Амплитуда", bFocus
  CheckNumeric Text_T0_G2, "To", bFocus
  CheckNumeric Text_Sigma_G2, "Сигма", bFocus
  
  CheckNumeric Text_F_G2, "F", bFocus
  CheckNumericInt Text_Cnt_G2, "Число отсчётов", bFocus
    
  
  If CDbl(Text_Sigma_G2.Text) <= 0 Then ReportError Text_Sigma_G2, "Сигма > 0", bFocus
  If CDbl(Text_F_G2.Text) <= 0 Then ReportError Text_F_G2, "F > 0", bFocus
  If CDbl(Text_Cnt_G2.Text) <= 0 Then ReportError Text_Cnt_G2, "Число отсчётов > 0", bFocus
  
  ValidateAll_1 = True
  Exit Function
  
ERR_H:
  ValidateAll_1 = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function

Public Function ValidateAll_2(ByVal bFocus As Boolean) As Boolean
  On Error GoTo ERR_H
    
  CheckNumericInt Text_Diskr_T, "Ширина", bFocus
  CheckNumericInt Text_Diskr_N, "Число точек", bFocus
  
  CheckNumeric Text_St_Ampl, "Амплитуда", bFocus
  CheckNumeric Text_St_T, "Период", bFocus
  
  CheckNumeric Text_G_Ampl, "Амплитуда", bFocus
  CheckNumeric Text_G_To, "To", bFocus
  CheckNumeric Text_G_Sigma, "Сигма", bFocus
    
  
  If Int(Text_Diskr_T.Text) <= 0 Then ReportError Text_Diskr_T, "Ширина > 0", bFocus
  If Int(Text_Diskr_N.Text) <= 0 Then ReportError Text_Diskr_N, "Число точек > 0", bFocus
  
  If CDbl(Text_St_T.Text) <= 0 Then ReportError Text_St_T, "T > 0", bFocus
  
  If CDbl(Text_G_Sigma.Text) <= 0 Then ReportError Text_G_Sigma, "Sigma > 0", bFocus
  
  ValidateAll_2 = True
  Exit Function
  
ERR_H:
  ValidateAll_2 = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function

Public Function ValidateAll_3(ByVal bFocus As Boolean) As Boolean
  On Error GoTo ERR_H
        
  CheckNumericInt Text_N_4, "Число точек", bFocus
  
  CheckNumeric Text_X1_4, "X1", bFocus
  CheckNumeric Text_X2_4, "X2", bFocus
  
  CheckNumeric Text_Sg1_4, "Sg1", bFocus
  CheckNumeric Text_Sg2_4, "Sg2", bFocus
  
  If Int(Text_N_4.Text) <= 0 Then ReportError Text_N_4, "Число точек > 0", bFocus
    
  If CDbl(Text_X1_4.Text) > CDbl(Text_X2_4.Text) Then ReportError Text_X1_4, "X1 < X2", bFocus
  
  If CDbl(Text_Sg1_4.Text) <= 0 Then ReportError Text_Sg1_4, "Sg1 > 0", bFocus
  If CDbl(Text_Sg2_4.Text) <= 0 Then ReportError Text_Sg2_4, "Sg2 > 0", bFocus
  
  ValidateAll_3 = True
  Exit Function
  
ERR_H:
  ValidateAll_3 = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function

Public Function ValidateAll_4(ByVal bFocus As Boolean) As Boolean
  On Error GoTo ERR_H
                      
  CheckNumericInt Text_Nhc_5, "Число помех", bFocus
  
  CheckNumeric Text_Ampl_5, "Амплитуда", bFocus
  CheckNumeric Text_To_5, "To", bFocus
  
  CheckNumeric Text_Sigma_5, "Sigma", bFocus
  CheckNumeric Text_B_5, "B", bFocus
  
  If Int(Text_Nhc_5.Text) <= 0 Then ReportError Text_Nhc_5, "Число помех > 0", bFocus
  If CDbl(Text_Sigma_5.Text) <= 0 Then ReportError Text_Sigma_5, "Sigma > 0", bFocus
  If CDbl(Text_B_5.Text) <= 0 Then ReportError Text_B_5, "B > 0", bFocus
  
  ValidateAll_4 = True
  Exit Function
  
ERR_H:
  ValidateAll_4 = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function


Public Function ValidateAll_5(ByVal bFocus As Boolean) As Boolean
  On Error GoTo ERR_H
                                          
  CheckNumericInt Text_N_6, "Число  точек", bFocus
  CheckNumeric Text_T_6, "Ширина", bFocus
  
  CheckNumeric Text_Ampl_6, "Амплитуда", bFocus
  CheckNumeric Text_To_6, "To", bFocus
  CheckNumeric Text_Sigma_6, "Sigma", bFocus
  
  CheckNumeric Text_Ampl2_6, "Амплитуда", bFocus
  CheckNumeric Text_To2_6, "To", bFocus
  CheckNumeric Text_Sigma2_6, "Sigma", bFocus
  
  
  If Int(Text_N_6.Text) <= 0 Then ReportError Text_N_6, "Число точек > 0", bFocus
  
  If CDbl(Text_Sigma_6.Text) <= 0 Then ReportError Text_Sigma_6, "Sigma > 0", bFocus
  If CDbl(Text_Sigma2_6.Text) <= 0 Then ReportError Text_Sigma2_6, "Sigma2 > 0", bFocus
    
  ValidateAll_5 = True
  Exit Function
  
ERR_H:
  ValidateAll_5 = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function


Public Function ValidateAll_6(ByVal bFocus As Boolean) As Boolean
  On Error GoTo ERR_H
                                                                                  
                                          
  CheckNumericInt Text_N_7, "Число  точек", bFocus
  CheckNumeric Text_T_7, "Ширина", bFocus
  
  CheckNumeric Text_A2_7, "Амплитуда", bFocus
  CheckNumeric Text_T2_7, "To", bFocus
  CheckNumeric Text_S2_7, "Sigma", bFocus
  
  CheckNumeric Text_A1_7, "Амплитуда", bFocus
  CheckNumeric Text_T1_7, "To", bFocus
  CheckNumeric Text_S1_7, "Sigma", bFocus
  
  CheckNumeric Text_Alpha1_7, "Alpha", bFocus
  CheckNumeric Text_Step1_7, "Step", bFocus
  
  CheckNumeric Text_Alpha2_7, "Alpha", bFocus
  CheckNumeric Text_Step2_7, "Step", bFocus
  
  If Int(Text_N_7.Text) <= 0 Then ReportError Text_N_7, "Число точек > 0", bFocus
  
  If CDbl(Text_S1_7.Text) <= 0 Then ReportError Text_S1_7, "Sigma > 0", bFocus
  If CDbl(Text_S2_7.Text) <= 0 Then ReportError Text_S2_7, "Sigma2 > 0", bFocus
  
  If CDbl(Text_Step1_7.Text) <= 0 Then ReportError Text_Step1_7, "Step1 > 0", bFocus
  If CDbl(Text_Step2_7.Text) <= 0 Then ReportError Text_Step2_7, "Step2 > 0", bFocus
    
  ValidateAll_6 = True
  Exit Function
  
ERR_H:
  ValidateAll_6 = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function

Public Function ValidateAll_7(ByVal bFocus As Boolean) As Boolean
  On Error GoTo ERR_H
                                                                                    
  
  CheckNumericInt Text_N_8, "Число  точек", bFocus
  CheckNumericInt Text_Np_8, "Число  помех", bFocus
  CheckNumeric Text_T_8, "Ширина", bFocus
  
  CheckNumeric Text_A_8, "Амплитуда", bFocus
  CheckNumeric Text_To_8, "To", bFocus
  CheckNumeric Text_Sigma_8, "Sigma", bFocus
  
  CheckNumeric Text_Nm_8, "Медиана", bFocus
  CheckNumeric Text_Delta_8, "Порог", bFocus
  
  
  If Int(Text_N_8.Text) <= 0 Then ReportError Text_N_8, "Число точек > 0", bFocus
  If Int(Text_Np_8.Text) <= 0 Then ReportError Text_Np_8, "Число помех > 0", bFocus
  
  If CDbl(Text_Sigma_8.Text) <= 0 Then ReportError Text_Sigma_8, "Sigma > 0", bFocus
  
  
  If CDbl(Text_Delta_8.Text) <= 0 Then ReportError Text_Delta_8, "Порог > 0", bFocus
  If CDbl(Text_Nm_8.Text) <= 0 Then ReportError Text_Nm_8, "Медиана > 0", bFocus
    
  ValidateAll_7 = True
  Exit Function
  
ERR_H:
  ValidateAll_7 = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function


Private Sub Option_Gauss_Validate(Cancel As Boolean)
  Debug.Print "Option_Gauss_Validate"
  Cancel = Not ValidateAll_0(False)
  If Not Cancel Then Cancel = Not Form_Present.ValidateAll()
End Sub

Private Sub Option_SI_Click()
  Debug.Print "Option_SI_Click"
  LoadItemToForm arrOfItems(0).Item(1), EllCnt(0)
End Sub

Private Sub Option_SI_Validate(Cancel As Boolean)
  Debug.Print "Option_SI_Validate"
  Cancel = Not ValidateAll_0(False)
  If Not Cancel Then Cancel = Not Form_Present.ValidateAll()
End Sub

Private Sub Option_SS_Click()
  Debug.Print "Option_SS_Click"
  LoadItemToForm arrOfItems(0).Item(2), EllCnt(0)
End Sub

Private Sub Option_SS_Validate(Cancel As Boolean)
  Debug.Print "Option_SS_Validate"
  Cancel = Not ValidateAll_0(False)
  If Not Cancel Then Cancel = Not Form_Present.ValidateAll()
End Sub

Private Sub TabRight_Click()
    'vsElastic2.BackColor = TabRight.TabColor(TabRight.CurrTab)
    If TabRight.CurrTab = -1 Then Exit Sub
    OpenChapter Val(TabRight.CurrTab)
End Sub


Private Sub TabRight_KeyDown(KeyCode As Integer, Shift As Integer)
  Debug.Print
End Sub

Private Sub TabRight_Switch(OldTab As Integer, NewTab As Integer, Cancel As Integer)
  TabRight.TabColor(OldTab) = RGB(220, 184, 130)
  TabRight.TabColor(NewTab) = RGB(228, 192, 137)
  EllCnt(OldTab).BackColor = RGB(220, 184, 130)
  EllCnt(NewTab).BackColor = RGB(228, 192, 137)
  
  SetContainedBkGnds EllCnt(OldTab), RGB(220, 184, 130)
  SetContainedBkGnds EllCnt(NewTab), RGB(228, 192, 137)
  
  'MkLoadToForm
End Sub

Private Sub TabsLeft_Click()
    CloseChapter Val(TabsLeft.CurrTab)
End Sub



Private Sub TabsLeft_KeyDown(KeyCode As Integer, Shift As Integer)
  Debug.Print
End Sub

Private Sub VideoSoftElastic1Fix_KeyDown(KeyCode As Integer, Shift As Integer)
  Debug.Print
End Sub

Private Sub vsInForm1_ClickLButton(Button As Integer)
  Select Case Button
    Case 0
      'Dim lMnu As Long
      'lMnu = GetSystemMenu(Form1.hwnd, 0)
      'TrackPopupMenu lMnu, TPM_LEFTALIGN, Me.Left, Me.Top, 0, Me.hwnd, 0
  End Select
End Sub

Private Sub vsInForm1_ClickRButton(Button As Integer)
  Select Case Button
    Case 0
      'PostQuitMessage 0
      Unload Me
    Case 1
      vsInForm1_DblClickCaption
    Case 2
      WindowState = vbMinimized
      Caption = vsInForm1.Caption
  End Select
End Sub

Private Sub vsInForm1_DblClickCaption()
 If WindowState = vbNormal Then
   WindowState = vbMaximized
 Else
   WindowState = vbNormal
 End If
End Sub

Private Sub InitItems()
  Dim l As Long
  For l = LBound(arrOfItems) To UBound(arrOfItems)
    Set arrOfItems(l) = New Collection
  Next l
    
  With arrOfItems(0)
    .Add New CGItem.CStepGen
    .Add New CGItem.CStep2Gen
    .Add New CGItem.CGaussGen
  End With
  
  arrOfItems(1).Add New CGItem.CRestoreGen
  arrOfItems(2).Add New CGItem.CFurie
  arrOfItems(3).Add New CGItem.CConvolution
  arrOfItems(4).Add New CGItem.CFlt_BatWorth
  arrOfItems(5).Add New CGItem.CAdaptFlt
  arrOfItems(6).Add New CGItem.CFindH
  arrOfItems(7).Add New CGItem.CSmooth
End Sub

Public Sub MkLoadToForm()
  If arrOfItems(TabRight.CurrTab).Count > 0 Then _
    LoadItemToForm arrOfItems(TabRight.CurrTab).Item(GetCurTabOption), EllCnt(TabRight.CurrTab)
End Sub


Private Sub LoadItemToForm(ByVal idfItem As IDescrFunc2, ByVal ctlContainer As Control)
    
  Dim colControls As Collection
  Set colControls = GetContainedControls(ctlContainer)
  idfItem.GetParameters colControls
  
  Dim hints As CGItem.DrawHints
  hints = idfItem.hints
  
  LoadValueToControl Form_Present.Txt_Prec_X, hints.iPrecX
  LoadValueToControl Form_Present.Txt_Prec_Y, hints.iPrecY
  
  LoadValueToControl Form_Present.Txt_Step_X, hints.dStepX
  LoadValueToControl Form_Present.Txt_Step_Y, hints.dStepY
  
  LoadValueToControl Form_Present.Txt_X1, hints.dX1
  LoadValueToControl Form_Present.Txt_Y1, hints.dY1
  LoadValueToControl Form_Present.Txt_X2, hints.dX2
  LoadValueToControl Form_Present.Txt_Y2, hints.dY2
  
  LoadValueToControl Form_Present.Txt_Sample_X1, hints.dSampleX1
  LoadValueToControl Form_Present.Txt_Sample_X2, hints.dSampleX2
  
  LoadValueToControl Form_Present.Txt_Sample_Step, hints.dSampleStep
  
  Form_Present.Option_Auto.Value = hints.bMode
  Form_Present.Option_Manual.Value = Not hints.bMode
  
  Form_Present.Check_Need_0X.Value = IIf(hints.bNullX, 1, 0)
  Form_Present.Check_Need_0Y.Value = IIf(hints.bNullY, 1, 0)
    
End Sub

Private Sub LoadItemFromForm(ByVal idfItem As IDescrFunc2, ByVal ctlContainer As Control)

  Dim colControls As Collection
  Set colControls = GetContainedControls(ctlContainer)
  idfItem.SetParameters colControls
  
  Dim hints As CGItem.DrawHints
    
  ReadValueFromControl Form_Present.Txt_Prec_X, hints.iPrecX
  ReadValueFromControl Form_Present.Txt_Prec_Y, hints.iPrecY
  
  ReadValueFromControl Form_Present.Txt_Step_X, hints.dStepX
  ReadValueFromControl Form_Present.Txt_Step_Y, hints.dStepY
  
  ReadValueFromControl Form_Present.Txt_X1, hints.dX1
  ReadValueFromControl Form_Present.Txt_Y1, hints.dY1
  ReadValueFromControl Form_Present.Txt_X2, hints.dX2
  ReadValueFromControl Form_Present.Txt_Y2, hints.dY2
  
  ReadValueFromControl Form_Present.Txt_Sample_X1, hints.dSampleX1
  ReadValueFromControl Form_Present.Txt_Sample_X2, hints.dSampleX2
  
  ReadValueFromControl Form_Present.Txt_Sample_Step, hints.dSampleStep
  
  hints.bMode = Form_Present.Option_Auto.Value
    
  hints.bNullX = IIf(Form_Present.Check_Need_0X.Value = 1, True, False)
  hints.bNullY = IIf(Form_Present.Check_Need_0Y.Value = 1, True, False)
  
  idfItem.hints = hints
End Sub

Public Sub MkLoadFromForm()
  If arrOfItems(TabRight.CurrTab).Count > 0 Then _
    LoadItemFromForm arrOfItems(TabRight.CurrTab).Item(GetCurTabOption), EllCnt(TabRight.CurrTab)
End Sub

Public Function GetCurTabOption() As Long
  Select Case TabRight.CurrTab
    Case 0
      GetCurTabOption = IIf(Option_SI.Value, 1, IIf(Option_SS.Value, 2, 3))
    Case 1, 2, 3, 4, 5, 6, 7
      GetCurTabOption = 1
  End Select
End Function

Public Sub MakeGrapics()
  Form_Present.LineGraph1.Series.Clear
  Form_Present.LineGraph1.Refresh
  Form_Present.LineGraph1.GraphTitle = "<empty>"
  
  If arrOfItems(TabRight.CurrTab).Count < 1 Then
    MsgBox "Нет графиков", vbInformation Or vbOKOnly, "Предупреждение"
    Exit Sub
  End If
  
  Dim idfItem As CGItem.IDescrFunc2
  Set idfItem = arrOfItems(TabRight.CurrTab).Item(GetCurTabOption)
  Dim hints As CGItem.DrawHints
  hints = idfItem.hints
  
  Form_Present.LineGraph1.DoUpdate = False
  On Error GoTo L_ERRH
  
  Form_Present.LineGraph1.GraphTitle = idfItem.NameOfSuject
  idfItem.Build
  
  If hints.bMode Then
    SetupGraph idfItem, Form_Present.LineGraph1
  Else
    With Form_Present.LineGraph1
      .DecimalPlaces = hints.iPrecX
      .IncrementHorz = hints.dStepX
      .IncrementVert = hints.dStepY
      .SetXValues hints.dX1, hints.dX2
      .SetYValues hints.dY1, hints.dY2
      .DefineIncrement = False
    End With
  End If
    
  
  Dim collGr As Collection
  Set collGr = idfItem.Graphics
  
  Dim grItem As CGItem.GraphItem
  For Each grItem In collGr
    LoadGraphics grItem, Form_Present.LineGraph1
  Next grItem
  
  Form_Present.LineGraph1.DoUpdate = True
  Exit Sub
  
L_ERRH:
  Form_Present.LineGraph1.DoUpdate = True
  MsgBox Err.Description, vbExclamation Or vbOKOnly, "Ошибка"
End Sub

Public Sub LoadGraphics(ByVal gi As GraphItem, ByVal alg As ActiveLineGraph.LineGraph)

  With gi
    Dim elem As lngrfSeriesEl
    Set elem = alg.Series.Add(.Name, .Color)
      
    If Not IsArray(.arrPoints) Then Exit Sub
    On Error Resume Next
    If UBound(.arrPoints) - LBound(.arrPoints) + 1 < 1 Or Err.Number <> 0 Then
      Exit Sub
    End If
     
    On Error GoTo 0
  
    Dim l1 As Long, l2 As Long
    l1 = LBound(.arrPoints): l2 = UBound(.arrPoints)
      
    Dim i As Long
    For i = l1 To l2
      If .arrPoints(i).B Then _
        elem.Points.Add .arrPoints(i).x, .arrPoints(i).y
    Next i
    
  End With
End Sub

Public Sub SetupGraph(ByVal idfItem As CGItem.IDescrFunc2, ByVal alg As ActiveLineGraph.LineGraph)

  Dim collGr As Collection
  Set collGr = idfItem.Graphics
  Dim MinX As Double
  Dim MinY As Double
  Dim MaxX As Double
  Dim MaxY As Double
  
  MinX = 1.79769313486231E+308
  MinY = 1.79769313486231E+308
  MaxX = -1.79769313486231E+308
  MaxY = -1.79769313486231E+308
    
  Dim grItem As CGItem.GraphItem
  
  For Each grItem In collGr
    With grItem
      If .MinX < MinX Then MinX = .MinX
      If .MaxX > MaxX Then MaxX = .MaxX
      
      If .MinY < MinY Then MinY = .MinY
      If .MaxY > MaxY Then MaxY = .MaxY
    End With
  Next grItem
  
  If idfItem.hints.bNullX Then
    If MinX > 0 Then
     MinX = 0
    ElseIf MaxX < 0 Then
     MaxX = 0
    End If
  End If
  
  If idfItem.hints.bNullY Then
    If MinY > 0 Then
      MinY = 0
    ElseIf MaxY < 0 Then
      MaxY = 0
    End If
  End If
    
  With alg
    .IncrementHorz = Abs(MaxX - MinX) / 10
    .IncrementVert = Abs(MaxY - MinY) / 10
    .SetXValues MinX, MaxX
    .SetYValues MinY, MaxY
    .DecimalPlaces = 2
    .DefineIncrement = False
  End With
End Sub
