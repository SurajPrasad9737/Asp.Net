
Partial Class UploadImage
    Inherits System.Web.UI.Page

    Protected Sub uplImage_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles uplImage.Click
        If FileUpload1.HasFile Then
            FileUpload1.SaveAs(Server.MapPath("~/StudentPhotos/" + FileUpload1.FileName))
            ImageMap1.ImageUrl = "~/StudentPhotos/" + FileUpload1.FileName
            Label1.Text = "File Upload Successfully...."
            Label1.ForeColor = Drawing.Color.DarkGreen
        End If
        If FileUpload2.HasFile Then
            FileUpload2.SaveAs(Server.MapPath("~/StudentsSign/" + FileUpload2.FileName))
            ImageMap2.ImageUrl = "`/StudentsSign/" + FileUpload2.FileName
            Label1.Text = "File Upload Successfully...."
            Label1.ForeColor = Drawing.Color.DarkGreen
        End If
    End Sub
End Class
