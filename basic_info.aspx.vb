Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class basic_info
    Inherits System.Web.UI.Page
    Dim fileName As String = String.Empty
    Dim filePath As String = String.Empty
    Dim cmd, cmd11 As New SqlCommand
    Dim j As Integer
    Dim dr1, dr11 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim random As New Random()
        Dim i As Integer

        For i = 1 To 100
            j = random.Next(3000)
        Next
        Dim n As Integer
        Try
            con.Open()
            cmd11 = New SqlCommand("select MAX(sl) from stuff", con)
            dr11 = cmd11.ExecuteReader
            If dr11.Read Then
                n = dr11(0).ToString
                n = n + 1
                TextBox1.Text = Val(n)
                idtxt.Text = "PBC/EMP/" & n.ToString

            End If


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()

    End Sub




    Protected Sub addexp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles addexp.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into exp(id,ex_name,ex_year,ex_from,ex_to)values(@id,@ex_name,@ex_year,@ex_from,@ex_to)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ex_name", ddexname.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@ex_year", ddexyear.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@ex_from", fromexptxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ex_to", toexptxt.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        'ddexname.Text = ""
        'ddexyear.Text = ""
        'fromexptxt.Text = ""
        'toexptxt.Text = ""
        Try
            con.Open()
            Dim cmd1 As New SqlCommand()
            cmd1 = New SqlCommand("select * from exp where id='" + idtxt.Text + "'", con)
            Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd1)
            Dim dt As DataTable = New DataTable()
            adp.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd11.Dispose()
        End Try
    End Sub
    Protected Sub exfromimgbtn0_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles exfromimgbtn0.Click
        Label2.Text = j
        Label1.Visible = True
        Try
            If can_photo_fileupload.HasFile Then
                fileName = can_photo_fileupload.FileName
                filePath = Server.MapPath("candidate/" & Convert.ToString(fileName))
                can_photo_fileupload.SaveAs(filePath)
            End If
            cmd = New SqlCommand("insert into stuff(c_id,id,name,dprt,doj,dor,pname,photo,sl,desg) values(@c_id,@id,@name,@dprt,@doj,@dor,@pname,@photo,@sl,@desg)", con)
            cmd.Parameters.AddWithValue("@c_id", Label2.Text.Trim())
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@name", nametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@dprt", dprttxt.Text.Trim())
            cmd.Parameters.AddWithValue("@doj", datejoiningtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@dor", datereturntxt.Text.Trim())
            cmd.Parameters.AddWithValue("@pname", parenttxt.Text.Trim())
            cmd.Parameters.AddWithValue("@photo", fileName)
            cmd.Parameters.AddWithValue("@sl", TextBox1.Text.Trim())
            cmd.Parameters.AddWithValue("@desg", desigtxt.Text.Trim())
            con.Open()
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            Label2.Text = j
            con.Close()
            cmd.Dispose()
            fileName = Nothing
            filePath = Nothing
            dprttxt.Text = ""
            datejoiningtxt.Text = ""
            datereturntxt.Text = ""
            parenttxt.Text = ""
        End Try

        Try
            ''If xfileupload.HasFile Then
            ''    fileName = xfileupload.FileName
            ''    filePath = Server.MapPath("x/" & Convert.ToString(fileName))
            ''    xfileupload.SaveAs(filePath)

            'End If
            cmd = New SqlCommand("insert into mp_detail(id,name,xname,xbname,xyear,xmarks,xdivision,xinsname)values(@id,@name,@xname,@xbname,@xyear,@xmarks,@xdivision,@xinsname)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@name", nametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xname", xname.Text.Trim())
            cmd.Parameters.AddWithValue("@xbname", xbnametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xyear", xyeartxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xmarks", xmarkstxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xdivision", xdivisiontxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xinsname", xinsnametxt.Text.Trim())
            Label3.Text = "Upload Successfully"
            con.Open()
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            Label2.Text = j
            con.Close()
            cmd.Dispose()
            fileName = Nothing
            filePath = Nothing
            xname.Text = ""
            xbnametxt.Text = ""
            xyeartxt.Text = ""
            xmarkstxt.Text = ""
            xdivisiontxt.Text = ""
            xinsnametxt.Text = ""
        End Try

        Try
            'If xiifileupload.HasFile Then
            '    fileName = xiifileupload.FileName
            '    filePath = Server.MapPath("xii/" & Convert.ToString(fileName))
            '    xiifileupload.SaveAs(filePath)
            'End If
            cmd = New SqlCommand("insert into hs_detail(id,name,xiiname,xiibname,xiiyear,xiimarks,xiidiv,xiiinsname)values(@id,@name,@xiiname,@xiibname,@xiiyear,@xiimarks,@xiidiv,@xiiinsname)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@name", nametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xiiname", xiiname.Text.Trim())
            cmd.Parameters.AddWithValue("@xiibname", xiibnametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xiiyear", xiiyeartxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xiimarks", xiimarkstxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xiidiv", xiidivisiontxt.Text.Trim())
            cmd.Parameters.AddWithValue("@xiiinsname", xiiinsnametxt.Text.Trim())

            Label3.Text = "Upload Successfully"
            con.Open()
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            Label2.Text = j
            con.Close()
            cmd.Dispose()
            fileName = Nothing
            filePath = Nothing
            xiiname.Text = ""
            xiibnametxt.Text = ""
            xiiyeartxt.Text = ""
            xiimarkstxt.Text = ""
            xiidivisiontxt.Text = ""
            xiiinsnametxt.Text = ""
        End Try

        Try
            'If ugfileupload.HasFile Then
            '    fileName = ugfileupload.FileName
            '    filePath = Server.MapPath("ug/" & Convert.ToString(fileName))
            '    ugfileupload.SaveAs(filePath)
            'End If
            cmd = New SqlCommand("insert into graduation_detail(id,name,ugname,ugbname,ugyear,ugmarks,ugdivision,uginsname)values(@id,@name,@ugname,@ugbname,@ugyear,@ugmarks,@ugdivision,@uginsname)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@name", nametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ugname", ugname.Text.Trim())
            cmd.Parameters.AddWithValue("@ugbname", ugbnametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ugyear", ugyeartxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ugmarks", ugmarkstxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ugdivision", ugdivisiontxt.Text.Trim())
            cmd.Parameters.AddWithValue("@uginsname", uginsnametxt.Text.Trim())
            Label3.Text = "Upload Successfully"
            con.Open()
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            Label2.Text = j
            con.Close()
            cmd.Dispose()
            fileName = Nothing
            filePath = Nothing
            ugname.Text = ""
            ugbnametxt.Text = ""
            ugyeartxt.Text = ""
            ugmarkstxt.Text = ""
            ugdivisiontxt.Text = ""
            uginsnametxt.Text = ""
        End Try

        Try
            'If pgfileupload.HasFile Then
            '    fileName = pgfileupload.FileName
            '    filePath = Server.MapPath("pg/" & Convert.ToString(fileName))
            '    pgfileupload.SaveAs(filePath)
            'End If
            cmd = New SqlCommand("insert into post_graduation_detail(id,name,pgname,pgbname,pgyear,pgmarks,pgdivision,pginsname)values(@id,@name,@pgname,@pgbname,@pgyear,@pgmarks,@pgdivision,@pginsname)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@name", nametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@pgname", pgname.Text.Trim())
            cmd.Parameters.AddWithValue("@pgbname", pgbnametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@pgyear", pgyeartxt.Text.Trim())
            cmd.Parameters.AddWithValue("@pgmarks", pgmarkstxt.Text.Trim())
            cmd.Parameters.AddWithValue("@pgdivision", pgdivisiontxt.Text.Trim())
            cmd.Parameters.AddWithValue("@pginsname", pginsnametxt.Text.Trim())
            Label3.Text = "Upload Successfully"
            con.Open()
            cmd.ExecuteReader()

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            Label2.Text = j
            con.Close()
            cmd.Dispose()
            fileName = Nothing
            filePath = Nothing
            pgname.Text = ""
            pgbnametxt.Text = ""
            pgyeartxt.Text = ""
            pgmarkstxt.Text = ""
            pgdivisiontxt.Text = ""
            pginsnametxt.Text = ""
            nametxt.Text = ""
        End Try


        con.Open()
        Try
            cmd = New SqlCommand("insert into leave(id,name,el,ml,cl,cml)values(@id,@name,@el,@ml,@cl,@cml)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@name", nametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@el", eltxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ml", mltxt.Text.Trim())
            cmd.Parameters.AddWithValue("@cl", cltxt.Text.Trim())
            cmd.Parameters.AddWithValue("@cml", cmltext.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        con.Open()
        Try
            cmd = New SqlCommand("insert into clleave(id,cl)values(@id,@cl)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@cl", cltxt.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        con.Open()
        Try
            cmd = New SqlCommand("insert into elleave(id,el)values(@id,@el)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@el", eltxt.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        con.Open()
        Try
            cmd = New SqlCommand("insert into mlleave(id,ml)values(@id,@ml)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ml", mltxt.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        con.Open()
        Try
            cmd = New SqlCommand("insert into cmlleave(id,cml)values(@id,@cml)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@cml", cmltext.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub


    Protected Sub idtxt_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles idtxt.TextChanged

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Calendar2.Visible = True

    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Calendar2.Visible = False
        Calendar1.Visible = True
    End Sub

    Protected Sub Calendar2_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar2.SelectionChanged
        fromexptxt.Text = Calendar2.SelectedDate
        Calendar2.Visible = False

    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        toexptxt.Text = Calendar1.SelectedDate
        Calendar1.Visible = False
    End Sub

    Protected Sub edit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles edit.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from exp where id='" + idtxt.Text + "' and ex_name='" + ddexname.SelectedValue + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                idtxt.Text = dr(0).ToString
                ddexyear.SelectedValue = dr(2).ToString
                fromexptxt.Text = dr(3).ToString
                toexptxt.Text = dr(4).ToString
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd.Dispose()
        End Try
    End Sub

    Protected Sub update_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles update.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("update exp set ex_year='" + ddexyear.SelectedValue + "' , ex_from='" + fromexptxt.Text + "' , ex_to='" + toexptxt.Text + "'", con)
            cmd.ExecuteReader()
            MsgBox("Update")
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd.Dispose()
        End Try
        Try
            con.Open()
            Dim cmd1 As New SqlCommand()
            cmd1 = New SqlCommand("select * from exp where id='" + idtxt.Text + "'", con)
            Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd1)
            Dim dt As DataTable = New DataTable()
            adp.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd11.Dispose()
        End Try
    End Sub

End Class
