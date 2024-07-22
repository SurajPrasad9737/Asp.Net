
Partial Class StudentMaster
    Inherits System.Web.UI.MasterPage

    Protected Sub Lbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Lbtn.Click
        Response.Redirect("Index.aspx")
    End Sub

    Protected Sub idbtnHome_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles idbtnHome.Click
        Response.Redirect("StudentHome.aspx")
    End Sub
End Class

