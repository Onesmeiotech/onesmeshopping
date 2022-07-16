<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">
	    <title>lux contact us</title>
	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">
		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<!-- Demo Purpose Only. Should be removed in production : END -->
		<!-- Icons/Glyphs -->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		<!-- Favicon -->
		<link rel="shortcut icon" href="brandsimage/og.png">
		<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body class="cnt-home">
<header class="header-style-1">
	<!-- ============================================== TOP MENU ============================================== -->
<?php include('includes/top-header.php');?>
<!-- ============================================== TOP MENU : END ============================================== -->
<?php include('includes/main-header.php');?>
	<!-- ============================================== NAVBAR ============================================== -->
<?php include('includes/menu-bar.php');?>
<!-- ============================================== NAVBAR : END ============================================== -->
</header>
<!-- ============================================== HEADER : END ============================================== -->
</div><!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
	<div class='container'>
		<div class='row outer-bottom-sm'>
			<div class='col-md-3 sidebar'>
  <!-- ================================== TOP NAVIGATION ================================== -->
<div class="side-menu animate-dropdown outer-bottom-xs">       
<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-phone-justify fa-fw"></i>Contact us</div>        
    <nav class="yamm megamenu-horizontal" role="navigation">
        <ul class="nav">
            <li class="dropdown menu-item">
			</li>
		</ul>
    </nav>
</div>
</div><!-- /.side-menu -->
<style>
	.widgea{
		color:blue;
	}
	.sawa{
		font-size:18px;
	}
	.sawa span{
		font-size:18px;
		color:blue;
	}
	.sawa2{
		font-size:16px;
		color:black;
	}
	.sasa{
		color: #000;
	}
	.meme{
		background:green;
	}
</style>
<!-- ================================== TOP NAVIGATION : END ================================== -->
 <div class="sidebar-module-container">
	<h3 class="sasa">shop with lux:</h3>
	    <div class="sidebar-filter">
<!-- ============================================== SIDEBAR CATEGORY ============================================== -->
<div class="sidebar-widget wow fadeInUp outer-bottom-xs ">
	<div class="widget-header m-t-4">
		<h4 class="widgea">We thank you for doing business with us.</h4>
	</div>
	<div class="sidebar-widget-body m-t-10">
	        <p class="sawa">we work hard erevy day in order to meet our client need and we are subjected
				 every day to change where it is benefit
				for our client centered busines.
			</p>
	</div><!-- /.sidebar-widget-body -->
</div><!-- /.sidebar-widget -->
<!-- ============================================== COLOR: END ============================================== -->
  </div><!-- /.sidebar-filter -->
	    </div><!-- /.sidebar-module-container -->
            </div><!-- /.sidebar -->


			     <div class="row">
						<div class="col-lg-6 col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="main-content-label mg-b-5">
										<p class="sawa">contact Lux company for more information about products <span>(+250)787971182</span></p>
										</div>
										<p class="sawa2">Your trust is not something we hold for granted 
										but it is a treasure that we hold dear to our hearts glooming, it very day sothat it can flourish into a community platform or better yet a family platform of mutual business. </p>
										<div id="wizard1">
										<h3>Personal Information</h3>
										<section>
										<?php
										session_start();
										include('include/config.php');
										if(isset($_POST['submit']))
										{
											$name=$_POST['fullname'];
											$email=$_POST['ema'];
											$phone=$_POST['fofo'];
											$address=$_POST['ade'];
											$message=$_POST['mesa'];
										$sql=mysqli_query($con,"insert into message(Name,Email,Phone,Address,Message) values('$name','$email','$phone','$address','$message')");
										$_SESSION['delmsg']="message cent successfully!";
										}
										
										?>
											<form action="contact.php" method="post">
											<div class="control-group form-group">
												<label class="form-label">Full Name</label>
												<input type="text" name="fullname" class="form-control required" placeholder="Names">
											</div>
											<div class="control-group form-group">
												<label class="form-label">Email</label>
												<input type="email" name="ema" class="form-control required" placeholder="Email Address">
											</div>
											<div class="control-group form-group">
												<label class="form-label">Phone Number</label>
												<input type="number" name="fofo" class="form-control required" placeholder="Number">
											</div>
											<div class="control-group form-group mb-0">
												<label class="form-label">Address</label>
												<input type="text" name="ade" class="form-control required" placeholder="Address">
											</div>
											<div class="control-group form-group mb-0">
												<label class="form-label">Message</label>
										    <div class="col-lg">
											<textarea class="form-control" name="mesa" placeholder="Textarea" rows="3"></textarea>
										   </div><br>
										   <center>
											<button type="submit" name="submit" class=" btn btn-primary">SEND</button>
											</center>
											</form>
										</section>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /row -->
			</div>
		<?php include('includes/brands-slider.php');?>
</div>
</div>
<?php include('includes/footer.php');?>
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>
	<!-- For demo purposes – can be removed on production -->
	<script src="switchstylesheet/switchstylesheet.js"></script>
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->
</body>
</html>