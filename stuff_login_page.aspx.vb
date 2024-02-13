Imports System.Data
Imports System.Data.SqlClient
Partial Class stuff_login_page
    Inherits System.Web.UI.Page

    Protected Sub loginbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles loginbtn.Click

        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from stuff where id='" + Usertxt.Text + "' and c_id='" + passwordtxt.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox1.Text = dr(2).ToString
                Session("id") = Usertxt.Text
                Session("name") = TextBox1.Text
                Response.Redirect("stuff_home_page.aspx")
            Else
                Label6.Visible = True
                Label6.Text = "You have enter wrong id or password"
            End If
        Catch ex As Exception

        End Try
        con.Close()
        'Try
        '    con.Open()
        '    Dim cmd As New SqlCommand()
        '    cmd = New SqlCommand("select * from basic_info where name='" + Usertxt.Text + "' or c_id='" + passwordtxt.Text + "'", con)
        '    Dim dr As SqlDataReader
        '    dr = cmd.ExecuteReader
        '    If dr.Read Then
        '        TextBox1.Text = dr(1).ToString
        '        Session("name") = Usertxt.Text
        '        Session("id") = TextBox1.Text
        '        'Response.Redirect("stuff_details_page.aspx")
        '    Else
        '    End If
        'Catch ex As Exception

        'End Try
        'con.Close()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("change_password.aspx")
    End Sub
End Class
