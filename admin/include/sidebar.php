<div class="span3">
					<div class="sidebar">


<ul id="you" class="widget widget-menu unstyled">
							<li class="me">
								<a class="collapsed" data-toggle="collapse" href="#togglePages">
									<i class="menu-icon icon-cog"></i>
									<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
									Order Management
								</a>
								<ul id="togglePages" class="collapse unstyled">
									<li>
										<a href="todays-orders.php">
											<i class="icon-tasks"></i>
											Today's Orders
  <?php
  $f1="00:00:00";
$from=date('Y-m-d')." ".$f1;
$t1="23:59:59";
$to=date('Y-m-d')." ".$t1;
 $result = mysqli_query($con,"SELECT * FROM Orders where orderDate Between '$from' and '$to'");
$num_rows1 = mysqli_num_rows($result);
{
?>
											<b class="label orange pull-right"><?php echo htmlentities($num_rows1); ?></b>
											<?php } ?>
										</a>
									</li>
									<li>
										<a href="pending-orders.php">
											<i class="icon-tasks"></i>
											Pending Orders
										<?php	
	$status='Delivered';									 
$ret = mysqli_query($con,"SELECT * FROM Orders where orderStatus!='$status' || orderStatus is null ");
$num = mysqli_num_rows($ret);
{?><b class="label orange pull-right"><?php echo htmlentities($num); ?></b>
<?php } ?>
										</a>
									</li>
									<li>
										<a href="delivered-orders.php">
											<i class="icon-inbox"></i>
											Delivered Orders
								<?php	
	$status='Delivered';									 
$rt = mysqli_query($con,"SELECT * FROM Orders where orderStatus='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label green pull-right"><?php echo htmlentities($num1); ?></b>
<?php } ?>

										</a>
									</li>
								</ul>
							</li>
							
							<li>
								<a href="manage-users.php">
									<i class="menu-icon icon-group"></i>
									Manage users
								</a>
							</li>
						</ul>
<style>
	.widget{
		list-style: none;
		text-decoration:none;
		background:black;
	}
	.widget li{
		list-style: none;
		text-decoration:none;
		background:black;
		padding-top:10px;
		padding-bottom:10px;
		padding-left:50px;
		padding-bottom:10px;
		margin-top:20px;
	}
	.widget a{
		text-decoration:none;
		font-size:15px;
		color:white;
	}
	.me a{
		color:white;
		background:black;
		margin-left:-40px;
	}
	#you a{
		color:white;
		background:black;
	}
</style>

						<ul class="widget">
                                <li><a href="category.php"><i class="menu-icon icon-tasks"></i> Create Category </a></li>
								</ul>
								<ul class="widget">
                                <li><a href="subcategory.php"><i class="menu-icon icon-tasks"></i>Sub Category </a></li>
								</ul>
								<ul class="widget">
                                <li><a href="insert-product.php"><i class="menu-icon icon-paste"></i>Insert Product </a></li>
								</ul>
								<ul class="widget">
                                <li><a href="manage-products.php"><i class="menu-icon icon-table"></i>Manage Products </a></li>
								</ul>
								<ul class="widget">
								<li><a href="system-info.php"><i class="menu-icon icon-table"></i>Manage system Info </a></li>
								</ul>
								<ul class="widget">
								<li><a href="manage-message.php"><i class="menu-icon icon-table"></i>Incomming Message</a></li>
								</ul>
                            </ul><!--/.widget-nav-->

						<ul id="you" class="widget widget-menu unstyled">
							<li><a href="user-logs.php"><i class="menu-icon icon-tasks"></i>User Login Log </a></li>
							
							<li>
								<a href="logout.php">
									<i class="menu-icon icon-signout"></i>
									Logout
								</a>
							</li>
						</ul>

					</div><!--/.sidebar-->
				</div><!--/.span3-->
