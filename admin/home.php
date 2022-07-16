<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
	
if(isset($_POST['submit']))
{
	$tati=$_POST['titile'];
	$well=$_POST['messagee'];
	$logoimage=$_FILES["logoimage"]["name"];
	$sliderimage=$_FILES["sliderimage"]["name"];
//for getting product id
$query=mysqli_query($con,"select max(id) as imgid from info");
	$result=mysqli_fetch_array($query);
	 $imageid=$result['imgid']+1;
	$dir="productimages/$imageid";
if(!is_dir($dir)){
		mkdir("productimages/".$imageid);
	}
	move_uploaded_file($_FILES["logoimage"]["tmp_name"],"productimages/$imageid/".$_FILES["logoimage"]["name"]);
	move_uploaded_file($_FILES["sliderimage"]["tmp_name"],"productimages/$imageid/".$_FILES["sliderimage"]["name"]);
$sql=mysqli_query($con,"insert into info(titile,message,Logoimage,sliderimage) values('$tati','$well','$logoimage','$sliderimage')");
$_SESSION['msg']="info Inserted Successfully !!";
}if(isset($_GET['del']))
{
        mysqli_query($con,"delete from info where id = '".$_GET['id']."'");
        $_SESSION['delmsg']="system information deleted!!";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" href="../brandsimage/og.png">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin|profile</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span9">
                <style>
                    #show{
                        color:white;
                    }
                </style>
					<div class="content">
<h1>WELCOME TO <strong id="show">LUX-Dei SHOPPING</strong>  DATA MANAGEMENT</h1>
						<div class="module">
							<div class="module-body">
							</div>
						</div>
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->
<?php include('include/footer.php');?>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
</body>
<?php  ?>