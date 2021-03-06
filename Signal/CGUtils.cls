VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CGUtils"
Attribute VB_GlobalNameSpace = True
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Public Sub CheckNumericInt(ByVal ctl As Object, ByVal sName As String, Optional ByVal bSetFocus As Boolean = True)
  On Error Resume Next
  Dim str As String
  str = ctl.Text
  If Err.Number <> 0 Then Exit Sub
  
  If IsNumeric(str) Then
    Dim dbl As Double
    dbl = CDbl(str)
    If dbl = Int(dbl) Then Exit Sub
  End If
  
  If bSetFocus Then ctl.SetFocus
  'MsgBox "�������� '" & sName & "' ������ ���� ����� ������", vbExclamation Or vbOKOnly, "��������� ������ ���������"
  On Error GoTo 0
  Err.Raise vbObjectError, "��������� ������ ���������", "�������� '" & sName & "' ������ ���� ����� ������"
End Sub

Public Sub CheckNumeric(ByVal ctl As Object, ByVal sName As String, Optional ByVal bSetFocus As Boolean = True)
  On Error Resume Next
  Dim str As String
  str = ctl.Text
  If Err.Number <> 0 Then Exit Sub
  
  If IsNumeric(str) Then Exit Sub
  
  If bSetFocus Then ctl.SetFocus
  'MsgBox "�������� '" & sName & "' ������ ���� ������", vbExclamation Or vbOKOnly, "��������� ������ ���������"
  On Error GoTo 0
  Err.Raise vbObjectError, "��������� ������ ���������", "�������� '" & sName & "' ������ ���� ������"
End Sub

Public Sub ReportError(ByVal ctl As Object, ByVal sName As String, Optional ByVal bSetFocus As Boolean = True)
  On Error Resume Next
  If bSetFocus Then ctl.SetFocus
  'MsgBox "���������: " & sName, vbExclamation Or vbOKOnly, "��������� �������� ���������"
  On Error GoTo 0
  Err.Raise vbObjectError, "��������� �������� ���������", "���������: " & sName
End Sub
           
