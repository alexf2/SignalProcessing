VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IDescrFunc2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Public Property Get Hints() As CGItem.DrawHints
End Property

Public Property Let Hints(dhHint As CGItem.DrawHints)
End Property

Public Sub SetParameters(ByVal colControls As Collection)
End Sub

Public Sub GetParameters(ByVal colControls As Collection)
End Sub

Public Property Get NameOfSuject() As String
End Property

Public Property Get Graphics() As Collection
End Property

Public Sub Build()
End Sub

Public Function XtoY(ByVal dX As Double, ByVal lIndexFunc As Long) As Double
End Function
