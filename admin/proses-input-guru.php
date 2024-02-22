 <?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

$nip=$_POST['nip'];
$nama=$_POST['nama'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$mata_pelajaran=$_POST['mata_pelajaran'];
$tingkat_pengajaran=$_POST['tingkat_pengajaran'];
$alamat=$_POST['alamat'];

include "../koneksi.php";

$simpan=$koneksi->query("insert into guru(nip,nama,jenis_kelamin,mata_pelajaran,tingkat_pengajaran,alamat) 
                        values ('$nip', '$nama', '$jenis_kelamin', '$mata_pelajaran', '$tingkat_pengajaran', '$alamat')");

if($simpan==true){

    header("location:tampil-guru.php?pesan=inputBerhasil");
} else{
    echo "Error";
}

?>