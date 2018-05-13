<?php 
require 'koneksi.php'; 
require 'function.php'; 
// validasi
if (empty($_GET['siswa_id'])) {
    $response = json_encode([
                            'isSuccess' => true, 
                            'msg' => "Siswa id tidak boleh kosong"
                        ]);
    header("Content-Type: application/json");
    echo $response;
    return;
}
$isSuccess = deleteSiswa($conn, $_GET['siswa_id']);
$msg = "Berhasil dihapus";

if (is_null($isSuccess)) {
    $isSuccess = true;
    $msg = "Gagal menghapus";
}
$response = json_encode(compact('isSuccess', 'msg'));

header("Content-Type: application/json");
echo $response;