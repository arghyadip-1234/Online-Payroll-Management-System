Imports System.Data
Imports System.Data.SqlClient
Partial Class Leave_status_Admin
    Inherits System.Web.UI.Page
    Protected Sub submittxt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submittxt.Click
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Try
            cmd = New SqlCommand("insert into leave(id,name,el,ml,cl,cml)values(@id,@name,@el,@ml,@cl,@cml)", con)
            cmd.Parameters.AddWithValue("@id", idtext.Text.Trim())
            cmd.Parameters.AddWithValue("@name", nametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@el", eltxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ml", mltxt.Text.Trim())
            cmd.Parameters.AddWithValue("@cl", cltxt.Text.Trim())
            cmd.Parameters.AddWithValue("@cml", cmltxt.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        nametxt.Text = ""
        eltxt.Text = ""
        mltxt.Text = ""
        cltxt.Text = ""
        cmltxt.Text = ""
        con.Close()
    End Sub

    Protected Sub idtext_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles idtext.SelectedIndexChanged
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        cmd = New SqlCommand("select *  from stuff where id='" + idtext.SelectedValue + "'", con)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        If dr.Read Then
            nametxt.Text = dr(2).ToString()
        End If
        con.Close()
        cmd.Dispose()
    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub
End Class
