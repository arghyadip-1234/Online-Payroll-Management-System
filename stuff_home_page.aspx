<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master_page.master" AutoEventWireup="false" CodeFile="stuff_home_page.aspx.vb" Inherits="stuff_home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 1134px; margin-right: 0px;">
        <p style="margin-left: 40px">
            Login as&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </p>
        <asp:GridView ID="GridView1" runat="server" Width="573px">
        </asp:GridView>
        <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="37px" 
        style="margin-left: 200px" Visible="False" Width="277px"></asp:TextBox>
    </div>
</asp:Content>

