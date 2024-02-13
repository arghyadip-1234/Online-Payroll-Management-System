<%@ Page Title="" Language="VB" MasterPageFile="~/admin_home_master_page.master" AutoEventWireup="false" CodeFile="basic_info.aspx.vb" Inherits="basic_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            margin-left: 80px;
        }
        .style8
        {
            width: 255px;
        }
        .style9
        {
            width: 260px;
            margin-left: 40px;
        }
        .style10
        {
            width: 891px;
            margin-left: 80px;
            height: 209px;
        }
        .style13
        {
            margin-left: 120px;
        }
        .style15
        {
            width: 88%;
            height: 147px;
        }
        .style19
        {
            width: 80px;
        }
        .style21
        {
        }
        .style22
        {
            width: 93px;
        }
        .style23
        {
            width: 116px;
        }
        .style25
        {
            margin-left: 80px;
        }
    .style27
    {
        margin-left: 80px;
    }
    .style28
    {
        margin-left: 80px;
        height: 26px;
    }
    .style29
    {
        width: 260px;
        height: 26px;
    }
    .style30
    {
        margin-left: 120px;
        height: 26px;
        width: 230px;
    }
    .style31
    {
        margin-left: 80px;
        height: 23px;
    }
    .style32
    {
        width: 260px;
        height: 23px;
    }
    .style33
    {
        margin-left: 120px;
        height: 23px;
        width: 230px;
    }
        .style34
        {
            margin-left: 80px;
            height: 27px;
        }
        .style35
        {
            width: 260px;
            height: 27px;
        }
        .style36
        {
            margin-left: 120px;
            height: 27px;
        width: 230px;
    }
        .style37
        {
            margin-left: 80px;
            height: 29px;
            width: 143px;
        }
        .style38
        {
            height: 29px;
        }
        .style39
        {
            height: 23px;
        }
        .style40
        {
            width: 260px;
        }
        .style41
        {
            margin-left: 80px;
            width: 260px;
        }
        .style42
        {
            margin-left: 80px;
            height: 26px;
            width: 260px;
        }
        .style43
        {
            margin-left: 80px;
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 1346px; margin-right: 0px; width: 6px;"><table style="margin-right: 0px"><tr><td class="style26">
        <table style="margin-top: 0px"><tr><td class="style27" style="font-size: xx-large; font-weight: bold" 
                colspan="3">Basic Information</td>
        </tr>
        <tr>
            <td class="style31">
                </td>
            <td class="style32">
                </td>
            <td class="style33">
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style28" style="font-size: 17px; font-weight: bold">
                ID</td>
            <td class="style29">
                <asp:TextBox ID="idtxt" runat="server" Width="216px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                Name</td>
            <td class="style40">
                <asp:TextBox ID="nametxt" runat="server" Width="213px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:TextBox ID="eltxt" runat="server" Visible="False">56</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34" style="font-size: 17px; font-weight: bold">
                Department</td>
            <td class="style35">
                <asp:TextBox ID="dprttxt" runat="server" Width="208px"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="mltxt" runat="server" Visible="False">24</asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                Designation</td>
            <td class="style40">
                <asp:TextBox ID="desigtxt" runat="server" Width="208px"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                Date&nbsp; Of Joining</td>
            <td class="style40">
                <asp:TextBox ID="datejoiningtxt" runat="server" Width="208px"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="datejoiningtxt" ErrorMessage="Enter Date" 
                    style="z-index: 1; left: 638px; top: 246px; position: absolute; width: 135px" 
                    ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 784px; top: 241px; position: absolute; width: 95px" 
                    Text="(dd/mm/yyyy)"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                Date Of&nbsp; birth</td>
            <td class="style40">
                <asp:TextBox ID="datereturntxt" runat="server" Width="208px"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="datereturntxt" ErrorMessage="Enter birth date" 
                    style="z-index: 1; left: 635px; top: 292px; position: absolute; height: 26px; width: 154px" 
                    ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 777px; top: 294px; position: absolute; width: 95px" 
                    Text="(dd/mm/yyyy)"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style40">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                Father/Mother Name</td>
            <td class="style40">
                <asp:TextBox ID="parenttxt" runat="server" Width="208px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:TextBox ID="cltxt" runat="server" Visible="False">10.5</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="3" style="font-size: xx-large; font-weight: bold">
                Experiences in Years&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="cmltext" runat="server" Visible="False">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                Experiences Name</td>
            <td class="style9">
                <asp:DropDownList ID="ddexname" runat="server" AutoPostBack="True" 
                    Height="44px" Width="174px">
                    <asp:ListItem>Teaching</asp:ListItem>
                    <asp:ListItem>Research</asp:ListItem>
                    <asp:ListItem>Industry</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:Button ID="addexp" runat="server" Text="Add Experiences" Width="167px" />
            </td>
        </tr>
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                Experiences Year</td>
            <td class="style9">
                <asp:DropDownList ID="ddexyear" runat="server" AutoPostBack="True" 
                    Height="44px" Width="174px">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:Button ID="edit" runat="server" Text="Edit" Width="93px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="update" runat="server" Text="Update" />
&nbsp;</td>
        </tr>
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                From
            <td class="style41">
                <asp:TextBox ID="fromexptxt" runat="server" Width="208px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" 
                    ImageUrl="~/pic/Capture.PNG" Width="33px" />
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" 
                    Visible="False" Width="220px" CellPadding="1">
                    <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" 
                        ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" 
                        Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="218px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" />
                        <asp:BoundField DataField="ex_name" HeaderText="Ex. Name" />
                        <asp:BoundField DataField="ex_year" HeaderText="Ex.Year" />
                        <asp:BoundField DataField="ex_from" HeaderText="Ex Year From" />
                        <asp:BoundField DataField="ex_to" HeaderText="Ex. Year To" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style28" style="font-size: 17px; font-weight: bold">
                To</td>
            <td class="style42">
                <asp:TextBox ID="toexptxt" runat="server" Width="208px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="32px" 
                    ImageUrl="~/pic/Capture.PNG" Width="34px" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Visible="False" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td class="style28">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="3" style="font-size: xx-large; font-weight: bold">
                Academic Records</td>
        </tr>
        </table>
        <table>
            <tr>
                <td class="style10">
                    <table class="style15">
                        <tr>
                            <td class="style43" style="font-size: x-large; font-weight: bold">
                                Exam Name</td>
                            <td class="style21" style="font-size: x-large; font-weight: bold">
                                Board Name</td>
                            <td class="style22" style="font-size: x-large; font-weight: bold">
                                Year</td>
                            <td class="style19" style="font-size: x-large; font-weight: bold" colspan="2">
                                Marks(%)</td>
                            <td class="style23" style="font-size: x-large; font-weight: bold">
                                Division</td>
                            <td style="font-size: x-large; font-weight: bold">
                                Institute Name</td>
                            <td style="font-size: x-large; font-weight: bold">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style37">
                                <asp:Label ID="xname" runat="server" Text="X"></asp:Label>
                            </td>
                            <td class="style38">
                                <asp:TextBox ID="xbnametxt" runat="server" Width="126px"></asp:TextBox>
                               </td>
                            <td class="style38">
                                <asp:TextBox ID="xyeartxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style38" colspan="2">
                                <asp:TextBox ID="xmarkstxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style38">
                                <asp:TextBox ID="xdivisiontxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style38">
                                <asp:TextBox ID="xinsnametxt" runat="server" Width="161px"></asp:TextBox>
                            </td>
                            <td class="style38">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style43">
                                <asp:Label ID="xiiname" runat="server" Text="XII"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="xiibnametxt" runat="server" Width="126px"></asp:TextBox>
                               </td>
                            <td class="style21">
                                <asp:TextBox ID="xiiyeartxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21" colspan="2">
                                <asp:TextBox ID="xiimarkstxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="xiidivisiontxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="xiiinsnametxt" runat="server" Width="163px"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="style43">
                                <asp:Label ID="ugname" runat="server" Text="UG"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="ugbnametxt" runat="server" Width="126px"></asp:TextBox>
                               </td>
                            <td class="style21">
                                <asp:TextBox ID="ugyeartxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21" colspan="2">
                                <asp:TextBox ID="ugmarkstxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="ugdivisiontxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="uginsnametxt" runat="server" Width="162px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style43">
                                <asp:Label ID="pgname" runat="server" Text="PG"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="pgbnametxt" runat="server" Width="126px"></asp:TextBox>
                               </td>
                            <td class="style21">
                                <asp:TextBox ID="pgyeartxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21" colspan="2">
                                <asp:TextBox ID="pgmarkstxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="pgdivisiontxt" runat="server" Width="99px"></asp:TextBox>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="pginsnametxt" runat="server" Width="161px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style31" colspan="2">
                                Upload Your Photo</td>
                            <td class="style39" colspan="4">
        <table style="margin-top: 0px">
        <tr>
            <td class="style27" style="font-size: 17px; font-weight: bold">
                &nbsp;</td>
            <td class="style8">
                <asp:FileUpload ID="can_photo_fileupload" runat="server" Width="243px" />
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        </table>
                            </td>
                            <td class="style39">
                            </td>
                            <td class="style39">
                            </td>
                        </tr>
                        <tr>
                            <td class="style25" colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                            <td class="style25" colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                        </tr>
                        </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="exfromimgbtn0" runat="server" Height="65px" 
                        ImageUrl="~/pic/register.png" Width="368px" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Register ID" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </td></tr></table></div>
</asp:Content>

