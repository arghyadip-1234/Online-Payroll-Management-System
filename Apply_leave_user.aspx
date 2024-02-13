<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master_page.master" AutoEventWireup="false" CodeFile="Apply_leave_user.aspx.vb" Inherits="Apply_leave_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            height: 55px;
        }
        .style9
        {
            height: 42px;
            position: inherit;
            width: 199px;
        }
        .style8
        {
            height: 42px;
        }
        .style17
    {
        width: 199px;
    }
        .style18
        {
            height: 42px;
            width: 174px;
        }
        .style19
        {
            width: 174px;
        }
    .style20
    {
        width: 217px;
        height: 127px;
    }
        .style22
        {
            height: 97px;
        }
        .style23
        {
            height: 361px;
        }
        .style24
        {
            height: 430px;
        }
        .style25
        {
            width: 217px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 1076px">
    <table class="style4" style="height: 1035px">
        <tr>
            <td class="style22">
                <table class="style4" style="height: 22px; margin-top: 0px;">
                    <tr>
                        <td class="style20">
                            
                            <asp:Label ID="Label1" runat="server" Text="Your total leave is" 
                                Font-Bold="True" Font-Size="18pt"></asp:Label>                            
                            <br />
                            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 582px" 
                                Visible="False"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style23">
                <table class="style4" style="height: 293px">
                    <tr>
                        <td class="style5">
                            &nbsp;EL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="el" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            ML&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="ml" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            CL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="cl" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style25">
                            CCL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="cml" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <table class="style6">
                                <tr>
                                    <td class="style7" colspan="4" 
                                        style="border-style: solid; background-color: #009933;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Leave Balance( 
                                        till Last sanctioned leave application)</td>
                                </tr>
                                <tr>
                                    <td class="style9" style="border-style: solid; background-color: #FFFF00;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EL</td>
                                    <td class="style8" style="border-style: solid; background-color: #FFFF00;">
                                        ML</td>
                                    <td class="style8" style="border-style: solid; background-color: #FFFF00;">
                                        CL</td>
                                    <td class="style18" style="border-style: solid; background-color: #FFFF00;">
                                        CCL</td>
                                </tr>
                                <tr>
                                    <td class="style17" style="border-style: solid; background-color: #FF6699;">
                                        &nbsp;
                                        <asp:Label ID="eltext" runat="server" Text="Label"></asp:Label>
                                       
                                    </td>
                                    <td style="border-style: solid; background-color: #FF6699;">
                                        <asp:Label ID="mltxt" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td style="border-style: solid; background-color: #FF6699;">
                                        <asp:Label ID="cltxt" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td class="style19" style="border-style: solid; background-color: #FF6699;">
                                        <asp:Label ID="cmltxt" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td style="background-color: #CCFF99; font-size: 10px;" class="style24">
                &nbsp;<asp:Label ID="Label5" runat="server" Text="Leave Type" Font-Bold="True" 
                    Font-Size="13pt"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="178px">
                    <asp:ListItem>cl</asp:ListItem>
                    <asp:ListItem>ml</asp:ListItem>
                    <asp:ListItem>el</asp:ListItem>
                    <asp:ListItem>cml</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:TextBox ID="caltxt" runat="server" Visible="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Date From:" Font-Bold="True" 
                    Font-Size="13pt"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="144px" 
                    style="margin-left: 6px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" 
                    ImageUrl="~/pic/Capture.PNG" Width="36px" />
                <asp:Calendar ID="Calendar1" runat="server" style="margin-left: 385px" 
                    Visible="False" Width="105px"></asp:Calendar>
                <br />
                <asp:Label ID="Label7" runat="server" Text="To:" Font-Bold="True" 
                    Font-Size="13pt"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="156px" 
                    style="margin-left: 64px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" 
                    ImageUrl="~/pic/Capture.PNG" Width="33px" />
                <asp:Calendar ID="Calendar2" runat="server" style="margin-left: 388px" 
                    Visible="False" Width="66px"></asp:Calendar>
                <asp:Label ID="Label9" runat="server" Font-Size="13pt" Text="Total days:" 
                    Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 9px" 
                    Width="186px"></asp:TextBox>
                <br />
                <asp:Label ID="Label8" runat="server" Font-Size="13pt" Text="Reasoning:" 
                    Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Height="53px" Width="408px" 
                    style="margin-left: 6px; margin-top: 47px"></asp:TextBox>
&nbsp;
                <asp:Button ID="submit" runat="server" BackColor="#FF6600" Font-Bold="True" 
                    ForeColor="#CCFFFF" Height="44px" Text="Submit" Width="114px" 
                    style="margin-top: 6px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label10" runat="server" Text="Label" Font-Size="Small" 
                    ForeColor="#CC00CC"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

