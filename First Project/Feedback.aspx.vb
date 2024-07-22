Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration


Partial Class Feedback

    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim cmd As New SqlCommand("insert into tblFeedback values (@e,@f)", con)
            cmd.Parameters.Add("@e", SqlDbType.VarChar, 50).Value = TextBox1.Text
            cmd.Parameters.Add("@f", SqlDbType.VarChar).Value = TextBox2.Text
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Write("Feedback Inserted")
            TextBox1.Text = ""
            TextBox2.Text = ""
            DisplayData()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
        End Try
        
    End Sub
    Sub DisplayData()
        Dim cmd As New SqlCommand("select * from tblFeedback", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        'Dim F As New DataTable
        da.Fill(ds, "F")
        gdvfeedback.DataSource = ds.Tables("F")
        Me.DataBind()
        'gdvfeedback.DataBind()
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        DisplayData()
        '

    End Sub
End Class
