Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Partial Class LoginPage
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        
    End Sub

    Protected Sub rglInfo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles rglInfo.Click
        DisplayData()
    End Sub
    Sub DisplayData()
        Dim cmd As New SqlCommand("select * from tblRegister", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim table As New DataTable
        Dim ds As New DataSet
        'Dim F As New DataTable
        da.Fill(table)
        regInfo.DataSource = table
        Me.DataBind()
        'gdvfeedback.DataBind()
    End Sub
End Class
