VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 1  'Persistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CStep2Gen"
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
   .bMode = False
   .bNullX = False
   .bNullY = False
   
   .iPrecX = 1
   .iPrecY = 1
   .dStepX = 1
   .dStepY = 1
  
   .dX1 = -5
   .dX2 = 7
   .dY1 = -7
   .dY2 = 7
  
   .dSampleX1 = -10
   .dSampleX2 = 10
   .dSampleStep = 1
  End With
  
  dAmpl = 5
  dT0 = 3
  
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
End Sub

Private Sub Class_WriteProperties(PropBag As PropertyBag)
  PropBag.WriteProperty "Hints", hntHints
  PropBag.WriteProperty "Apmplitude", dAmpl
  PropBag.WriteProperty "T0", dT0
End Sub

Public Property Get IDescrFunc2_Hints() As CGItem.DrawHints
  IDescrFunc2_Hints = hntHints
End Property

Public Property Let IDescrFunc2_Hints(dhHint As CGItem.DrawHints)
  hntHints = dhHint
'  PropertyChanged "Hints"
End Property

Public Sub IDescrFunc2_SetParameters(ByVal colControls As Collection)
  ReadValueFromControl colControls.item("Text_Ampl_SS"), dAmpl
  ReadValueFromControl colControls.item("Text_T_SS"), dT0
End Sub

Public Sub IDescrFunc2_GetParameters(ByVal colControls As Collection)
  LoadValueToControl colControls.item("Text_Ampl_SS"), dAmpl
  LoadValueToControl colControls.item("Text_T_SS"), dT0
End Sub

Public Property Get IDescrFunc2_NameOfSuject() As String
  IDescrFunc2_NameOfSuject = "Ступенчатый сигнал"
End Property

Public Property Get IDescrFunc2_Graphics() As Collection
  Set IDescrFunc2_Graphics = collGraph
End Property

Public Sub IDescrFunc2_Build()
  Dim grIt As GraphItem
  Set grIt = collGraph.item(1)

  Dim dX1 As Double, dX2 As Double, dStep As Double
  dX2 = hntHints.dSampleX2
  dStep = hntHints.dSampleStep
  
  Dim lCnt As Long
  lCnt = 0
  For dX1 = hntHints.dSampleX1 To dX2 Step dStep
    lCnt = lCnt + 1
  Next dX1
    
  lCnt = lCnt + 2
  Dim lCntUse As Long
  lCntUse = 0
  
  ReDim arr(0 To (lCnt - 1)) As XYPoint
  'ReDim grIt.arrPoints(0 To (lCnt - 1)) As XYPoint
  lCnt = 0
      
  Dim iSgn As Integer
  iSgn = Sgn(dAmpl)
  
  Dim dYPriv As Double
  For dX1 = hntHints.dSampleX1 To dX2 Step dStep
    With arr(lCnt)
      .x = dX1
      .y = IDescrFunc2_XtoY(.x, 0)
      dYPriv = .y
      .b = True
    End With
          
    Dim dYNext As Double
    dYNext = IDescrFunc2_XtoY(dX1 + dStep, 0)
    If arr(lCnt).y <> dYNext Then
      lCnt = lCnt + 1
      If iSgn = 1 Then
        If dYNext > dYPriv Then
          arr(lCnt).x = dX1 + dStep
          arr(lCnt).y = dYPriv
          arr(lCnt).b = True
        Else
          arr(lCnt).x = dX1
          arr(lCnt).y = dYNext
          arr(lCnt).b = True
        End If
      Else
        If dYNext > dYPriv Then
          arr(lCnt).x = dX1
          arr(lCnt).y = dYNext
          arr(lCnt).b = True
        Else
          arr(lCnt).x = dX1 + dStep
          arr(lCnt).y = dYPriv
          arr(lCnt).b = True
        End If
      End If
      
      lCntUse = lCntUse + 1
      
    End If
    
    lCnt = lCnt + 1
    
  Next dX1
  
  If lCntUse < 2 Then
    lCnt = UBound(arr)
    ReDim Preserve arr(0 To lCnt - 2 + lCntUse) As XYPoint
  End If
        
  grIt.arrPoints = arr

  grIt.CalcLimits
  
  DumpXY grIt.arrPoints
  
End Sub

Public Function IDescrFunc2_XtoY(ByVal dX As Double, ByVal lIndexFunc As Long) As Double
  If dX >= dT0 And dX <= 2 * dT0 Then IDescrFunc2_XtoY = dAmpl _
  Else IDescrFunc2_XtoY = 0
End Function


