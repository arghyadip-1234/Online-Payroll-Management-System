<%@ Page Title="" Language="VB" MasterPageFile="~/admin_home_master_page.master" AutoEventWireup="false" CodeFile="check_leave_admin.aspx.vb" Inherits="check_leave_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 1200px">
        <table class="style4">
            <tr>
                <td colspan="2" style="background-color: #FFFF00">
                    Check Leave That apply stuff</td>
            </tr>
            <tr>
                <td class="style5" colspan="2">
                    <asp:Button ID="Button10" runat="server" Text="Permit" />
                    <asp:Button ID="Button11" runat="server" Text="Delete" />
                    <asp:Button ID="Button12" runat="server" Text="Pending" />
                    <br />
                    <asp:GridView ID="GridView1" runat="server">
                        <Columns>
                            <asp:CommandField 
                                ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                    Stuff ID&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 50px" 
                        Width="210px"></asp:TextBox>
                    <br />
                    Stuff Name&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 33px" 
                        Width="205px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="eltxt" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="mltxt" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="cltxt" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="cmltxt" runat="server" Visible="False"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

