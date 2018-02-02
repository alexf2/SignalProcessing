VERSION 5.00
Object = "{0A732C25-3120-11D2-8929-00A0241E587F}#6.0#0"; "GRAPHL~1.OCX"
Object = "{2037E3AD-18D6-101C-8158-221E4B551F8E}#5.0#0"; "Vsocx32.ocx"
Object = "{D2FFAA40-074A-11D1-BAA2-444553540000}#3.0#0"; "VsVIEW3.ocx"
Begin VB.Form Form_Present 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Form1"
   ClientHeight    =   6945
   ClientLeft      =   165
   ClientTop       =   420
   ClientWidth     =   7575
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   6945
   ScaleWidth      =   7575
   StartUpPosition =   3  'Windows Default
   Begin VsOcxLib.VideoSoftElastic VideoSoftElastic2 
      Height          =   2130
      Left            =   0
      TabIndex        =   18
      TabStop         =   0   'False
      Top             =   4815
      Width           =   7575
      _Version        =   327680
      _ExtentX        =   13361
      _ExtentY        =   3757
      _StockProps     =   70
      ConvInfo        =   1418783674
      BackColor       =   8567004
      Align           =   2
      AutoSizeChildren=   7
      BorderWidth     =   0
      BevelOuter      =   0
      Begin VB.TextBox Txt_Sample_Step 
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
         Left            =   5842
         TabIndex        =   15
         Text            =   "1"
         Top             =   1350
         Width           =   855
      End
      Begin VB.TextBox Txt_Sample_X2 
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
         Left            =   4237
         TabIndex        =   14
         Text            =   "10"
         Top             =   1350
         Width           =   855
      End
      Begin VB.TextBox Txt_Sample_X1 
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
         Left            =   3172
         TabIndex        =   13
         Text            =   "-10"
         Top             =   1350
         Width           =   855
      End
      Begin VsOcxLib.VideoSoftElastic Els_Refresh 
         Height          =   360
         Left            =   0
         TabIndex        =   16
         Top             =   1770
         Width           =   7575
         _Version        =   327680
         _ExtentX        =   13361
         _ExtentY        =   635
         _StockProps     =   70
         Caption         =   "Обновить графики"
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
         Align           =   2
         CaptionPos      =   4
         Style           =   3
         CornerColor     =   -2147483633
         ShowOutline     =   -1  'True
      End
      Begin VsOcxLib.VideoSoftElastic VideoSoftElastic3 
         Height          =   1065
         Left            =   2175
         TabIndex        =   27
         TabStop         =   0   'False
         Top             =   60
         Width           =   45
         _Version        =   327680
         _ExtentX        =   79
         _ExtentY        =   1879
         _StockProps     =   70
         ConvInfo        =   1418783674
         BorderWidth     =   1
         ChildSpacing    =   0
         BevelOuter      =   5
         BevelInnerWidth =   0
         BevelOuterWidth =   1
      End
      Begin VB.TextBox Txt_Step_Y 
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
         Left            =   3615
         TabIndex        =   8
         Text            =   "1"
         Top             =   765
         Width           =   855
      End
      Begin VB.TextBox Txt_Prec_X 
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
         Left            =   2385
         TabIndex        =   5
         Text            =   "0"
         Top             =   390
         Width           =   855
      End
      Begin VB.TextBox Txt_Prec_Y 
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
         Height          =   330
         Left            =   2385
         TabIndex        =   6
         Text            =   "0"
         Top             =   765
         Width           =   855
      End
      Begin VB.CheckBox Check_Need_0Y 
         BackColor       =   &H0082B8DC&
         Caption         =   "Показать 0 по Y"
         Height          =   285
         Left            =   150
         TabIndex        =   4
         Top             =   720
         Width           =   1785
      End
      Begin VB.CheckBox Check_Need_0X 
         BackColor       =   &H0082B8DC&
         Caption         =   "Показать 0 по X"
         Height          =   285
         Left            =   150
         TabIndex        =   3
         Top             =   390
         Width           =   1785
      End
      Begin VB.TextBox Txt_Y2 
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
         Left            =   6615
         TabIndex        =   12
         Text            =   "10"
         Top             =   765
         Width           =   855
      End
      Begin VB.TextBox Txt_Y1 
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
         Left            =   5145
         TabIndex        =   11
         Text            =   "-10"
         Top             =   765
         Width           =   855
      End
      Begin VB.TextBox Txt_X2 
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
         Left            =   6615
         TabIndex        =   10
         Text            =   "10"
         Top             =   390
         Width           =   855
      End
      Begin VB.TextBox Txt_X1 
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
         Left            =   5145
         TabIndex        =   9
         Text            =   "-10"
         Top             =   390
         Width           =   855
      End
      Begin VB.TextBox Txt_Step_X 
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
         Left            =   3615
         TabIndex        =   7
         Text            =   "1"
         Top             =   390
         Width           =   855
      End
      Begin VB.OptionButton Option_Manual 
         Alignment       =   1  'Right Justify
         BackColor       =   &H0082B8DC&
         Caption         =   "Ручные оси"
         ForeColor       =   &H00FF0000&
         Height          =   300
         Left            =   6210
         TabIndex        =   2
         Top             =   15
         Width           =   1290
      End
      Begin VB.OptionButton Option_Auto 
         BackColor       =   &H0082B8DC&
         Caption         =   "Автоматические оси"
         ForeColor       =   &H00FF0000&
         Height          =   300
         Left            =   60
         TabIndex        =   1
         Top             =   15
         Value           =   -1  'True
         Width           =   2070
      End
      Begin VsOcxLib.VideoSoftElastic VideoSoftElastic5 
         Height          =   45
         Left            =   67
         TabIndex        =   29
         TabStop         =   0   'False
         Top             =   1200
         Width           =   7440
         _Version        =   327680
         _ExtentX        =   13123
         _ExtentY        =   79
         _StockProps     =   70
         ConvInfo        =   1418783674
         BorderWidth     =   1
         ChildSpacing    =   0
         BevelOuter      =   5
         BevelInnerWidth =   0
         BevelOuterWidth =   1
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Шаг"
         Height          =   285
         Left            =   5392
         TabIndex        =   30
         Top             =   1373
         Width           =   450
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Исходная выборка: X1 - X2:"
         Height          =   285
         Left            =   877
         TabIndex        =   28
         Top             =   1380
         Width           =   2115
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Y"
         Height          =   285
         Left            =   3315
         TabIndex        =   26
         Top             =   788
         Width           =   240
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "X"
         Height          =   285
         Left            =   3315
         TabIndex        =   25
         Top             =   413
         Width           =   240
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Точность"
         Height          =   285
         Left            =   2385
         TabIndex        =   24
         Top             =   60
         Width           =   885
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "Y2"
         Height          =   285
         Left            =   6285
         TabIndex        =   23
         Top             =   788
         Width           =   285
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "X2"
         Height          =   285
         Left            =   6300
         TabIndex        =   22
         Top             =   413
         Width           =   285
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Y1"
         Height          =   285
         Left            =   4800
         TabIndex        =   21
         Top             =   788
         Width           =   285
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "X1"
         Height          =   285
         Left            =   4800
         TabIndex        =   20
         Top             =   413
         Width           =   285
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Шаг сетки"
         Height          =   285
         Left            =   3630
         TabIndex        =   19
         Top             =   60
         Width           =   885
      End
   End
   Begin VsOcxLib.VideoSoftElastic VideoSoftElastic1 
      Height          =   4815
      Left            =   0
      TabIndex        =   17
      TabStop         =   0   'False
      Top             =   0
      Width           =   7575
      _Version        =   327680
      _ExtentX        =   13361
      _ExtentY        =   8493
      _StockProps     =   70
      ConvInfo        =   1418783674
      BackColor       =   8567004
      Align           =   5
      AutoSizeChildren=   1
      BorderWidth     =   4
      ChildSpacing    =   0
      BevelInner      =   8
      BevelOuter      =   0
      BevelOuterWidth =   0
      Begin ActiveLineGraph.LineGraph LineGraph1 
         Height          =   4695
         Left            =   60
         Top             =   60
         Width           =   7455
         _ExtentX        =   13150
         _ExtentY        =   8281
         BackColor       =   0
         TextColor       =   49152
         GridColor       =   36864
         GridMode        =   2
         ShowMarkers     =   0   'False
         XAxisName       =   "Ось X"
         YAxisName       =   "Ось Y"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         GraphTitle      =   "<empty>"
      End
   End
   Begin vsViewLib.vsInForm vsInForm1 
      Height          =   480
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   480
      _Version        =   196608
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   6
      Caption         =   "Результаты"
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
      ButtonsRight    =   2
      PictLeft0       =   "Form_Present.frx":0000
      PictRight0      =   "Form_Present.frx":010A
      PictRight1      =   "Form_Present.frx":0214
   End
