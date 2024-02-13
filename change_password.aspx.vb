Imports System.Data
Imports System.Data.SqlClient
Partial Class change_password
    Inherits System.Web.UI.Page

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim cmd = New SqlCommand()
        cmd = New SqlCommand("update stuff set c_id='" + TextBox3.Text + "' where id='" + TextBox1.Text + "'", con)
        cmd.ExecuteReader()
        Label1.Text = "password change successfully"
        con.Close()
        cmd.Dispose()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Session("id")
    End Sub
End Class
