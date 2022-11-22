<%@ Page Language="VB" AutoEventWireup="false" CodeFile="labs.aspx.vb" Inherits="labs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NETRA LABS</title>

    <meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
	<meta name="author" content="www.zerotheme.com">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsiveslides.css">
	
	<script src="js/jquery-latest.min.js"></script>
	<script src="js/script.js"></script>
	<script src="js/jquery183.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script>
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 
		  $("#slider").responsiveSlides({
			auto: true,
			pager: false,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
		});
	</script>
	
	
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
   <div class="wrap-body">

<!--////////////////////////////////////Header-->
<header class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu" runat="server">
			</div>
			<a href='index.html' class="logo"><img src="images/logo.png" /></a>
		</div>
	</div>
</header>


<!--////////////////////////////////////Container-->
<section id="container">
	<div class="">
		<div class="wrap-container clearfix">
			<div id="main-content">
				<div class="wrap-box" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);"><!--Start Box-->
					<div class="zerogrid">
						<div class="header" id="divLabName" runat="server" >
						</div>	
						<div class="row">
							<div class="col-2-3">
								<div class="wrap-col">
									<div class="slider">
										<!-- Slideshow -->
										<div class="callbacks_container">
											<ul class="rslides" id="slider" runat="server">
												
											</ul>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
							<div class="col-1-3">
								<div class="wrap-col">
									<p  class="price">Lab Detail </p>
									<ul class="specs" id="divspecs" runat="server">
										
										</ul>
                                    <p>Selected Test</p>
                                             <asp:DropDownList ID="ddlTest" runat="server" DataTextField="test" AutoPostBack="true" DataValueField="testid"></asp:DropDownList>
                                    <br />
                                      <asp:Button ID="btnBook" runat="server" Text="Book Test" CssClass="mybutton" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="wrap-box">
					<div class="zerogrid">
						<div class="row">
							<div class="col-2-3">
								<div class="wrap-col">
									<div class="info" id="divinfo" runat="server" >
										<%--<h2 class="h3">Feature set</h2>
										
										<p>ABS, Auxiliary heating, Central locking, Cruise control, Electric heated seats, Electric windows, ESP, Four wheel drive, Immobilizer, Leather seats, Navigation system, Parking sensors, Power Assisted Steering, Sunroof, Trailer coupling, Xenon headlights</p>--%>
									</div><!-- /.post -->

									<div class="info"  id="divDetail" runat="server" >
										
									</div><!-- /.post -->
								</div>
							</div>
							<div class="col-1-3">
								<div class="wrap-col">
									<div class="info">
										<h3>FAQ</h3>
										<ul class="specs">
											<li><span>Call</span> <strong>+91 0120 9999999</strong></li>
											<li><span>Help</span> <strong>Click to Download</strong></li>
											
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!--////////////////////////////////////Footer-->
<footer>
	<div class="zerogrid">
		<div class="wrap-footer">
			<div class="row" id="divfooter" runat="server" >
			</div>
		</div>
	</div>
</footer>

</div>
    </form>
</body>
</html>
