Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Partial Class Profile_disply
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        TextBox1.Text = Session("id")
        Label2.Text = Session("name")
        Dim cmd As New SqlCommand()
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Try

            cmd = New SqlCommand("select * from stuff where id='" + TextBox1.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Label48.Text = dr(1).ToString
                TextBox2.Text = dr(7).ToString
                Image1.ImageUrl = "~/candidate/" + TextBox2.Text
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()

            cmd.Dispose()

        End Try

        Try
            con.Open()
            Dim cmd2 As New SqlCommand()
            Dim st As String
            st = "select * from stuff where id='" + TextBox1.Text + "'"
            cmd2.CommandText = st
            cmd2.Connection = con
            Dim dr As SqlDataReader
            dr = cmd2.ExecuteReader
            If dr.Read Then
                'TextBox2.Text = dr(0).ToString
                Label2.Text = dr(2).ToString
                Label4.Text = dr(3).ToString
                Label6.Text = dr(9).ToString
                Label9.Text = dr(4).ToString
                Label8.Text = dr(5).ToString
                Label12.Text = dr(6).ToString
            Else
                'Label2.Text = "this product is not found"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()

        Try
            con.Open()
            Dim cmd2 As New SqlCommand()
            Dim st As String
            st = "select * from mp_detail where id='" + TextBox1.Text + "'"
            cmd2.CommandText = st
            cmd2.Connection = con
            Dim dr2 As SqlDataReader
            dr2 = cmd2.ExecuteReader
            If dr2.Read Then
                Label31.Text = dr2(3).ToString
                Label29.Text = dr2(4).ToString
                Label23.Text = dr2(5).ToString
                Label33.Text = dr2(6).ToString
                Label28.Text = dr2(7).ToString
            Else
                'Label2.Text = "this product is not found"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd3 As New SqlCommand()
            Dim st As String
            st = "select * from hs_detail where id='" + TextBox1.Text + "'"
            cmd3.CommandText = st
            cmd3.Connection = con
            Dim dr3 As SqlDataReader
            dr3 = cmd3.ExecuteReader
            If dr3.Read Then
                Label35.Text = dr3(3).ToString
                Label30.Text = dr3(4).ToString
                Label22.Text = dr3(5).ToString
                Label26.Text = dr3(6).ToString
                Label32.Text = dr3(7).ToString
            Else
                'Label2.Text = "this product is not found"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd4 As New SqlCommand()
            Dim st As String
            st = "select * from graduation_detail where id='" + TextBox1.Text + "'"
            cmd4.CommandText = st
            cmd4.Connection = con
            Dim dr4 As SqlDataReader
            dr4 = cmd4.ExecuteReader
            If dr4.Read Then
                Label27.Text = dr4(3).ToString
                Label37.Text = dr4(4).ToString
                Label45.Text = dr4(5).ToString
                Label36.Text = dr4(6).ToString
                Label39.Text = dr4(7).ToString
            Else
                'Label2.Text = "this product is not found"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()

        Try
            con.Open()
            Dim cmd5 As New SqlCommand()
            Dim st As String
            st = "select * from post_graduation_detail where id='" + TextBox1.Text + "'"
            cmd5.CommandText = st
            cmd5.Connection = con
            Dim dr5 As SqlDataReader
            dr5 = cmd5.ExecuteReader
            If dr5.Read Then
                Label43.Text = dr5(3).ToString
                Label38.Text = dr5(4).ToString
                Label42.Text = dr5(5).ToString
                Label46.Text = dr5(6).ToString
                Label41.Text = dr5(7).ToString
            Else
                'Label2.Text = "this product is not found"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd13 As New SqlCommand()
            cmd13 = New SqlCommand("select * from exp where id='" + TextBox1.Text + "'", con)
            Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd13)
            Dim dt As DataTable = New DataTable()
            adp.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
