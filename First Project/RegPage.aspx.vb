Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class RegPage
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)
   ' Protected Sub CustomValidator1_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
    ' Dim len As Integer = args.Value.Length

    '        If len = 10 Then
    '           args.IsValid = True
    '      Else
    '         args.IsValid = False
    '    End If
    'End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit.Click
        
        If Page.IsValid Then

            Dim cmd As New SqlCommand("insert into tblRegister values(@nm,@add,@dob,@gnd,@hb,@age,@uname,@pwd,@cpwd,@email,@utype,@mbl)", con)
            cmd.Parameters.Add("@nm", SqlDbType.VarChar).Value = txtName.Text
            cmd.Parameters.Add("@add", SqlDbType.VarChar).Value = txtAddress.Text
            cmd.Parameters.Add("@dob", SqlDbType.Date).Value = CDate(txtBdate.Text)

            Dim gen As String = ""
            If rdBtnMale.Checked Then
                gen = rdBtnMale.Text
            ElseIf rdBtnFemale.Checked Then
                gen = rdBtnFemale.Text
            End If
            cmd.Parameters.Add("@gnd", SqlDbType.VarChar).Value = gen
            Dim h As String = ""
            If chbCode.Checked Then
                h = h + chbCode.Text
            ElseIf chbRead.Checked Then
                h = h + chbRead.Text
            ElseIf chbTravel.Checked Then
                h = h + chbTravel.Text
            End If
            con.Open()
            cmd.Parameters.Add("@hb", SqlDbType.VarChar).Value = h
            cmd.Parameters.Add("@age", SqlDbType.Int).Value = CInt(txtAge.Text)
            cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value = txtUname.Text
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar).Value = pwd.Text
            cmd.Parameters.Add("@cpwd", SqlDbType.VarChar).Value = txtcnfpwd.Text
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txtEmail.Text
            cmd.Parameters.Add("@utype", SqlDbType.VarChar).Value = dblUtype.SelectedValue
            cmd.Parameters.Add("@mbl", SqlDbType.Decimal).Value = CDec(txtMno.Text)
            cmd.ExecuteNonQuery()


            con.Close()

            MsgBox("Registration Successfully", MsgBoxStyle.OkOnly, "Registration")
            Response.Redirect("LoginPage.aspx")

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        txtAddress.Text = ""
        txtName.Text = ""
        txtBdate.Text = ""
        txtcnfpwd.Text = ""
        pwd.Text = ""
        txtMno.Text = ""
        txtEmail.Text = ""
    End Sub

    Protected Sub Calendar2_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar2.SelectionChanged
        txtBdate.Text = Calendar2.SelectedDate
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
