Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Partial Class upload_certificate
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

        Dim filename As String = String.Empty
        Dim filepath As String = String.Empty
        Try
            filename = docupload.FileName
            filepath = Server.MapPath("certificate/" & Convert.ToString(filename))
            docupload.SaveAs(filepath)
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into document(id,doc_type,doc,doc_name)values(@id,@doc_type,@doc,@doc_name)", con)
            cmd.Parameters.AddWithValue("@id", idtxt.Text)
            cmd.Parameters.AddWithValue("@doc_type", ddoctype.SelectedValue)
            cmd.Parameters.AddWithValue("@doc", filename)
            cmd.Parameters.AddWithValue("@doc_name", docnametxt.Text)
            cmd.ExecuteReader()
            mess.Text = "Uploadded"
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            filename = Nothing
            filepath = Nothing
            docnametxt.Text = ""
        End Try
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from document where id='" + idtxt.Text + "'", con)
            Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd)
            Dim dt As DataSet = New DataSet()
            adp.Fill(dt)
            GridView1.DataSource = dt
            DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'idtxt.Text = Session("id").ToString
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from document where id='" + idtxt.Text + "'", con)
            Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd)
            Dim dt As DataSet = New DataSet()
            adp.Fill(dt)
            GridView1.DataSource = dt
            DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
    Protected Sub lnkDownload_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim lnkbtn As LinkButton = TryCast(sender, LinkButton)
        Dim gvrow As GridViewRow = TryCast(lnkbtn.NamingContainer, GridViewRow)
        Dim filePath As String = GridView1.DataKeys(gvrow.RowIndex).Value.ToString()
        TextBox1.Text = filePath
        Response.ContentType = "cettificate/jpg"
        Response.ContentType = "certificate/docx"
        Response.ContentType = "certificate/pdf"
        Response.AddHeader("Content-Disposition", "attachment;filename=""" & filePath & """")
        Response.TransmitFile(Server.MapPath("certificate/" + filePath))
        Response.[End]()
    End Sub

    
End Class