End
Attribute VB_Name = "Form_Present"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public Function ValidateAll() As Boolean
  On Error GoTo ERR_H
  
  CheckNumericInt Txt_Prec_X, "Точность X"
  CheckNumericInt Txt_Prec_Y, "Точность Y"
  CheckNumeric Txt_Step_X, "Шаг сетки X"
  CheckNumeric Txt_Step_Y, "Шаг сетки Y"
  CheckNumeric Txt_X1, "X1"
  CheckNumeric Txt_X2, "X2"
  CheckNumeric Txt_Y1, "Y1"
  CheckNumeric Txt_Y2, "Y2"
  CheckNumeric Txt_Sample_X1, "X1 выборки"
  CheckNumeric Txt_Sample_X2, "X2 выборки"
  CheckNumeric Txt_Sample_Step, "Шаг выборки"
  
  If CDbl(Txt_Prec_X.Text) < 0 Then ReportError Txt_Prec_X, "Точность X >= 0"
  
  If CDbl(Txt_Prec_Y.Text) < 0 Then ReportError Txt_Prec_Y, "Точность Y >= 0"
  
  If CDbl(Txt_Step_X.Text) <= 0 Then ReportError Txt_Step_X, "Шаг сетки X > 0"
  
  If CDbl(Txt_Step_Y.Text) <= 0 Then ReportError Txt_Step_Y, "Шаг сетки Y > 0"
  
  If CDbl(Txt_X1.Text) >= CDbl(Txt_X2.Text) Then ReportError Txt_X1, "X1 < X2"
  
  If CDbl(Txt_Y1.Text) >= CDbl(Txt_Y2.Text) Then ReportError Txt_Y1, "Y1 < Y2"
  
  If CDbl(Txt_Sample_X1.Text) >= CDbl(Txt_Sample_X2.Text) Then ReportError Txt_Sample_X1, "X1 выборки < X2 выборки"
  
  If CDbl(Txt_Sample_Step.Text) <= 0 Then ReportError Txt_Sample_Step, "Шаг выборки > 0"
  
  ValidateAll = True
  Exit Function
  
