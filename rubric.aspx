﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="rubric.aspx.vb" Inherits="dlsmobile.rubric" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Rubric</title>
	<meta name="viewport" content="width=device-width, initial-scale=0.85; userscalable=yes;"  />
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
    
    <script type="text/javascript" src="assets/js/loadxmlout.js"></script>
    <script type="text/javascript" src="assets/js/loadxmldoc.js"></script>

</head>
<body>
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
			<span class="page_title">Rubric</span>
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
	</div>
 
   <div><h2>Rubric</h2>
       <select id="student">
           <option>Sally</option>
           <option>Jimmy</option>
           <option>Freddy</option>
       </select>
       
   </div>     
     <div id="rubric"> 
          
      <script type="text/javascript" charset="utf-8">

          function onDeviceReady() {
              
              var value = window.localStorage.getItem('rubric');
              $("#rubric").append(value).trigger("create");
              
              var rep = "<table id='rubtbl' class='rubrictable' style='width:100%'><thead><tr><td>Student</td>";
              //reads slider #
              var i = 1
              $.mobile.activePage.find('[type=number]')
                  .each(function () {
                      var self = this;
                      var code = $(self).attr("name");
                      rep = rep + "<td>" + code + "</td>";
                      i++;
                  });
              
              rep = rep + "</tr></thead><tbody><tr><td colspan='"+i+"'></td></tr></tbody></table>"
              $("#report").append(rep).trigger("create")
          }

          window.onload = onDeviceReady;
    </script>
         
         
         
     </div>
    <div>
        <a href="#popupDialog" id="submitbtn" data-transition="pop" data-role="button" data-rel="popup">Submit</a>
        <script>
            $("#submitbtn")
     .click(function () {
         slide();
     });

            function slide() {
                var count = 0;
                //var arr = [];
                var sdnt = $("#student option:selected").text();
                var rep = "<tr><td>" + sdnt + "</td>"
                
                $.mobile.activePage.find('[type=number]')
                    .each(function () {
                        var self = this;
                        var code = $(self).attr("name");
                        var score = $(self).val();
                        
                        rep = rep + "<td>"+score+"</td>"
                    });

                rep = rep + "</tr>"
                
                $("#rubtbl tbody:last").append(rep);//.trigger("create")
                
                $("#popupDialog").popup("open");
               }
            
            </script>
        
    </div>
        <div id="report">
            <h2>Class Report</h2>
            
        </div>
        <div id="export">
            <button>export</button>
        </div>
    <div data-role="popup" id="popupDialog" data-overlay-theme="a" data-theme="c" data-dismissible="false" style="max-width:400px;" class="ui-corner-all">
    <div data-role="header" data-theme="a" class="ui-corner-top">
        <h1>Alert</h1>
    </div>
   <div data-role="content" data-theme="d" class="ui-corner-bottom ui-content" style="text-align:center">
        
        <p>Student data added. Scroll down to view.</p>
        <a href="#" data-role="button" data-inline="true" data-rel="back" data-theme="c">OK</a>
        
    </div>
   </div>
<div data-role="popup" id="pop" data-overlay-theme="a" data-theme="c" data-dismissible="false" style="max-width:400px;" class="ui-corner-all">
    <div data-role="header" data-theme="a" class="ui-corner-top">
    
        <h1>Change Text</h1>
    </div>
    <div data-role="content" data-theme="d" class="ui-corner-bottom ui-content" style="text-align:center">
        
        <textarea id="txt" cols="20" rows="8" data-mini="true"></textarea>
        <a href="#" id="close" data-role="button" data-inline="true" data-rel="back" data-theme="c">OK</a>
        </div>
</div>
        
  </div>
   <script>
     var org;
     
     $(document).on('click', 'td', function () {
           $('#pop').popup('open');
           var cell = $(this).text();
           org = $(this);
           $('#txt').val(cell)

       });

       $('#close').on('click', function (event) {
           var newTXT = $('#txt').val()
           //alert(newTXT) 
           $(org).html(newTXT)
       });
    </script> 
</body>
</html>

