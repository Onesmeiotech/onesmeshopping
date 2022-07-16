<?php
session_start();
error_reporting(0);
include('includes/config.php');

$query=mysqli_query($con,"SELECT * FROM orders WHERE userId='".$_SESSION['id']."' and orderStatus is null");
$order=mysqli_fetch_array($query);

$reference = "payment_" . substr(hash('sha256', mt_rand() . microtime()), 0, 20);

mysqli_query($con,"insert into transactions
(order_id,tx_ref,transaction_id,status) 
values('".$order['id']."','$reference','','PENDING')");

    $curl = curl_init();
    $request = [
    'tx_ref' => $reference,
    'amount' => '100',
    'currency' => 'RWF',
    'payment_options' => 'Phone',
    'redirect_url' => 'http://localhost/shopping/back.php',
    'customer' => [
        'email' => $_SESSION['login'],
        'name' =>  $_SESSION['username']
    ],
    'meta' => [
        'price' => '100'
    ],
    'customizations' => [
        'title' => 'Ishyura igicuruzwa',
        'description' => 'Pay for your fees'
    ]
];
    $request = json_encode($request);
    curl_setopt_array($curl, array(
      CURLOPT_URL => "https://api.flutterwave.com/v3/payments",
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "POST",
      CURLOPT_POSTFIELDS => $request,
      CURLOPT_HTTPHEADER => array(
        "Authorization: Bearer FLWSECK-382f4c1c2a61ed059ceaa5501a060bf9-X",
        "Content-Type: application/json"
      ),
    ));
    // FLWSECK_TEST-cc17777a9b44854d432485713ad1dff4-X
    
    $response = curl_exec($curl);
    curl_close($curl);
    $extjs = json_decode($response,true);
    header('Location: '.$extjs['data']['link']);
    
?>