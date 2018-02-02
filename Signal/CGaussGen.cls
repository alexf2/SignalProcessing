VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 1  'Persistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CGaussGen"
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
  
   .dSampleX1 = 1
   .dSampleX2 = 9
   .dSampleStep = 0.2
  End With
  
  dAmpl = 7
  dT0 = 5
  dSigma = 2
  
  Set collGraph = New Collection
  Dim grIt As New GraphItem
  grIt.Color = RGB(0, 255, 0)
  grIt.Name = "Сигнал"
  collGraph.Add grIt
End Sub

Private Sub Class_ReadProperties(PropBag As PropertyBag)
  hntHints = PropBag.ReadProperty("Hints")
  dAmpl = PropBag.ReadProperty("Apmplitude")
  dT0 = PropBag.ReadProperty("T0")
  dSigma = PropBag.ReadProperty("Sigma")
End Sub

Private Sub Class_WriteProperties(PropBag As PropertyBag)
  PropBag.WriteProperty "Hints", hntHints
  PropBag.WriteProperty "Apmplitude", dAmpl
  PropBag.WriteProperty "T0", dT0
  PropBag.WriteProperty "Sigma", dSigma
End Sub

Public Property Get IDescrFunc2_Hints() As CGItem.DrawHints
  IDescrFunc2_Hints = hntHints
End Property

Public Property Let IDescrFunc2_Hints(dhHint As CGItem.DrawHints)
  hntHints = dhHint
'  PropertyChanged "Hints"
End Property

Public Sub IDescrFunc2_SetParameters(ByVal colControls As Collection)
  ReadValueFromControl colControls.item("Text_Ampl_Gauss"), dAmpl
  ReadValueFromControl colControls.item("Text_T0_Gauss"), dT0
  ReadValueFromControl colControls.item("Text_Sigma_Gauss"), dSigma
End Sub

Public Sub IDescrFunc2_GetParameters(ByVal colControls As Collection)
  LoadValueToControl colControls.item("Text_Ampl_Gauss"), dAmpl
  LoadValueToControl colControls.item("Text_T0_Gauss"), dT0
  LoadValueToControl colControls.item("Text_Sigma_Gauss"), dSigma
End Sub

Public Property Get IDescrFunc2_NameOfSuject() As String
  IDescrFunc2_NameOfSuject = "Сигнал Гаусса"
End Property

Public Property Get IDescrFunc2_Graphics() As Collection
  Set IDescrFunc2_Graphics = collGraph
End Property

Public Sub IDescrFunc2_Build()
  Dim grIt As GraphItem
  Set grIt = collGraph.item(1)
    
  GenericBuild Me, 0, grIt
  grIt.CalcLimits
  
End Sub

Public Function IDescrFunc2_XtoY(ByVal dX As Double, ByVal lIndexFunc As Long) As Double
  Dim dTs As Double
  dTs = dX - dT0
  IDescrFunc2_XtoY = dAmpl * Exp(-(dTs * dTs / dSigma))
End Function