ERR_H:
  ValidateAll = False
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, Err.Source
End Function

Private Sub Els_Refresh_Click()
  If Not ValidateAll Then Exit Sub
  If Not MainForm.ValidateAll_x(True) Then Exit Sub
  On Error GoTo L_ERRH
  MainForm.MkLoadFromForm
  MainForm.MakeGrapics
  Exit Sub
L_ERRH:
  MsgBox Err.Description, vbApplicationModal Or vbExclamation Or vbOKOnly, "Ошибка"
End Sub

Private Sub vsInForm1_ClickLButton(Button As Integer)
  Select Case Button
    Case 0
      'Dim lMnu As Long
      'lMnu = GetSystemMenu(Form1.hwnd, 0)
      'TrackPopupMenu lMnu, TPM_LEFTALIGN, Me.Left, Me.Top, 0, Me.hwnd, 0
      Form_Opt.Check_Grid.Value = IIf(LineGraph1.GridMode = grdLines, 1, 0)
      Form_Opt.Check_Labels.Value = IIf(LineGraph1.ShowMarkers, 1, 0)
      
'      Form_Opt.VideoSoftElastic1.ButtonState = 0
'      Form_Opt.VideoSoftElastic2.ButtonState = 0
'      Form_Opt.VideoSoftElastic4.ButtonState = 0
      
      Form_Opt.Show vbModal, Me
      
      DoEvents
      
      If Form_Opt.Result Then
        LineGraph1.GridMode = IIf(Form_Opt.Check_Grid.Value = 1, grdLines, grdDot)
        LineGraph1.ShowMarkers = IIf(Form_Opt.Check_Labels.Value = 1, True, False)
      End If
  End Select
End Sub

Private Sub vsInForm1_ClickRButton(Button As Integer)
  Select Case Button
    Case 0
      vsInForm1_DblClickCaption
    Case 1
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

