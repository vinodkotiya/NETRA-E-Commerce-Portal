<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>NTPC NETRA</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
  	<meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
	<meta name="author" content="www.zerotheme.com">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="css/zerogrid.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/responsiveslides.css" />
	
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
<body class="is-loading">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"></asp:ScriptManager>

		<!-- Wrapper -->
	<div class="wrap-body">

<!--////////////////////////////////////Header-->
<header class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu" runat="server" >
			
			</div>
			<a href='index.html' class="logo"><img src="images/logo.png" /></a>
		</div>
	</div>
</header>
<div class="slider">
	<!-- Slideshow -->
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
				<img src="images/slideshow-image1.jpg" alt="">
				<div class="caption">
					<h1>NTPC NETRA</h1>
					<span >Online Services</span>
				</div>
			</li>
			<li>
				<img src="images/slideshow-image2.jpg" alt="">
				<div class="caption">
					<h1>Our Labs</h1>
					<span >Select the lab</span>
				</div>
			</li>
			<li>
				<img src="images/slideshow-image3.jpg" alt="">
				<div class="caption">
					<h1>Our Tests</h1>
					<span >Select the test</span>
				</div>
			</li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
         <asp:UpdatePanel ID="upAppraisal" runat="server" class="vinGredientLightblue">
              <ContentTemplate>
<div class="bg-theme">
	<div class="filter zerogrid">
		<h2 class="t-center">Quick Search the LAB/Test</h2>
		<div class="row">
            

			<div class="col-1-4">
				<div class="wrap-col">
                    	<span>Lab :</span><br/>
                    <asp:DropDownList ID="ddlLab" runat="server" DataTextField="lab" DataValueField="labid" AutoPostBack="true"  OnSelectedIndexChanged="ddlLab_SelectedIndexChanged"></asp:DropDownList>
				</div>
			</div>
			<div class="col-1-4">
				<div class="wrap-col">
					<span>Test :</span><br/>
					           <asp:DropDownList ID="ddlTest" runat="server" DataTextField="test" DataValueField="testid"></asp:DropDownList>
				</div>
			</div>
	
			<div class="col-1-4">
				<div class="wrap-col">
					<br>
                    <asp:Button ID="btnBook" runat="server" Text="Book Test" CssClass="mybutton" />
				</div>
			</div>
               
               
            
		</div>
	</div>
</div>
         </ContentTemplate>
                 <Triggers>       <asp:AsyncPostBackTrigger ControlID="ddlLab" EventName="SelectedIndexChanged" /></Triggers>
             </asp:UpdatePanel>
<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container clearfix">
		<div id="main-content">
            	<div class="wrap-box t-center" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>WELCOME TO NTPC NETRA ONLINE SERVICES</h2>
					</div>
					<strong>Scientific Support to NTPC Stations and to other utilities including international ones (on chargeable basis for external utilities)</strong>
					<p>Scientific support is provided in the areas of: Non destructive evaluation for health assessment and residual life assessment of plant components. NETRA has state of the art NDE facilities, expertise and provide advance scientific services to plants.
Recommendations for chemical cleaning of boilers and condensers, development of procedure and supervision during execution.
Corrosion analysis and control measures including following activities: corrosion audit, material selection, corrosion related failure analysis, acid dew point corrosion, design of cathodic protection systems, corrosion & fouling control of cooling waters, corrosion control of RCC structures, etc
Development of specifications and application procedure for new and maintenance coatings on power plant components
Support for analyzing boiler water chemistry and resin health analysis.
Analysis of high vibration problem and In-situ balancing of rotating equipment. Natural frequency test of Generator windings and L.P. rotor blades.
Detection of erosion and corrosion of LTSH/Economiser tubes.
Oil testing of all transformers for predictive maintenance
Advance failure analysis and root cause analysis of power plant components</p>
				</div>
			</div>
			<div class="wrap-box"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>Our LABS</h2>
					</div>	
					<div class="row" id ="divLab" runat="server">
               
					</div>
				</div>
			</div>
		
			<div class="wrap-box" ><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>Other Services</h2>
					</div>
					<div class="row">
						<div class="col-2-3">
							<div class="wrap-col">
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car1.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>Research & Development</h3></a>
													<%--<p>32,000 km €78,400</p>--%>
													<p>With its state-of-the art infrastructure and expertise, NETRA has made significant contributions to the power sector in the country for improved planning, operation and control of power systems.</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car8.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>Evaluation & Testing</h3></a>
												<%--	<p>32,000 km €78,400</p>--%>
													<p>With its quality of output on par with International standards NETRA offers specialized services on the performance, evaluation and certification of different kinds of power equipment </p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car2.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>Consultancy</h3></a>
												<%--	<p>32,000 km €78,400</p>--%>
													<p>NETRA offers expert consultancy services in the areas of Transmission and Distribution Systems, Power Quality, Energy Auditing, Conductor Vibration, Power System Instrumentation. </p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car3.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>Quality Certification</h3></a>
													<%--<p>32,000 km €78,400</p>--%>
													<p>PRI's laboratories are accredited under National Accreditation Board for Testing and Calibration Laboratories (NABL) as per ISO/IEC 17025 standards..</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car4.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>Reports</h3></a>
													<%--<p>32,000 km €78,400</p>--%>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
						</div>
						<div id="sidebar" class="col-1-3">
							<div class="wrap-col">
								<!---- Start Widget ---->
								<div class="widget">
									<div class="wid-header">
										<h5>About Us</h5>
									</div>
									<div class="wid-content">
										<p>As a leading player in the world energy sector, NTPC recognized the potential of cutting edge technology in further improving its services and efficiency. The company is fully aligned to the needs of adapting to emerging technologies and upgrading the technologies through research and development. The company is particularly sensitive to Research & Development and the paradigm shift which it can make. NETRA (NTPC Energy Technology Research Alliance) set up in 2009 is the outcome of this vision. </p>
										<a href="contact.aspx">Read More About Us</a>
									</div>
								</div>
                                <!---- Start Widget ---->
								<div class="widget">
									<div class="wid-header">
										<h5>Test Report</h5>
									</div>
									<div class="wid-content">
										<p>You can get the test reports from here . </p>
										<a href="#" class="button bt1">Get Reports</a>
									</div>
								</div>
								<!---- Start Widget ---->
								<div class="widget wid-post">
									<div class="wid-header">
										<h5>Latest News</h5>
									</div>
									<div class="wid-content">
										<div class="post">
											<a href="#"><img src="images/news1.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">R&D Conference</a></h5>
											   <span>2016, Delhi</span>
											</div>
										</div>
										<div class="post">
											<a href="#"><img src="images/news2.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">News 2</a></h5>
											  <span>Greater Noida</span>
											</div>
										</div>
										<div class="post">
											<a href="#"><img src="images/news3.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">News 3</a></h5>
											   <span>Noida</span>
											</div>
										</div>
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
			<div class="row" id="divFooter" runat="server">
				
			</div>
		</div>
	</div>
</footer>

</div>
		

	
    </form>
   
   
</body>
</html>
