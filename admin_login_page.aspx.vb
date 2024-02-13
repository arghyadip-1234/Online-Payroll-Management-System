Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_login_page
    Inherits System.Web.UI.Page

    Protected Sub loginbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles loginbtn.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from admin where admin_username='" + Usertxt.Text + "' and admin_password='" + passwordtxt.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Response.Redirect("admin_home_page.aspx")
            Else
                Label6.Text = "Login Error"
            End If
        Catch ex As Exception

        End Try
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
