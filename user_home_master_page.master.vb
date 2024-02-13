Imports System.Data
Imports System.Data.SqlClient

Partial Class user_login_master_page
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Label1.Text = Session("id").ToString
        ' Label2.Text = Session("name").ToString
        Dim a As String
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand()
        cmd = New SqlCommand("select * from Table1 where id='" + Label1.Text + "'", con)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader

        If dr.Read Then
            a = dr(6).ToString
            Literal1.Text = "<marquee bgcolor=yellow>" + a.ToString + "</marquee>"
        End If
        con.Close()
        con.Open()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        'Label1.Text = Session("id").ToString
        'Label2.Text = Session("name").ToString
        Response.Redirect("upload_certificate.aspx")
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        ' Label1.Text = Session("id").ToString
        'Label2.Text = Session("name").ToString
        Response.Redirect("Apply_leave_user.aspx")
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        ' Label1.Text = Session("id").ToString
        'Label2.Text = Session("name").ToString
        Response.Redirect("change_password.aspx")
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        ' Label1.Text = Session("id").ToString
        ' Label2.Text = Session("name").ToString
        Response.Redirect("stuff_salary.aspx")
    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        'Label1.Text = Session("id").ToString
        ' Label2.Text = Session("name").ToString
        Response.Redirect("Profile_disply.aspx")
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand()
        cmd = New SqlCommand("delete from Table1 where id='" + Label1.Text + "'", con)
        cmd.ExecuteReader()
        con.Close()
        con.Open()
        Response.Redirect("home_page.aspx")
    End Sub
End Class

