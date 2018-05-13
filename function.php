<?php

function getAllSiswa($conn){
    $sql = "SELECT tb_siswa.id AS siswa_id,
            tb_siswa.nama_siswa,
            tb_siswa.kelas_id,
            tb_siswa.nis_siswa,
            tb_kelas.nama_kelas
            FROM tb_siswa NATURAL JOIN tb_kelas";

    $query = $conn->query($sql);

    $result = null;
    while($data = $query->fetch_assoc()){
        // put ke variable result 
        $result[] = $data;
    }

    return $result;
}

function insertSiswa($conn, $request){
    $nama_siswa = $request['nama_siswa'];
    $nis_siswa = $request['nis_siswa'];
    $kelas_id = $request['kelas_id'];

    $sql = "INSERT INTO tb_siswa (nama_siswa, nis_siswa, kelas_id)
            VALUES ('$nama_siswa', '$nis_siswa', '$kelas_id')";

    $query = $conn->query($sql);
    $result = $query;

    return $result;
}

function updateSiswa($conn, $request){
    $siswa_id = $request['siswa_id'];
    $nama_siswa = $request['nama_siswa'];
    $nis_siswa = $request['nis_siswa'];
    $kelas_id = $request['kelas_id'];

    $sql = "UPDATE tb_siswa
            SET nama_siswa = '$nama_siswa', 
                nis_siswa = '$nis_siswa',
                kelas_id = '$kelas_id'
            WHERE id = '$siswa_id'";

    $query = $conn->query($sql);
    $result = $query;

    return $result;
}

function deleteSiswa($conn, $siswa_id){
    $sql = "DELETE FROM tb_siswa
            WHERE id = '$siswa_id'";
    $query = $conn->query($sql);
    $result = $query;

    return $result;
}
