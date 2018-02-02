VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 1  'Persistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CStepGen"
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
  PropertyChanged "Apmplitude"
End Property

Public Property Get Ampl() As Double
  Ampl = dAmpl
End Property

Public Property Let T0(ByVal dA As Double)
  dT0 = dA
  PropertyChanged "T0"
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
   .dStepX = 0.5
   .dStepY = 0.5
  
   .dX1 = -1
   .dX2 = 9
   .dY1 = -1
   .dY2 = 6
  
   .dSampleX1 = -10
   .dSampleX2 = 10
   .dSampleStep = 1
  End With
  
  dAmpl = 2
  dT0 = 7
  
  Set collGraph = New Collection
  Dim grIt As New GraphItem
  grIt.Color = RGB(0, 255, 0)
  grIt.Name = "Импульс"
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
  PropertyChanged "Hints"
End Property

Public Sub IDescrFunc2_SetParameters(ByVal colControls As Collection)
  ReadValueFromControl colControls.item("Text_Ampl_SI"), dAmpl
  ReadValueFromControl colControls.item("Text_To_SI"), dT0
End Sub

Public Sub IDescrFunc2_GetParameters(ByVal colControls As Collection)
'Dim vv
'For Each vv In colControls
'  Debug.Print vv.Name
'Next
  LoadValueToControl colControls.item("Text_Ampl_SI"), dAmpl
  LoadValueToControl colControls.item("Text_To_SI"), dT0
End Sub

Public Property Get IDescrFunc2_NameOfSuject() As String
  IDescrFunc2_NameOfSuject = "Одиночный импульс"
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
    
  lCnt = lCnt + 3
  Dim bUse As Boolean
  bUse = True
  
  ReDim arr(0 To (lCnt - 1)) As XYPoint
  'ReDim grIt.arrPoints(0 To (lCnt - 1)) As XYPoint
  lCnt = 0
    
  Dim bIns As Boolean
  bIns = False
  For dX1 = hntHints.dSampleX1 To dX2 Step dStep
    If Not bIns Then
      If Abs(dX1 - dT0) <= dStep And dX1 >= dT0 Then
        'If Abs(dX1 - dT0) > Abs(dX1 + dStep - dT0) Then GoTo L_SKIP
        bIns = True
        
        arr(lCnt).x = dT0
        arr(lCnt).y = 0
        arr(lCnt).b = True
        
        lCnt = lCnt + 1
        
        arr(lCnt).x = dT0
        arr(lCnt).y = dAmpl
        arr(lCnt).b = True
        
        lCnt = lCnt + 1
        
        arr(lCnt).x = dT0
        arr(lCnt).y = 0
        arr(lCnt).b = True
        
        lCnt = lCnt + 1
        
        If dX1 = dT0 Then
          bUse = False
          GoTo L_NEXTX
        End If
      End If
    End If
    
L_SKIP:
    With arr(lCnt)
      .x = dX1
      .y = IDescrFunc2_XtoY(.x, 0)
      .b = True
    End With
    lCnt = lCnt + 1
L_NEXTX:
  Next dX1
    
  lCnt = UBound(arr)
  If bIns Then
    If Not bUse Then
      ReDim Preserve arr(0 To lCnt - 1) As XYPoint
    End If
  Else
    ReDim Preserve arr(0 To lCnt - 3) As XYPoint
  End If
  
  grIt.arrPoints = arr

  grIt.CalcLimits
  
  'DumpXY grIt.arrPoints
End Sub


'Public Sub IDescrFunc2_Build()
'  Dim grIt As GraphItem
'  Set grIt = collGraph.item(1)
'
'  Dim arr(2) As XYPoint
'  With grIt
'    arr(0).x = dT0
'    arr(0).y = 0
'    arr(0).b = True
'
'    arr(1).x = dT0
'    arr(1).y = dAmpl
'    arr(1).b = True
'
'    arr(2).x = dT0
'    arr(2).y = 0
'    arr(2).b = True
'  End With
'
'  GenericBuild Me, 0, grIt
'
'  Dim vvt As Variant
'  vvt = arr
'  Dim vv2() As XYPoint2
'  DumpXY grIt.arrPoints
'  SIGHELPERLib.InsertPoints grIt.arrPoints, vvt, vv2
'  DumpXY grIt.arrPoints
'
'  grIt.arrPoints = ConvertData(vv2)
'  DumpXY grIt.arrPoints
'
'  grIt.CalcLimits
'
'End Sub


Friend Function ConvertData(xy2() As XYPoint2) As XYPoint()
  On Error Resume Next
  If UBound(xy2) - LBound(xy2) + 1 < 1 Or Err.Number <> 0 Then
    Dim tmp() As XYPoint
    ConvertData = tmp
    Exit Function
  End If
     
  On Error GoTo 0
  
  Dim l1 As Long, l2 As Long
  l1 = LBound(xy2): l2 = UBound(xy2)
  
  ReDim xy(l2) As XYPoint
  
  Dim i As Long
  For i = l1 To l2
    xy(i).x = xy2(i).x
    xy(i).y = xy2(i).y
    xy(i).b = xy2(i).b
  Next i
  
  ConvertData = xy
  
  Exit Function
ERR_H:
End Function


Public Function IDescrFunc2_XtoY(ByVal dX As Double, ByVal lIndexFunc As Long) As Double
  If dX = dT0 Then IDescrFunc2_XtoY = dAmpl _
  Else IDescrFunc2_XtoY = 0
End Function
