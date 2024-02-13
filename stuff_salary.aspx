<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master_page.master" AutoEventWireup="false" CodeFile="stuff_salary.aspx.vb" Inherits="stuff_salary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 117%;
            height: 1005px;
        }
        .style14
        {
        }
        .style15
        {
            height: 86px;
        }
        .style17
        {
            height: 50px;
            width: 202px;
        }
        .style19
        {
            height: 50px;
            width: 205px;
        }
        .style16
        {
            height: 352px;
        }
        .style18
        {
            height: 352px;
            width: 202px;
        }
        .style20
        {
            height: 352px;
            width: 205px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style13">
        <tr>
            <td bgcolor="#FF5050" class="style14" colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
                    Text="Select Year"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="year" DataValueField="year" 
                    Height="16px" Width="173px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [year] FROM [salary] WHERE ([id] = @id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF6666" class="style15" colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" 
                    Text="Select Month"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="month" DataValueField="month" 
                    style="height: 22px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [month] FROM [salary] WHERE (([id] = @id) AND ([year] = @year))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="year" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="31px" Text="OK" Width="123px" />
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="4" 
                
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
                    Visible="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Size="17pt" Text="Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="2" 
                
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label5" runat="server" Font-Size="17pt" Text="Dept"></asp:Label>
                &nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style14" colspan="2" 
                
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label7" runat="server" Font-Size="17pt" Text="Desig:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label9" runat="server" Font-Size="17pt" Text="Basic:"></asp:Label>
                &nbsp;
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style14" colspan="2" 
                
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label11" runat="server" Font-Size="17pt" Text="G.P.:"></asp:Label>
                &nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style14" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label13" runat="server" Font-Size="17pt" Text="Basic+G.P.:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label15" runat="server" Font-Size="17pt" Text="Earning"></asp:Label>
            </td>
            <td class="style17" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label16" runat="server" Font-Size="17pt" Text="Amount"></asp:Label>
            </td>
            <td class="style19" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label17" runat="server" Font-Size="17pt" Text="Deduction"></asp:Label>
            </td>
            <td class="style14" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label36" runat="server" Font-Size="17pt" Text="Amount"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label37" runat="server" Font-Size="17pt" Text="Basic+G.P.:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label23" runat="server" Font-Size="17pt" Text="DA:"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label27" runat="server" Font-Size="17pt" Text="HRA:"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label29" runat="server" Text="Medical:"></asp:Label>
            </td>
            <td class="style18" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style20" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label21" runat="server" Font-Size="17pt" Text="EPF:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label25" runat="server" Font-Size="17pt" Text="P.TAX:"></asp:Label>
            </td>
            <td class="style16" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label31" runat="server" Font-Size="17pt" Text="Gross(A):"></asp:Label>
            </td>
            <td class="style17" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style19" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label33" runat="server" Font-Size="17pt" Text="Deduction(B)"></asp:Label>
            </td>
            <td class="style14" 
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="4" 
                
                style="border-style: groove; border-width: medium; background-color: #FF5050;">
                <asp:Label ID="Label35" runat="server" Font-Size="17pt" 
                    Text="Net Amount Payable(A-B):"></asp:Label>
                &nbsp;
                <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="4">
                <br />
            </td>
        </tr>
        </table>
    <br />
        <a href="#" onclick=" window.print(); return false">Print this page</a>
        <br />
</asp:Content>

