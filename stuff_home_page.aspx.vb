Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO

Partial Class stuff_home_page
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Session("id")
        Label1.Text = Session("name")
        Dim dt As New DataTable()
        Dim bytes As Byte()
        Dim base64String As String = String.Empty
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select id,name,dprt,desg from stuff where id='" + TextBox1.Text + "'", con)
        Dim adp As New SqlDataAdapter(cmd)
        Try
            adp.Fill(dt)
            If dt.Rows.Count > 0 Then
                GridView1.DataSource = dt
                GridView1.DataBind()

                'For i As Integer = 0 To dt.Rows.Count - 1
                '    If Not String.IsNullOrEmpty(Convert.ToString(dt.Rows(i)("photo"))) Then
                '        bytes = DirectCast(dt.Rows(i)("photo"), Byte())
                '        base64String = Convert.ToBase64String(bytes, 0, bytes.Length)

                '        Dim img As Image = DirectCast(GridView1.Rows(i).FindControl("ImgBookPic"), Image)
                '        img.ImageUrl = "data:image/png;base64," & base64String
                '    End If
                'Next
            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        Finally
            con.Close()
            dt.Clear()
            dt.Dispose()
            cmd.Dispose()
            bytes = Nothing
            base64String = Nothing
        End Try
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
