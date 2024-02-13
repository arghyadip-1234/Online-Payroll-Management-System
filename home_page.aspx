<%@ Page Title="" Language="VB" MasterPageFile="~/home_master_page.master" AutoEventWireup="false" CodeFile="home_page.aspx.vb" Inherits="home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 765px">
      
      <head>
	<title>Javascript image slider</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Made with WOW Slider - Create beautiful, responsive image sliders in a few clicks. Awesome skins and animations. Javascript image slider" />
	
	<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->

</head>
<body>
	
	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li></li>
		<li></li>
		<li><img src="data1/images/1_3.jpg" alt="1 (3)" title="1 (3)" id="wows1_2"/></li>
		<li><img src="data1/images/1_4.jpg" alt="1 (4)" title="1 (4)" id="wows1_3"/></li>
		<li><a href="http://wowslider.com"><img src="data1/images/1_5.jpg" alt="responsive carousel" title="1 (5)" id="wows1_4"/></a></li>
		<li><img src="data1/images/1_6.jpg" alt="1 (6)" title="1 (6)" id="wows1_5"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="1 (1)"><span><img src="data1/tooltips/1_1.jpg" alt="1 (1)"/>1</span></a>
		<a href="#" title="1 (2)"><span><img src="data1/tooltips/1_2.jpg" alt="1 (2)"/>2</span></a>
		<a href="#" title="1 (3)"><span><img src="data1/tooltips/1_3.jpg" alt="1 (3)"/>3</span></a>
		<a href="#" title="1 (4)"><span><img src="data1/tooltips/1_4.jpg" alt="1 (4)"/>4</span></a>
		<a href="#" title="1 (5)"><span><img src="data1/tooltips/1_5.jpg" alt="1 (5)"/>5</span></a>
		<a href="#" title="1 (6)"><span><img src="data1/tooltips/1_6.jpg" alt="1 (6)"/>6</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">javascript image slider</a> by WOWSlider.com v8.0</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section -->

</body>
      
      
      
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/pic/back.jpg"
            Height="315px" style="margin-top: 17px">
            <br />
            <br />
            <br />
        </asp:Panel>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
            style="z-index: 1; left: 256px; top: 409px; position: absolute; height: 36px; width: 104px; right: 732px;" 
            Text="About Us"></asp:Label>
    </div>
</asp:Content>

