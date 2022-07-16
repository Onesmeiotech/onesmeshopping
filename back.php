<?php
session_start();
error_reporting(0);
include('includes/config.php');

$query=mysqli_query($con,"SELECT * FROM transactions WHERE tx_ref='".$_GET['tx_ref']."'");
$transaction=mysqli_fetch_array($query);
if(strtoupper($_GET['status']) == 'SUCCESSFUL'){
mysqli_query($con,"update orders set orderStatus = '".strtoupper($_GET['status'])."' where id='".$transaction['order_id']."'");
mysqli_query($con,"update transactions set status = '".$_GET['status']."',transaction_id='".$_GET['transaction_id']."' where tx_ref='".$_GET['tx_ref']."'");

}
else{
    mysqli_query($con,"update transactions set status = '".$_GET['status']."' where tx_ref='".$_GET['tx_ref']."'");
}
header('Location: index.php');