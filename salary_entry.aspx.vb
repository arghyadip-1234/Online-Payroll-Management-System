Imports System.Data
Imports System.Data.SqlClient

Partial Class salary_entry
    Inherits System.Web.UI.Page

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        TextBox3.Text = Val(TextBox1.Text) + Val(TextBox2.Text)
        TextBox4.Text = Val(TextBox1.Text) * 0.1
        TextBox5.Text = Val(TextBox1.Text) * 0.05
        TextBox6.Text = Val(TextBox1.Text) * 0.25
        TextBox9.Text = Val(TextBox3.Text) + Val(TextBox4.Text) + Val(TextBox5.Text) + Val(TextBox6.Text)
        TextBox10.Text = Val(TextBox7.Text) + Val(TextBox8.Text)
        TextBox11.Text = Val(TextBox9.Text) - Val(TextBox10.Text)
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bharat.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into salary(id,basic,gp,bgp,da,hra,madical,epf,ptax,grass,deduct,netamount,year,month)values(@id,@basic,@gp,@bgp,@da,@hra,@madical,@epf,@ptax,@grass,@deduct,@netamount,@year,@month)", con)
            cmd.Parameters.AddWithValue("@id", DropDownList1.SelectedValue)
            cmd.Parameters.AddWithValue("@basic", TextBox1.Text.Trim())
            cmd.Parameters.AddWithValue("@gp", TextBox2.Text.Trim())
            cmd.Parameters.AddWithValue("@bgp", TextBox3.Text.Trim())
            cmd.Parameters.AddWithValue("@da", TextBox4.Text.Trim())
            cmd.Parameters.AddWithValue("@hra", TextBox5.Text.Trim())
            cmd.Parameters.AddWithValue("@madical", TextBox6.Text.Trim())
            cmd.Parameters.AddWithValue("@epf", TextBox7.Text.Trim())
            cmd.Parameters.AddWithValue("@ptax", TextBox8.Text.Trim())
            cmd.Parameters.AddWithValue("@grass", TextBox9.Text.Trim())
            cmd.Parameters.AddWithValue("@deduct", TextBox10.Text.Trim())
            cmd.Parameters.AddWithValue("@netamount", TextBox11.Text.Trim())
            cmd.Parameters.AddWithValue("@year", TextBox12.Text.Trim())
            cmd.Parameters.AddWithValue("@month", DropDownList2.SelectedValue)
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'TextBox10.Text = Val(TextBox7.Text) + Val(TextBox8.Text)
        'TextBox11.Text = Val(TextBox9.Text) - Val(TextBox10.Text)
    End Sub

    Protected Sub TextBox4_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox4.TextChanged

    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged
        'TextBox9.Text = Val(TextBox3.Text) + Val(TextBox4.Text) + Val(TextBox5.Text) + Val(TextBox6.Text)
        'TextBox4.Text = Val(TextBox1.Text) * 0.1
        'TextBox5.Text = Val(TextBox1.Text) * 0.05
        'TextBox6.Text = Val(TextBox1.Text) * 0.25


    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox2.TextChanged
        'TextBox3.Text = Val(TextBox1.Text) + Val(TextBox2.Text)
        'TextBox9.Text = Val(TextBox3.Text) + Val(TextBox4.Text) + Val(TextBox5.Text) + Val(TextBox6.Text)
    End Sub

    Protected Sub TextBox8_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox8.TextChanged

    End Sub

    Protected Sub TextBox11_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox11.TextChanged
        'TextBox11.Text = Val(TextBox9.Text) - Val(TextBox10.Text)
    End Sub

    Protected Sub TextBox9_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox9.TextChanged
        'TextBox9.Text = Val(TextBox3.Text) + Val(TextBox4.Text) + Val(TextBox5.Text) + Val(TextBox6.Text)
    End Sub

    Protected Sub TextBox10_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox10.TextChanged

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub
End Class
