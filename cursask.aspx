<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="cursask.aspx.vb" Inherits="dlsmobile.cursask" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="UTF-8" />
    <title>Saskatchewan</title>
	<meta name="viewport" content="width=device-width, initial-scale=0.85" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<link rel="stylesheet" href="assets/css/style.css" />
	<link rel="stylesheet" href="assets/css/owl.carousel.css" />
	<link rel="stylesheet" href="assets/css/owl.theme.css" />
	<link rel="stylesheet" href="assets/css/photoswipe.css" />
	<script type="text/javascript" src="assets/js/klass.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	<script type="text/javascript" src="assets/js/jstorage.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="assets/js/code.photoswipe.jquery-3.0.5.min.js"></script>
	<script src="assets/js/custom.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div data-role="page">
	<div data-role="panel" data-position="left" data-theme="a" data-display="push" id="left_panel">
		<ul data-role="listview" data-inset="false" data-theme="a">
			<li><div style="text-align: center;"><img src="assets/img/logo.png" alt="Logo" /></div></li>
			<li><a data-transition="slide" href="index.html"><img src="assets/img/menu-icons/home.png" alt="Home" class="ui-li-icon" />Home</a></li>
			<li id="menu_news" class="countable"><a data-transition="slide" data-count="3" href="cur.html"><img src="assets/img/menu-icons/news.png" alt="Curriculum" class="ui-li-icon" />Curriculum<span class="ui-li-count hidden accent-color"></span></a></li>
			<li id="menu_recipes" class="countable"><a data-transition="slide" data-count="2" href="planners.html"><img src="assets/img/menu-icons/star.png" alt="Planners" class="ui-li-icon" />Planners<span class="ui-li-count hidden accent-color"></span></a></li>
			<li id="menu_gallery" class="countable"><a data-transition="slide" data-count="0" href="features.html"><img src="assets/img/menu-icons/information.png" alt="Features" class="ui-li-icon" />Features<span class="ui-li-count hidden accent-color"></span></a></li>
            <li id="menu_video" class="countable"><a data-transition="slide" data-count="2" href="video.html"><img src="assets/img/menu-icons/video.png" alt="Video" class="ui-li-icon" />Tutorials<span class="ui-li-count hidden accent-color"></span></a></li>
			<li id="menu_blog" class="countable"><a data-transition="slide" data-count="3" href="blog.html"><img src="assets/img/menu-icons/blog.png" alt="Blog" class="ui-li-icon" />News<span class="ui-li-count hidden accent-color"></span></a></li>
            <li><a data-transition="slide" href="information.html"><img src="assets/img/menu-icons/information.png" alt="Information" class="ui-li-icon" />Contact</a></li>
		</ul>
		<div style="position: relative; top: 15px;">
			<p>Socialize</p>
			<a href="https://twitter.com/DLS_Canada"><img src="assets/img/panel/twitter.png" alt="Twitter" /></a>
			<a href="https://www.facebook.com/Digitallearnersolutions"><img src="assets/img/panel/facebook.png" alt="Facebook" /></a>
			<a href="https://plus.google.com/101568684619478372786"><img src="assets/img/panel/google.png" alt="Google+" /></a>
			<a href="https://www.youtube.com/user/DLSolutions2013"><img src="assets/img/panel/youtube.png" alt="YouTube" /></a>
		</div>
	</div>
	<div data-role="panel" data-theme="a" data-position="right" data-display="push" id="right_panel">
		<div style="text-align: center;">
			<h4 style="margin-top: 0px;">Share this page on:</h4>
			<div class="panel-social-wrap">
				<a class="facebook_share_link" title="Share link on Facebook" target="_blank" href="http://www.facebook.com/sharer/sharer.php?s=100&p[url]=http://www.digitallearnersolutions.com/m/&p[images][0]=&p[title]=Unit%20and%20Rubric%20Planner&p[summary]=" rel="nofollow">
					<div class="panel-social panel-social-twitter accent-color">
						<img src="assets/img/facebook.png" alt="Facebook" />
					</div>
				</a>
				<div class="panel-social-counter facebook_number"></div>
			</div>
			<div class="panel-social-wrap">
				<a class="twitter_share_link" title="Share link on Twitter" target="_blank" href="http://twitter.com/home?status=All%20teachers%20need%20to%20see%20this!%20http://www.digitallearnersolutions.com/m/%20" rel="nofollow">
					<div class="panel-social panel-social-facebook accent-color">
						<img src="assets/img/twitter.png" alt="Twitter" />
					</div>
				</a>
				<div class="panel-social-counter twitter_number"></div>
			</div>
			<div class="panel-social-wrap">
				<a class="google_share_link" title="Share link on Google+" target="_blank" href="https://plus.google.com/share?url=http://www.digitallearnersolutions.com/m/%20" rel="nofollow">
					<div class="panel-social panel-social-google accent-color">
						<img src="assets/img/google.png" alt="Google+" />
					</div>
				</a>
				<div class="panel-social-counter google_number"></div>
			</div>
		</div>
	</div>
	<div id="header" data-role="header" data-position="fixed" data-theme="c">
		<div class="header_wrapper">
			<a style="border-left: none;" class="header_button" href="#left_panel" data-inline="true" data-role="button" data-corners="false" data-theme="c">
				<img class="header-btn-image" style="width: 100%; height: 100%;" src="assets/img/menu.png" alt="Menu" />
				<span class="menu-btn-background"></span>
				<span class="counter-header hidden accent-color" style="color: #ffffff;"></span>
			</a>
			<span class="page_title">Saskatchewan Curriculum</span>
			<a style="float: right; border: none;" class="header_button" href="#" data-inline="true" data-rel="back" data-role="button" data-corners="false" data-theme="c">
				<img style="width: 100%; height: 100%;" src="assets/img/back.png" alt="Back" />
				<span class="btn-background"></span>
			</a>
			<a style="float: right;" class="header_button" href="#right_panel" data-inline="true" data-role="button" data-corners="false" data-theme="c">
				<img style="width: 100%; height: 100%;" src="assets/img/share.png" alt="Share" />
				<span class="btn-background share-btn-background"></span>
			</a>
			<div style="clear: both"></div>
		</div>
	</div><!-- /header -->
	<div data-role="content">
		<div class="container">
			<h1 style="text-align:center">Grade</h1>
            <p style="text-align:center"><asp:DropDownList ID="gradedd" runat="server" AutoPostBack="True" style="font-size: x-large; font-weight: 700">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>K</asp:ListItem>
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
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                </asp:DropDownList>

            </p>
            <h1 style="text-align:center">Subject</h1>
            <p style="text-align:center">
                <asp:DropDownList ID="subdd" runat="server" AutoPostBack="True" style="font-size: x-large; font-weight: 700">
                </asp:DropDownList>

            </p>
            <h1 style="text-align:center">Outcomes</h1>
            <p style="text-align:center">
                <asp:GridView ID="outGV" runat="server">
                </asp:GridView>

            </p>
            
            
		</div>
				<div>
					<h6 class="footer-text">DLS Copyright 2013. All rights reserved</h6>
				</div>
			</div><!-- /content -->
		</div><!-- /page -->
    </form>
</body>
</html>
