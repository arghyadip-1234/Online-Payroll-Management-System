Imports System.Data
Imports System.Data.SqlClient

Partial Class Apply_leave_user
    Inherits System.Web.UI.Page


    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Calendar1.Visible = True
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Calendar2.Visible = True
        Calendar1.Visible = False
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox1.Text = Calendar1.SelectedDate
        Calendar1.Visible = False
    End Sub

    Protected Sub Calendar2_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar2.SelectionChanged
        TextBox2.Text = Calendar2.SelectedDate
        Calendar2.Visible = False
    End Sub

    Protected Sub submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        Try
            con.Open()
            Dim cmd As New SqlCommand("insert into temp_leave(id,leavetype,dateto,datefrom,totaldays,reason)values(@id,@leavetype,@dateto,@datefrom,@totaldays,@reason)", con)
            cmd.Parameters.AddWithValue("@id", TextBox5.Text)
            cmd.Parameters.AddWithValue("@leavetype", DropDownList1.SelectedValue)
            cmd.Parameters.AddWithValue("@dateto", TextBox1.Text)
            cmd.Parameters.AddWithValue("@datefrom", TextBox2.Text)
            cmd.Parameters.AddWithValue("@totaldays", TextBox6.Text)
            cmd.Parameters.AddWithValue("@reason", TextBox3.Text)
            cmd.ExecuteReader()
            submit.Visible = False
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Label10.Text = "Apply leave Pending"
        'con.Open()
        'If DropDownList1.SelectedValue = "cl" Then
        '    a = Val(cltxt.Text)
        '    b = Val(TextBox6.Text)
        '    If a >= b Then
        '        c = a - b
        '        caltxt.Text = Val(c)
        '        cltxt.Text = Val(c)

        '    Else
        '        MsgBox("not possible", MsgBoxStyle.Critical)
        '    End If

        '    Try
        '        Dim cmd As New SqlCommand()
        '        Dim st As String
        '        st = "update clleave set cl='" + caltxt.Text + "' where id='" + TextBox5.Text + "' "
        '        cmd.CommandText = st
        '        cmd.Connection = con
        '        cmd.ExecuteReader() '
        '    Catch ex As Exception
        '        MsgBox(ex.Message)
        '    End Try

        'ElseIf DropDownList1.SelectedValue = "el" Then
        '    a = Val(eltext.Text)
        '    b = Val(TextBox6.Text)
        '    If a >= b Then
        '        c = a - b
        '        caltxt.Text = Val(c)
        '        eltext.Text = Val(c)

        '    Else
        '        MsgBox("not possible", MsgBoxStyle.Critical)
        '    End If

        '    Try
        '        Dim cmd As New SqlCommand()
        '        Dim st As String
        '        st = "update elleave set el='" + caltxt.Text + "' where id='" + TextBox5.Text + "' "
        '        cmd.CommandText = st
        '        cmd.Connection = con
        '        cmd.ExecuteReader() '
        '    Catch ex As Exception
        '        MsgBox(ex.Message)
        '    End Try
        'ElseIf DropDownList1.SelectedValue = "ml" Then
        '    a = Val(mltxt.Text)
        '    b = Val(TextBox6.Text)
        '    If a >= b Then
        '        c = a - b
        '        caltxt.Text = Val(c)
        '        mltxt.Text = Val(c)

        '    Else
        '        MsgBox("not possible", MsgBoxStyle.Critical)
        '    End If

        '    Try
        '        Dim cmd As New SqlCommand()
        '        Dim st As String
        '        st = "update mlleave set ml='" + caltxt.Text + "' where id='" + TextBox5.Text + "' "
        '        cmd.CommandText = st
        '        cmd.Connection = con
        '        cmd.ExecuteReader() '
        '    Catch ex As Exception
        '        MsgBox(ex.Message)
        '    End Try
        'ElseIf DropDownList1.SelectedValue = "cml" Then
        '    a = Val(cmltxt.Text)
        '    b = Val(TextBox6.Text)
        '    If a >= b Then
        '        c = a - b
        '        caltxt.Text = Val(c)
        '        cmltxt.Text = Val(c)
        '    Else
        '        MsgBox("not possible", MsgBoxStyle.Critical)
        '    End If

        '    Try
        '        Dim cmd As New SqlCommand()
        '        Dim st As String
        '        st = "update clleave set cml='" + caltxt.Text + "' where id='" + TextBox5.Text + "' "
        '        cmd.CommandText = st
        '        cmd.Connection = con
        '        cmd.ExecuteReader() '
        '    Catch ex As Exception
        '        MsgBox(ex.Message)
        '    End Try

        'End If

        'con.Close()


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox5.Text = Session("id")
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from leave where id='" + TextBox5.Text + "' ", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                el.Text = dr(2).ToString
                ml.Text = dr(3).ToString
                cl.Text = dr(4).ToString
                cml.Text = dr(5).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from elleave where id='" + TextBox5.Text + "' ", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                eltext.Text = dr(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from clleave where id='" + TextBox5.Text + "' ", con)
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
            cmd = New SqlCommand("select * from mlleave where id='" + TextBox5.Text + "' ", con)
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
            cmd = New SqlCommand("select * from cmlleave where id='" + TextBox5.Text + "' ", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                cmltxt.Text = dr(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        con.Close()

       
    End Sub

    Protected Sub TextBox5_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox5.TextChanged

    End Sub

    Protected Sub caltxt_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles caltxt.TextChanged

    End Sub
End Class
