<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master_page.master" AutoEventWireup="false" CodeFile="change_password.aspx.vb" Inherits="change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 790px; margin-right: 0px">
        <table class="style4" style="height: 282px">
            <tr>
                <td colspan="2">
                    Change Password</td>
            </tr>
            <tr>
                <td class="style5">
                    Your ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Enter New Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Enter Confirm Password</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="236px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="*password do not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Change Password" Width="174px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

