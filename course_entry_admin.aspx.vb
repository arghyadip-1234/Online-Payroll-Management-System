Imports System.Data
Imports System.Data.SqlClient

Partial Class course_entry_admin
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        con.Open()
        cmd = New SqlCommand("insert into course(c_type,c_name,c_seat) values (@c_type,@c_name,@c_seat)", con)
        cmd.Parameters.AddWithValue("@c_type", DropDownList1.Text)
        cmd.Parameters.AddWithValue("@c_name", TextBox1.Text)
        cmd.Parameters.AddWithValue("@c_seat", TextBox2.Text)
        cmd.ExecuteReader()
        con.Close()
        con.Open()
        cmd = New SqlCommand("select * from course", con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        cmd = New SqlCommand("select * from course", con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        con.Close()
    End Sub
End Class
