<html>
   <head>
      <title>Menampilkan Data Tabel MySQL Dengan mysqli_fetch_array</title>
      <style>
         body {font-family:tahoma, arial}
         table {border-collapse: collapse}
         th, td {font-size: 13px; border: 1px solid #DEDEDE; padding: 3px 5px; color: #303030}
         th {background: #CCCCCC; font-size: 12px; border-color:#B0B0B0}
      </style>
   </head>
   <body>



 <h3>Tabel BARANG (mysqli_fetch_row)</h3>
      <table>
         <thead>
            <tr>
               <th>ID BARANG</th>
               <th>NAMA BARANG</th>
            

            </tr>
         </thead>
         <?php
          include 'koneksi.php';     
            $sql = 'SELECT  * FROM tb_barang';
            $query = mysqli_query($koneksi, $sql);    
            while ($row = mysqli_fetch_array($query))
            {
               ?>
         <tbody>
            <tr>
               <td><?php echo $row[0] ?></td>
               <td><?php echo $row[1] ?></td>
             
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>




       <h3>Tabel ADMINISTRASI (mysqli_fetch_row)</h3>
      <table>
         <thead>
            <tr>
               <th>ID ADMINISTRASI</th>
               <th>NAMA ADMINISTRASI</th>
           

            </tr>
         </thead>
         <?php
          include 'koneksi.php';     
            $sql = 'SELECT  * FROM tb_transaksi';
            $query = mysqli_query($koneksi, $sql);    
            while ($row = mysqli_fetch_array($query))
            {
               ?>
         <tbody>
            <tr>
               <td><?php echo $row[0] ?></td>
               <td><?php echo $row[1] ?></td>
          
             
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>



      <h3>Inner Join  (mysqli_fetch_array)</h3>
      <table>
         <thead>
            <tr>

               <th>NAMA BARANG</th>
               <th>NAMA ADMINISTRASI</th>
     
            
            </tr>
         </thead>
         <?php
            include 'koneksi.php';     
            $sql = 'SELECT id_barang,nama_barang,nama_administrasi FROM tb_barang INNER JOIN tb_administrasi on tb_barang.id_administrasi=tb_barang.id_administrasi';
            $query = mysqli_query($koneksi, $sql);    
            while ($row = mysqli_fetch_array($query))
            {
               ?>
         <tbody>
            <tr>
       
               <td><?php echo $row['nama_barang'] ?></td>
               <td><?php echo $row['nama_administrasi'] ?></td>
     
             
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>



      <h3>Outer Join  (mysqli_fetch_array)</h3>
      <table>
         <thead>
            <tr>

               <th>NAMA ADMINISTRASI</th>
               <th>NAMA BARANG</th>
             
            
            </tr>
         </thead>
         <?php
            include 'koneksi.php';     
            $sql = 'SELECT id_barang,nama_barang,nama_administrasi FROM tb_barang RIGHT OUTER JOIN  tb_administrasi on tb_barang.id_administrasi=tb_administrasi.id_administrasi';
            $query = mysqli_query($koneksi, $sql);    
            while ($row = mysqli_fetch_array($query))
            {
               ?>
         <tbody>
            <tr>
       
               <td><?php echo $row['nama_administrasi'] ?></td>
               <td><?php echo $row['nama_barang'] ?></td>
           
             
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>



   </body>
</html>