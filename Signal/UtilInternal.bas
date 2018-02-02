Attribute VB_Name = "UtilInternal"
Option Explicit

Public Function LoadResult(res() As Double, ByVal bWhat As Boolean) As XYPoint()
  If Not IsArray(res) Then Exit Function
  On Error Resume Next
  If UBound(res) - LBound(res) + 1 < 1 Or Err.Number <> 0 Then
    Exit Function
  End If
     
  On Error GoTo 0
  
  ReDim arr(0 To UBound(res) / 3) As XYPoint
  Dim i As Long, j As Long
  j = 0
  For i = LBound(res) To UBound(res) Step 3
    If bWhat Then
      With arr(j)
        .x = res(i): .y = res(i + 1): .b = True
      End With
    Else
      With arr(j)
        .x = res(i): .y = res(i + 2): .b = True
      End With
    End If
    j = j + 1
  Next i
  
  LoadResult = arr
End Function

Public Function LoadResult2(res() As Double) As XYPoint()
  If Not IsArray(res) Then Exit Function
  On Error Resume Next
  If UBound(res) - LBound(res) + 1 < 1 Or Err.Number <> 0 Then
    Exit Function
  End If
     
  On Error GoTo 0
  
  ReDim arr(0 To UBound(res) / 2) As XYPoint
  Dim i As Long, j As Long
  j = 0
  For i = LBound(res) To UBound(res) Step 2
    With arr(j)
      .x = res(i): .y = res(i + 1): .b = True
    End With
    j = j + 1
  Next i
  
  LoadResult2 = arr
End Function

Public Function LoadResult2Scale(res() As Double, ByVal dMX As Double, ByVal dMY As Double) As XYPoint()
  If Not IsArray(res) Then Exit Function
  On Error Resume Next
  If UBound(res) - LBound(res) + 1 < 1 Or Err.Number <> 0 Then
    Exit Function
  End If
     
  On Error GoTo 0
  
  ReDim arr(0 To UBound(res) / 2) As XYPoint
  Dim i As Long, j As Long
  j = 0
  For i = LBound(res) To UBound(res) Step 2
    With arr(j)
      .x = res(i) * dMX: .y = res(i + 1) * dMY: .b = True
    End With
    j = j + 1
  Next i
  
  LoadResult2Scale = arr
End Function


Public Sub GenericBuild(ByVal func As IDescrFunc2, _
  ByVal lInd As Long, _
  ByVal item As GraphItem)
  
  Dim dX1 As Double, dX2 As Double, dStep As Double
  'dX1 = func.Hints.dSampleX1
  dX2 = func.Hints.dSampleX2
  dStep = func.Hints.dSampleStep
  
  Dim lCnt As Long
  lCnt = 0
  For dX1 = func.Hints.dSampleX1 To dX2 Step dStep
    lCnt = lCnt + 1
  Next dX1
    
  
  ReDim arr(0 To (lCnt - 1)) As XYPoint
  lCnt = 0
  
  On Error Resume Next
  For dX1 = func.Hints.dSampleX1 To dX2 Step dStep
    With arr(lCnt)
      .x = dX1
      Err.Clear
      .y = func.XtoY(.x, lInd)
      If Err.Number <> 0 Then .b = False _
      Else .b = True
    End With
    lCnt = lCnt + 1
  Next dX1
  item.arrPoints = arr
End Sub


Public Sub DumpXY(xy As Variant)
  Dim l1 As Long, l2 As Long
  l1 = LBound(xy): l2 = UBound(xy)
  
  Dim i As Long
  For i = l1 To l2
    Debug.Print xy(i).x & "; " & xy(i).y & "; " & xy(i).b
  Next i
End Sub

Public Function Sinc(ByVal d As Double)
  If d = 0 Then
    Sinc = 1
  Else
   Sinc = Sin(d) / d
  End If
End Function
