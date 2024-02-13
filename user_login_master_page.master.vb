
Partial Class user_login_master_page
    Inherits System.Web.UI.MasterPage

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("home_page.aspx")
    End Sub
End Class

