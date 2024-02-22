<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

$nama=$_POST['nama'];
$nis=$_POST['nis'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$tanggal_lahir=$_POST['tanggal_lahir'];
$jurusan=$_POST['jurusan'];
$kelas=$_POST['kelas'];
$telepon=$_POST['telepon'];
$alamat=$_POST['alamat'];

include "../koneksi.php";

$simpan=$koneksi->query("insert into siswa(nama,nis,jenis_kelamin,tanggal_lahir,jurusan,kelas,telepon,alamat) 
                        values ('$nama', '$nis', '$jenis_kelamin', '$tanggal_lahir', '$jurusan', '$kelas', '$telepon', '$alamat')");

if($simpan==true){

    header("location:tampil-siswa.php?pesan=inputBerhasil");
} else{
    echo "Error";
}




?>