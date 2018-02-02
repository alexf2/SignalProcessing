VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 1  'Persistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CRestoreGen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Implements IDescrFunc2

Private collGraph As Collection

Private hntHints As CGItem.DrawHints
Private dAmpl As Double
Private dT0 As Double
Private dSigma As Double
Private dF As Double
Private lN As Long

Public Property Let F(ByVal dF_ As Double)
  dF = dF_
'  PropertyChanged "Sigma"
End Property

Public Property Get F() As Double
  F = dF
End Property
Public Property Let N(ByVal lN_ As Long)
  lN = lN_
'  PropertyChanged "Sigma"
End Property

Public Property Get N() As Long
  N = lN
End Property


Public Property Let Sigma(ByVal dA As Double)
  dSigma = dA
'  PropertyChanged "Sigma"
End Property

Public Property Get Sigma() As Double
  Sigma = dSigma
End Property


Public Property Let Ampl(ByVal dA As Double)
  dAmpl = dA
'  PropertyChanged "Apmplitude"
End Property

Public Property Get Ampl() As Double
  Ampl = dAmpl
End Property

Public Property Let T0(ByVal dA As Double)
  dT0 = dA
'  PropertyChanged "T0"
End Property

Public Property Get T0() As Double
  T0 = dT0
End Property


Private Sub Class_InitProperties()
  With hntHints
   .bMode = True
   .bNullX = False
   .bNullY = False
   
   .iPrecX = 2
   .iPrecY = 1
   .dStepX = 0.5
   .dStepY = 1
  
   .dX1 = 0.5
   .dX2 = 9
   .dY1 = -9
   .dY2 = 8
  
   .dSampleX1 = -5
   .dSampleX2 = 5
   .dSampleStep = 0.1
  End With
  
  dAmpl = 5
  dT0 = 0
  dSigma = 5
  
  dF = 7
  lN = 100
  
  Set collGraph = New Collection
  Dim grIt As New GraphItem
  grIt.Color = RGB(0, 255, 0)
  grIt.Name = "Исходный сигнал"
  collGraph.Add grIt
  
  Set grIt = New GraphItem
  grIt.Color = RGB(255, 0, 0)
  grIt.Name = "Восстановленный"
  collGraph.Add grIt
End Sub

Private Sub Class_ReadProperties(PropBag As PropertyBag)
  hntHints = PropBag.ReadProperty("Hints")
  dAmpl = PropBag.ReadProperty("Apmplitude")
  dT0 = PropBag.ReadProperty("T0")
  dSigma = PropBag.ReadProperty("Sigma")
  
  dF = PropBag.ReadProperty("F")
  lN = PropBag.ReadProperty("N")
End Sub

Private Sub Class_WriteProperties(PropBag As PropertyBag)
  PropBag.WriteProperty "Hints", hntHints
  PropBag.WriteProperty "Apmplitude", dAmpl
  PropBag.WriteProperty "T0", dT0
  PropBag.WriteProperty "Sigma", dSigma
  
  PropBag.WriteProperty "F", dF
  PropBag.WriteProperty "N", lN
End Sub

Public Property Get IDescrFunc2_Hints() As CGItem.DrawHints
  IDescrFunc2_Hints = hntHints
End Property

Public Property Let IDescrFunc2_Hints(dhHint As CGItem.DrawHints)
  hntHints = dhHint
'  PropertyChanged "Hints"
End Property

Public Sub IDescrFunc2_SetParameters(ByVal colControls As Collection)
  ReadValueFromControl colControls.item("Text_Ampl_G2"), dAmpl
  ReadValueFromControl colControls.item("Text_T0_G2"), dT0
  ReadValueFromControl colControls.item("Text_Sigma_G2"), dSigma
  
  ReadValueFromControl colControls.item("Text_F_G2"), dF
  ReadValueFromControl colControls.item("Text_Cnt_G2"), lN
End Sub

Public Sub IDescrFunc2_GetParameters(ByVal colControls As Collection)
  LoadValueToControl colControls.item("Text_Ampl_G2"), dAmpl
  LoadValueToControl colControls.item("Text_T0_G2"), dT0
  LoadValueToControl colControls.item("Text_Sigma_G2"), dSigma
  
  LoadValueToControl colControls.item("Text_F_G2"), dF
  LoadValueToControl colControls.item("Text_Cnt_G2"), lN
End Sub

Public Property Get IDescrFunc2_NameOfSuject() As String
  IDescrFunc2_NameOfSuject = "Восстановление сигнала"
End Property

Public Property Get IDescrFunc2_Graphics() As Collection
  Set IDescrFunc2_Graphics = collGraph
End Property

Public Sub IDescrFunc2_Build()
  Dim grIt As GraphItem
  Set grIt = collGraph.item(1)
    
  GenericBuild Me, 0, grIt
  grIt.CalcLimits
  
  Set grIt = collGraph.item(2)
  'GenericBuild Me, 1, grIt
  
  Dim lX1 As Long, lX2 As Long
  lX1 = -lN / 2: lX2 = lN / 2
  If (lN Mod 2) <> 0 Then lX2 = lX2 + 1
  
  Dim lCnt As Long
  lCnt = 0
  Dim dX1 As Double, dX2 As Double
  Dim dhX1 As Double, dhX2 As Double, dhStep As Double
  dhX1 = hntHints.dSampleX1: dhX2 = hntHints.dSampleX2
  dhStep = hntHints.dSampleStep
  For dX1 = dhX1 To dhX2 Step dhStep
    lCnt = lCnt + 1
  Next dX1
    
  ReDim arr(0 To (lCnt - 1)) As XYPoint
  lCnt = 0
  For dX1 = dhX1 To dhX2 Step dhStep
    With arr(lCnt)
      .x = dX1
      .y = 0
      Dim l As Long, dT As Double
      For l = lX1 To lX2 - 1
        dT = 2# * PI * dF * (dX1 - l / (2 * dF))
        .y = .y + IDescrFunc2_XtoY(l * dhStep, 0) * Sinc(dT)
      Next l
      .b = True
    End With
    lCnt = lCnt + 1
  Next dX1
    
        
  grIt.arrPoints = arr
  
  grIt.CalcLimits
  
End Sub


Public Function IDescrFunc2_XtoY(ByVal dX As Double, ByVal lIndexFunc As Long) As Double
  If lIndexFunc = 0 Then
    Dim dTs As Double
    dTs = dX - dT0
    IDescrFunc2_XtoY = dAmpl * Exp(-(dTs * dTs / dSigma))
  Else
  End If
End Function




