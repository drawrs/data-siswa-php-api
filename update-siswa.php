<?php 
require 'koneksi.php'; 
require 'function.php'; 
// validasi
if (empty($_GET['siswa_id']) || empty($_GET['nama_siswa']) || empty($_GET['nis_siswa']) || empty($_GET['kelas_id'])) {
    $response = json_encode([
                            'isSuccess' => false, 
                            'msg' => "Data yang anda bawa tidak boleh kosong"
                        ]);
    header("Content-Type: application/json");
    echo $response;
    return;
}
$isSuccess = updateSiswa($conn, $_GET);
$msg = "Berhasil diupdate";

if (is_null($isSuccess)) {
    $isSuccess = true;
    $msg = "Gagal mengupdate";
}
$response = json_encode(compact('isSuccess', 'msg'));

header("Content-Type: application/json");
echo $response;