<%@ Page Title="" Language="VB" MasterPageFile="~/admin_login_master_page.master" AutoEventWireup="false" CodeFile="admin_login_page.aspx.vb" Inherits="admin_login_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 1012px">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/pic/256x256_Login Manager.png" 
        Height="209px" style="margin-left: 0px" Width="263px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /><br />&nbsp;
                <br />
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 533px; top: 207px; position: absolute; width: 99px; height: 21px" 
            Text="Enter Username"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="Usertxt" ErrorMessage="Enter Username" ForeColor="Red" 
            
            
            style="z-index: 1; left: 919px; top: 207px; position: absolute; width: 179px; height: 25px"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="Usertxt" runat="server" Height="27px" 
            style="margin-left: 430px" Width="251px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="passwordtxt" 
            runat="server" Height="27px" style="margin-left: 429px" Width="252px"></asp:TextBox>
        <br />
        &nbsp;<asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 534px; top: 252px; position: absolute; height: 26px; width: 100px" 
            Text="Enter Password"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
                <br __designer:mapid="1de" />
                <br __designer:mapid="1e0" />
        &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
        &nbsp;<br __designer:mapid="1e2" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
    <br />
                <asp:Button ID="loginbtn" runat="server" Height="44px" 
            style="margin-left: 491px; margin-right: 86px; margin-top: 0px" Text="Login" 
            Width="107px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="passwordtxt" ErrorMessage="Enter Password" ForeColor="Red" 
            
            
            
            style="z-index: 1; left: 925px; top: 246px; position: absolute; width: 127px; height: 24px;"></asp:RequiredFieldValidator>
</div>
</asp:Content>

