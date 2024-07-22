
Partial Class Subjects
    Inherits System.Web.UI.Page

    Protected Sub confirm_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles confirm.Click
        Dim Subjects As String = ""
        For Each lstitm As ListItem In CheckBoxList1.Items
            If lstitm.Selected = True Then
                Subjects = Subjects + " " + lstitm.Text
            End If
        Next
        Subjects = Subjects + vbCrLf + RadioButtonList1.SelectedItem.Text
        Literal1.Text = Subjects
    End Sub
End Class
