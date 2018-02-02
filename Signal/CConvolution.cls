VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 1  'Persistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CConvolution"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Implements IDescrFunc2

Private collGraph As Collection

Private hntHints As CGItem.DrawHints

Public A As Double
Public b As Double
Public N As Long

Public SgU As Double
Public SgH As Double

Public ShowIn As Boolean
Public ShowImp As Boolean

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
  
  A = -4
  b = 4
  N = 128

  SgU = 5
  SgH = 0.5
  
  ShowIn = True
  ShowImp = True
  
  Set collGraph = New Collection
  Dim grIt As New GraphItem
  grIt.Color = RGB(0, 255, 0)
  grIt.Name = "Свёртка"
  collGraph.Add grIt, "Res"
    
End Sub

Public Property Get IDescrFunc2_Hints() As CGItem.DrawHints
  IDescrFunc2_Hints = hntHints
End Property

Public Property Let IDescrFunc2_Hints(dhHint As CGItem.DrawHints)
  hntHints = dhHint
'  PropertyChanged "Hints"
End Property

Public Sub IDescrFunc2_SetParameters(ByVal colControls As Collection)
  ReadValueFromControl colControls.item("Text_X1_4"), A
  ReadValueFromControl colControls.item("Text_X2_4"), b
  
  ReadValueFromControl colControls.item("Text_N_4"), N
  ReadValueFromControl colControls.item("Text_Sg1_4"), SgU
  
  ReadValueFromControl colControls.item("Text_Sg2_4"), SgH
  
  ShowIn = IIf(colControls.item("Check_ShowIn_4").Value = 0, False, True)
  ShowImp = IIf(colControls.item("Check_ShowImp_4").Value = 0, False, True)
    
End Sub

Public Sub IDescrFunc2_GetParameters(ByVal colControls As Collection)
  LoadValueToControl colControls.item("Text_X1_4"), A
  LoadValueToControl colControls.item("Text_X2_4"), b
  
  LoadValueToControl colControls.item("Text_N_4"), N
  LoadValueToControl colControls.item("Text_Sg1_4"), SgU
  
  LoadValueToControl colControls.item("Text_Sg2_4"), SgH
  
  colControls.item("Check_ShowIn_4").Value = IIf(ShowIn, 1, 0)
  colControls.item("Check_ShowImp_4").Value = IIf(ShowImp, 1, 0)
End Sub

Public Property Get IDescrFunc2_NameOfSuject() As String
  IDescrFunc2_NameOfSuject = "Выходной сигнал"
End Property

Public Property Get IDescrFunc2_Graphics() As Collection
  Set IDescrFunc2_Graphics = collGraph
End Property

Public Sub IDescrFunc2_Build()
  Dim grIt As GraphItem
  Set grIt = collGraph.item("Res")
    
  Dim ig As New IX4Lib.IXL4
  ig.ReInit A, b, N
  ig.OnSignalC SgU, SgH
  
  ig.OnDirect
  
  Dim arrFetch() As Double
  ig.FetchResults arrFetch
  grIt.arrPoints = LoadResult2(arrFetch)
  grIt.CalcLimits
    
  On Error Resume Next
  collGraph.Remove "In"
  collGraph.Remove "Imp"
  On Error GoTo 0
  
  If ShowIn Or ShowImp Then
    Dim cg As New CGaussGen
    With cg
      .Ampl = 1
      .T0 = 0
      Dim hnt As CGItem.DrawHints
      hnt = cg.IDescrFunc2_Hints
      hnt.dSampleX1 = A
      hnt.dSampleX2 = b
      hnt.dSampleStep = (b - A + 1) / N
      cg.IDescrFunc2_Hints = hnt
    End With
        
    If ShowIn Then
      Set grIt = New GraphItem
      grIt.Color = RGB(255, 0, 0)
      grIt.Name = "Вх. сигнал"
            
      cg.Sigma = SgU
      cg.IDescrFunc2_Build
      grIt.arrPoints = cg.IDescrFunc2_Graphics(1).arrPoints
      grIt.CalcLimits
      
      collGraph.Add grIt, "In"
    End If
    
    If ShowImp Then
      Set grIt = New GraphItem
      grIt.Color = RGB(0, 0, 255)
      grIt.Name = "Отклик"
            
      cg.Sigma = SgH
      cg.IDescrFunc2_Build
      grIt.arrPoints = cg.IDescrFunc2_Graphics(1).arrPoints
      grIt.CalcLimits
      
      collGraph.Add grIt, "Imp"
    End If
  End If

End Sub


Public Function IDescrFunc2_XtoY(ByVal dX As Double, ByVal lIndexFunc As Long) As Double
  
End Function




