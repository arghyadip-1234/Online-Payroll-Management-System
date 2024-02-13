Imports System.Data
Imports System.Data.SqlClient
Partial Class stuff_salary
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
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
                Label4.Text = dr(2).ToString
                Label6.Text = dr(3).ToString
                Label8.Text = dr(9).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd3 As New SqlCommand()
            Dim st As String
            st = "select * from salary where id='" + TextBox1.Text + "' and year='" + DropDownList1.SelectedValue + "'and month='" + DropDownList2.SelectedValue + "' "
            'st = "select * from salary where id='" + TextBox1.Text + "'"
            cmd3.CommandText = st
            cmd3.Connection = con
            Dim dr3 As SqlDataReader
            dr3 = cmd3.ExecuteReader
            If dr3.Read Then
                Label10.Text = dr3(1).ToString
                Label12.Text = dr3(2).ToString
                Label14.Text = dr3(3).ToString
                Label20.Text = dr3(3).ToString
                Label24.Text = dr3(4).ToString
                Label28.Text = dr3(5).ToString
                Label30.Text = dr3(6).ToString
                Label22.Text = dr3(7).ToString
                Label26.Text = dr3(8).ToString
                Label32.Text = dr3(9).ToString
                Label34.Text = dr3(10).ToString
                Label38.Text = dr3(11).ToString
            Else
                Label2.Text = "this product is not found"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Session("id")
        'Dim i As Integer
        'Dim j As Integer
        'Dim a, b As Integer
        'For i = 1 To DropDownList1.Items.Count
        '    DropDownList1.SelectedIndex = i
        '    a = DropDownList1.SelectedItem.ToString
        '    For j = i + 1 To DropDownList1.Items.Count
        '        DropDownList1.SelectedIndex = j
        '        b = DropDownList1.SelectedItem.ToString
        '        If a = b Then
        '            DropDownList1.Items.RemoveAt(j)
        '            j = j - 1
        '        End If
        '    Next
        'Next
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub

    Protected Sub SqlDataSource2_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting

    End Sub
End Class
