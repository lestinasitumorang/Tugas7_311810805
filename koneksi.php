<?php
$koneksi = mysqli_connect("localhost","root","","lestina_311810805");

// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database tidak berhasil : " , mysqli_connect_error();
}
?>
