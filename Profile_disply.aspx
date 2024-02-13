<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master_page.master" AutoEventWireup="false" CodeFile="Profile_disply.aspx.vb" Inherits="Profile_disply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

  .yesPrint{ display: block !important; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="yesPrint" style="height: 1223px; margin-right: 0px;">
        <p>
        </p>
        <asp:Panel ID="Panel3" runat="server" 
            style="z-index: 1; left: 272px; top: 743px; position: absolute; height: 256px; width: 736px">
            <asp:Label ID="Label22" runat="server" 
                style="z-index: 1; left: 426px; top: 110px; position: absolute; width: 34px; height: 17px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label23" runat="server" 
                style="z-index: 1; left: 427px; top: 70px; position: absolute; height: 23px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label24" runat="server" 
                style="z-index: 1; left: 92px; top: 102px; position: absolute" Text="XII"></asp:Label>
            <asp:Label ID="Label25" runat="server" 
                style="z-index: 1; left: 95px; top: 59px; position: absolute" Text="X"></asp:Label>
            <asp:Label ID="Label26" runat="server" 
                style="z-index: 1; left: 530px; top: 113px; position: absolute; height: 24px; width: 36px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label27" runat="server" 
                style="z-index: 1; left: 217px; top: 147px; position: absolute; width: 37px; height: 21px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label28" runat="server" 
                style="z-index: 1; left: 625px; top: 72px; position: absolute; height: 21px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label29" runat="server" 
                style="z-index: 1; left: 323px; top: 68px; position: absolute" Text="Label"></asp:Label>
            <asp:Label ID="Label30" runat="server" 
                style="z-index: 1; left: 323px; top: 109px; position: absolute; height: 16px; width: 32px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label31" runat="server" 
                style="z-index: 1; left: 216px; top: 65px; position: absolute; width: 38px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label32" runat="server" 
                style="z-index: 1; left: 627px; top: 116px; position: absolute; height: 17px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label33" runat="server" 
                style="z-index: 1; left: 530px; top: 70px; position: absolute; width: 37px; height: 23px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label34" runat="server" 
                style="z-index: 1; left: 91px; top: 142px; position: absolute; height: 25px; width: 40px" 
                Text="UG"></asp:Label>
            <asp:Label ID="Label35" runat="server" 
                style="z-index: 1; left: 216px; top: 108px; position: absolute; height: 20px; width: 37px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label36" runat="server" 
                style="z-index: 1; left: 531px; top: 151px; position: absolute; height: 22px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label37" runat="server" 
                style="z-index: 1; left: 322px; top: 148px; position: absolute; height: 23px; right: 378px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label38" runat="server" 
                style="z-index: 1; left: 322px; top: 189px; position: absolute; width: 35px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label39" runat="server" 
                style="z-index: 1; left: 626px; top: 153px; position: absolute; height: 26px; right: 76px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label40" runat="server" 
                style="z-index: 1; left: 92px; top: 181px; position: absolute; width: 20px;" 
                Text="PG"></asp:Label>
            <asp:Label ID="Label41" runat="server" 
                style="z-index: 1; left: 629px; top: 192px; position: absolute; height: 19px; width: 38px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label42" runat="server" 
                style="z-index: 1; left: 424px; top: 192px; position: absolute" Text="Label"></asp:Label>
            <asp:Label ID="Label43" runat="server" 
                style="z-index: 1; left: 218px; top: 186px; position: absolute; width: 37px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label44" runat="server" Font-Bold="True" 
                style="z-index: 1; left: 40px; top: 4px; position: absolute; height: 21px; width: 139px; right: 557px;" 
                Text="Academic Records"></asp:Label>
            <asp:Label ID="Label45" runat="server" 
                style="z-index: 1; left: 426px; top: 151px; position: absolute; height: 26px; right: 276px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label46" runat="server" 
                style="z-index: 1; left: 533px; top: 195px; position: absolute; height: 19px; width: 41px;" 
                Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label49" runat="server" 
                style="z-index: 1; left: 203px; top: 31px; position: absolute; width: 83px; height: 17px; margin-bottom: 3px" 
                Text="Board Name"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label50" runat="server" 
                style="z-index: 1; left: 608px; top: 37px; position: absolute; width: 103px" 
                Text="Institute Name"></asp:Label>
            <asp:Label ID="Label51" runat="server" 
                style="z-index: 1; left: 532px; top: 36px; position: absolute" Text="Division"></asp:Label>
            <asp:Label ID="Label52" runat="server" 
                style="z-index: 1; left: 426px; top: 34px; position: absolute" Text="Marks"></asp:Label>
            <asp:Label ID="Label53" runat="server" 
                style="z-index: 1; left: 323px; top: 34px; position: absolute; width: 37px" 
                Text="Year"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" 
            style="z-index: 1; left: 282px; top: 100px; position: absolute; height: 328px; width: 749px">
            <asp:Label ID="Label1" runat="server" 
                style="z-index: 1; left: 100px; top: 154px; position: absolute; height: 20px; width: 60px" 
                Text="Name"></asp:Label>
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 253px; top: 157px; position: absolute; height: 19px; width: 171px; bottom: 152px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 100px; top: 181px; position: absolute; height: 21px; margin-right: 6px; width: 76px;" 
                Text="Department"></asp:Label>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 250px; top: 182px; position: absolute; width: 61px;" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 100px; top: 208px; position: absolute; height: 18px; width: 76px" 
                Text="Designation"></asp:Label>
            <asp:Label ID="Label7" runat="server" 
                style="z-index: 1; left: 98px; top: 233px; position: absolute; height: 26px; width: 112px" 
                Text="Date Of joining"></asp:Label>
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 251px; top: 237px; position: absolute; height: 22px; width: 41px" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label10" runat="server" 
                style="z-index: 1; left: 98px; top: 295px; position: absolute; height: 18px; width: 131px; right: 520px" 
                Text="Father/Mother Name"></asp:Label>
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 99px; top: 265px; position: absolute; width: 99px; height: 20px" 
                Text="Date Of Birth"></asp:Label>
            <asp:Label ID="Label12" runat="server" 
                style="z-index: 1; left: 251px; top: 296px; position: absolute; height: 22px; width: 60px" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label8" runat="server" 
                style="z-index: 1; left: 251px; top: 266px; position: absolute; height: 24px; width: 41px" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label6" runat="server" 
                style="z-index: 1; left: 251px; top: 208px; position: absolute; width: 68px; height: 24px" 
                Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label47" runat="server" Text="ID     "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label48" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="118px" Width="151px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        &nbsp;<br />
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
        <div class="yesPrint" style="height: 516px; margin-right: 0px; width: 717px;">
            <asp:Label ID="Label54" runat="server" Font-Bold="True" Font-Size="Medium" 
                style="z-index: 1; left: 295px; top: 477px; position: absolute; width: 151px" 
                Text="Experiences In Years"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="543px">
            </asp:GridView>
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
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        &nbsp;<br />
        <br />
        <a href="#" onclick=" window.print(); return false">Print this page</a>
        <br />
    </div>
</asp:Content>

