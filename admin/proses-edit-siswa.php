<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

include "../koneksi.php";

$id=$_POST['siswa_id'];
$nama=$_POST['nama'];
$nis=$_POST['jenis_kelamin'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$tanggal_lahir=$_POST['tanggal_lahir'];
$jurusan=$_POST['jurusan'];
$kelas=$_POST['kelas'];
$telepon=$_POST['telepon'];
$alamat=$_POST['alamat'];

$ubah=$koneksi->query("update siswa set nama='$nama', nis='$nis', jenis_kelamin='$jenis_kelamin', tanggal_lahir='$tanggal_lahir', jurusan='$jurusan', kelas='$kelas', telepon='$telepon', alamat='$alamat' where siswa_id='$id'");

if($ubah==true){

    header("location:tampil-siswa.php?pesan=editBerhasil");
} else{
    echo "Error";
}

?>