<?php 
require 'koneksi.php'; 
require 'function.php'; 

$data = getAllSiswa($conn);
$isNull = false;

if (is_null($data)) {
    $isNull = true;
}
$response = json_encode(compact('isNull', 'data'));

header("Content-Type: application/json");
echo $response;