<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

include "../koneksi.php";

$id=$_POST['guru_id'];
$nip=$_POST['nip'];
$nama=$_POST['nama'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$mata_pelajaran=$_POST['mata_pelajaran'];
$tingkat_pengajaran=$_POST['tingkat_pengajaran'];
$alamat=$_POST['alamat'];

$ubah=$koneksi->query("update guru set nip='$nip', nama='$nama', jenis_kelamin='$jenis_kelamin', mata_pelajaran='$mata_pelajaran', tingkat_pengajaran='$tingkat_pengajaran', alamat='$alamat' where guru_id='$id'");

if($ubah==true){

    header("location:tampil-guru.php?pesan=editBerhasil");
} else{
    echo "Error";
}

?>