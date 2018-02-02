Attribute VB_Name = "GlobalUtils"
Option Explicit

Public Const PI As Double = 3.14159265358979

Public Sub LoadValueToControl(ByVal ctl As Control, ByVal dbl As Variant)
  ctl.Text = CStr(dbl)
End Sub

Public Sub ReadValueFromControl(ByVal ctl As Control, ByRef dbl As Variant)
  Select Case VarType(dbl)
    Case vbDouble
      dbl = CDbl(ctl.Text)
    Case vbInteger
      dbl = CInt(ctl.Text)
    Case vbLong
      dbl = CLng(ctl.Text)
    Case vbString
      dbl = ctl.Text
    Case vbBoolean
      dbl = CBool(ctl.Text)
    Case vbDecimal
      dbl = CDec(ctl.Text)
    Case Else
      Err.Raise vbObjectError, "ReadValueFromControl", "ѕреобразование дл€ такого типа не определено"
  End Select
End Sub



