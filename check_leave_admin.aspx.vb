Imports System.Data
Imports System.Data.SqlClient

Partial Class check_leave_admin

    Inherits System.Web.UI.Page
    Dim a, b, c As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand()
        cmd = New SqlCommand("select * from temp_leave", con)
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        con.Close()
        cmd.Dispose()


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text

        TextBox3.Text = GridView1.SelectedRow.Cells(5).Text
        TextBox7.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox8.Text = GridView1.SelectedRow.Cells(2).Text
        TextBox9.Text = GridView1.SelectedRow.Cells(3).Text
        TextBox4.Text = GridView1.SelectedRow.Cells(4).Text
        TextBox5.Text = GridView1.SelectedRow.Cells(5).Text
        TextBox6.Text = GridView1.SelectedRow.Cells(6).Text
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand()
        con.Open()
        cmd = New SqlCommand("select * from stuff where id='" + TextBox7.Text + "'", con)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        If dr.Read Then
            TextBox10.Text = dr(2).ToString
        End If
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        TextBox1.Text = GridView1.SelectedRow.Cells(1).Text
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from elleave where id='" + TextBox1.Text + "' ", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                eltxt.Text = dr(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from clleave where id='" + TextBox1.Text + "' ", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                cltxt.Text = dr(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from mlleave where id='" + TextBox1.Text + "' ", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                mltxt.Text = dr(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from cmlleave where id='" + TextBox1.Text + "' ", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                cmltxt.Text = dr(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        con.Open()

        ' leave update


        If TextBox2.Text = "cl" Then
            a = Val(cltxt.Text)
            b = Val(TextBox3.Text)
            If a >= b Then
                c = a - b
                cltxt.Text = Val(c)

            Else
                MsgBox("not possible", MsgBoxStyle.Critical)
            End If

            Try
                Dim cmd As New SqlCommand()
                Dim st As String
                st = "update clleave set cl='" + cltxt.Text + "' where id='" + TextBox1.Text + "' "
                cmd.CommandText = st
                cmd.Connection = con
                cmd.ExecuteReader() '
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try

        ElseIf TextBox2.Text = "el" Then
            a = Val(eltxt.Text)
            b = Val(TextBox3.Text)
            If a >= b Then
                c = a - b
                eltxt.Text = Val(c)

            Else
                MsgBox("not possible", MsgBoxStyle.Critical)
            End If

            Try
                Dim cmd As New SqlCommand()
                Dim st As String
                st = "update elleave set el='" + eltxt.Text + "' where id='" + TextBox1.Text + "' "
                cmd.CommandText = st
                cmd.Connection = con
                cmd.ExecuteReader() '
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try

        ElseIf TextBox2.Text = "ml" Then
            a = Val(mltxt.Text)
            b = Val(TextBox3.Text)
            If a >= b Then
                c = a - b
                mltxt.Text = Val(c)

            Else
                MsgBox("not possible", MsgBoxStyle.Critical)
            End If

            Try
                Dim cmd As New SqlCommand()
                Dim st As String
                st = "update mlleave set ml='" + mltxt.Text + "' where id='" + TextBox1.Text + "' "
                cmd.CommandText = st
                cmd.Connection = con
                cmd.ExecuteReader() '
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try

        ElseIf TextBox2.Text = "cml" Then
            a = Val(cmltxt.Text)
            b = Val(TextBox3.Text)
            If a >= b Then
                c = a - b
                cmltxt.Text = Val(c)

            Else
                MsgBox("not possible", MsgBoxStyle.Critical)
            End If

            Try
                Dim cmd As New SqlCommand()
                Dim st As String
                st = "update cmlleave set cml='" + cmltxt.Text + "' where id='" + TextBox1.Text + "' "
                cmd.CommandText = st
                cmd.Connection = con
                cmd.ExecuteReader() '
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try



        End If
        con.Close()
        con.Open()
        Dim cmd1 As New SqlCommand()
        cmd1 = New SqlCommand("delete from temp_leave where id='" + TextBox1.Text + "' and leavetype='" + TextBox2.Text + "'", con)
        cmd1.ExecuteReader()
        con.Close()
        cmd1.Dispose()
        con.Open()
        Dim cmd2 As New SqlCommand()
        cmd2 = New SqlCommand("select * from temp_leave", con)
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd2)
        Dim ds As New DataSet
        adp.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        con.Close()
        cmd2.Dispose()
        Label1.Text = "Leave permit successfully"
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""

        Dim cmd3 As New SqlCommand()
        con.Open()
        cmd3 = New SqlCommand("insert into Table1(id,leavetype,dateto,datefrom,totaldays,reason,status)values(@id,@leavetype,@dateto,@datefrom,@totaldays,@reason,@status)", con)
        cmd3.Parameters.AddWithValue("@id", TextBox7.Text)
        cmd3.Parameters.AddWithValue("@leavetype", TextBox8.Text)
        cmd3.Parameters.AddWithValue("@dateto", TextBox9.Text)
        cmd3.Parameters.AddWithValue("@datefrom", TextBox4.Text)
        cmd3.Parameters.AddWithValue("@totaldays", TextBox5.Text)
        cmd3.Parameters.AddWithValue("@reason", TextBox6.Text)
        cmd3.Parameters.AddWithValue("@status", Label1.Text)
        cmd3.ExecuteReader()
        con.Close()
    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim cmd1 As New SqlCommand()
        cmd1 = New SqlCommand("delete from temp_leave where id='" + TextBox1.Text + "' and leavetype='" + TextBox2.Text + "'", con)
        cmd1.ExecuteReader()
        con.Close()
        cmd1.Dispose()
        con.Open()
        Dim cmd2 As New SqlCommand()
        cmd2 = New SqlCommand("select * from temp_leave", con)
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd2)
        Dim ds As New DataSet
        adp.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        con.Close()
        cmd2.Dispose()
        Label1.Text = ""
        Label1.Text = "Leave not Permitted"
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""

        Dim cmd3 As New SqlCommand()
        con.Open()
        cmd3 = New SqlCommand("insert into Table1(id,leavetype,dateto,datefrom,totaldays,reason,status)values(@id,@leavetype,@dateto,@datefrom,@totaldays,@reason,@status)", con)
        cmd3.Parameters.AddWithValue("@id", TextBox7.Text)
        cmd3.Parameters.AddWithValue("@leavetype", TextBox8.Text)
        cmd3.Parameters.AddWithValue("@dateto", TextBox9.Text)
        cmd3.Parameters.AddWithValue("@datefrom", TextBox4.Text)
        cmd3.Parameters.AddWithValue("@totaldays", TextBox5.Text)
        cmd3.Parameters.AddWithValue("@reason", TextBox6.Text)
        cmd3.Parameters.AddWithValue("@status", Label1.Text)
        cmd3.ExecuteReader()
        con.Close()
    End Sub

    Protected Sub Button12_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button12.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        'con.Open()
        'Dim cmd1 As New SqlCommand()
        'cmd1 = New SqlCommand("delete from temp_leave where id='" + TextBox1.Text + "' and leavetype='" + TextBox2.Text + "'", con)
        'cmd1.ExecuteReader()
        'con.Close()
        'cmd1.Dispose()
        'con.Open()
        'Dim cmd2 As New SqlCommand()
        'cmd2 = New SqlCommand("select * from temp_leave", con)
        'Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd2)
        'Dim ds As New DataSet
        'adp.Fill(ds)
        'GridView1.DataSource = ds
        'GridView1.DataBind()
        'con.Close()
        'cmd2.Dispose()
        Label1.Text = ""
        Label1.Text = "Leave permit Pending"
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""

        Dim cmd3 As New SqlCommand()
        con.Open()
        cmd3 = New SqlCommand("insert into Table1(id,leavetype,dateto,datefrom,totaldays,reason,status)values(@id,@leavetype,@dateto,@datefrom,@totaldays,@reason,@status)", con)
        cmd3.Parameters.AddWithValue("@id", TextBox7.Text)
        cmd3.Parameters.AddWithValue("@leavetype", TextBox8.Text)
        cmd3.Parameters.AddWithValue("@dateto", TextBox9.Text)
        cmd3.Parameters.AddWithValue("@datefrom", TextBox4.Text)
        cmd3.Parameters.AddWithValue("@totaldays", TextBox5.Text)
        cmd3.Parameters.AddWithValue("@reason", TextBox6.Text)
        cmd3.Parameters.AddWithValue("@status", Label1.Text)
        cmd3.ExecuteReader()
        con.Close()
    End Sub
End Class
