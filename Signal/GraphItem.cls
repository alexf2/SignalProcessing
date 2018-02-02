VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GraphItem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Public Type XYPoint
  x As Double
  y As Double
  b As Boolean
End Type

Public Type DrawHints
  bMode As Boolean 'True - auto, False - manual
  bNullX As Boolean
  bNullY As Boolean
  
  iPrecX As Integer
  iPrecY As Integer
  dStepX As Double
  dStepY As Double
  
  dX1 As Double
  dY1 As Double
  dX2 As Double
  dY2 As Double
  
  dSampleX1 As Double
  dSampleX2 As Double
  
  dSampleStep As Double
End Type

Public Name As String
Public Color As Long
Public MinX As Double
Public MinY As Double
Public MaxX As Double
Public MaxY As Double

Public arrPoints As Variant 'array of XYPoint()
'Public arrPoints() As XYPoint



Public Sub Reset()
  arrPoints = Array()
End Sub

Public Sub CalcLimits()
  If Not IsArray(arrPoints) Then _
    Err.Raise vbObjectError, "CalcLimits", "arrPoints - не массив"
    
  On Error Resume Next
  If UBound(arrPoints) - LBound(arrPoints) + 1 < 1 Or Err.Number <> 0 Then
    MinX = 0: MaxX = 0: MinY = 0: MaxY = 0
    Exit Sub
  End If
     
  On Error GoTo 0
  
  Dim l1 As Long, l2 As Long
  l1 = LBound(arrPoints): l2 = UBound(arrPoints)
  
'  MinX = arrPoints(l1).x: MaxX = MinX
'  MinY = arrPoints(l1).y: MaxY = MinY
      
  MinX = 1.79769313486231E+308
  MinY = 1.79769313486231E+308
  MaxX = -1.79769313486231E+308
  MaxY = -1.79769313486231E+308
  
  Dim i As Long, bFnd As Boolean
  bFnd = False
  For i = l1 To l2
    With arrPoints(i)
      If .b Then
        If .x < MinX Then MinX = .x
        If .x > MaxX Then MaxX = .x
        
        If .y < MinY Then MinY = .y
        If .y > MaxY Then MaxY = .y
        bFnd = True
      End If
    End With
  Next i
  
  If Not bFnd Then
    MinX = 0: MinY = 0: MaxX = 0: MaxY = 0
  End If
  
End Sub

