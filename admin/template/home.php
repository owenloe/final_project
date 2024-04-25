<h3>Dashboard</h3>
<br/>
<?php 
	$sql=" select * from barang where stok <= 3";
	$row = $config -> prepare($sql);
	$row -> execute();
	$r = $row -> rowCount();
	if($r > 0){
?>

<?php
		echo "
		<div class='alert alert-warning'>
			<span class='glyphicon glyphicon-info-sign'></span> Ada <span style='color:red'>$r</span> barang yang Stok tersisa sudah kurang dari 3 items. silahkan pesan lagi !!
			<span class='pull-right'><a href='index.php?page=barang&stok=yes'>Tabel Barang <i class='fa fa-angle-double-right'></i></a></span>
		</div>
		";	
	}
?>
<?php $hasil_barang = $lihat -> barang_row();?>
<?php $hasil_kategori = $lihat -> kategori_row();?>
<?php $stok = $lihat -> barang_stok_row();?>
<?php $jual = $lihat -> jual_row();?>
<div class="row">
    <div class="col-md-3 mb-3" style="padding-right: 15px; padding-left: 15px;">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h6 class="pt-2"><i class="fas fa-cubes"></i> Barang</h6>
            </div>
            <div class="card-body">
                <center><h1><?php echo number_format($hasil_barang); ?></h1></center>
            </div>
            <div class="card-footer">
                <a href='index.php?page=barang'>List Barang <i class='fa fa-angle-double-right'></i></a>
            </div>
        </div>
    </div>
    <div class="col-md-3 mb-3" style="padding-right: 15px; padding-left: 15px;">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h6 class="pt-2"><i class="fas fa-upload"></i> Telah Terjual</h6>
            </div>
            <div class="card-body">
                <center><h1><?php echo number_format($jual['stok']); ?></h1></center>
            </div>
            <div class="card-footer">
                <a href='index.php?page=laporan'>List Penjualan <i class='fa fa-angle-double-right'></i></a>
            </div>
        </div>
    </div>
    <div class="col-md-3 mb-3" style="padding-right: 15px; padding-left: 15px;">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h6 class="pt-2"><i class="fa fa-bookmark"></i> Kategori Barang</h6>
            </div>
            <div class="card-body">
                <center><h1><?php echo number_format($hasil_kategori); ?></h1></center>
            </div>
            <div class="card-footer">
                <a href='index.php?page=kategori'>List Kategori <i class='fa fa-angle-double-right'></i></a>
            </div>
        </div>
    </div>
    <!-- Add another card if needed, ensuring it uses col-md-3 and the total does not exceed 12 columns in a row -->
    <?php 
    date_default_timezone_set('Your/Timezone'); // Set the appropriate timezone

$bulan_tes = array(
    '01' => "Januari",
    '02' => "Februari",
    '03' => "Maret",
    '04' => "April",
    '05' => "Mei",
    '06' => "Juni",
    '07' => "Juli",
    '08' => "Agustus",
    '09' => "September",
    '10' => "Oktober",
    '11' => "November",
    '12' => "Desember"
);


    $now = date('Y-m');
    $bulan_sekarang = date('m');
    $tahun_sekarang = date('Y');

    $hasil = []; // Initialize to ensure it has a value in case of no data condition

    // Check if a specific month and year have been requested, otherwise use current month and year
    if(!empty($_POST['bln']) && !empty($_POST['thn'])) {
        $periode = $_POST['bln'] . '-' . $_POST['thn'];
        $hasil = $lihat->periode_jual($periode);
    } else {
        $periode = $bulan_sekarang . '-' . $tahun_sekarang;
        $hasil = $lihat->periode_jual($periode);
    }

    $bayar = 0;
    $modal = 0;

    foreach($hasil as $isi) {
        $bayar += $isi['total'];
        $modal += $isi['harga_beli'] * $isi['jumlah'];
    }

    $profit = $bayar - $modal;
?>

<div class="col-md-3 mb-3" style="padding-right: 15px; padding-left: 15px;">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h6 class="pt-2"><i class="fa fa-dollar-sign"></i> Profit Bulanan <?= $bulan_tes[$bulan_sekarang]; ?> <?= $tahun_sekarang; ?></h6>
        </div>
        <div class="card-body">
            <center>
                <?php
$profit_formatted = number_format($profit); // Format profit for display
$text_color = $profit >= 0 ? 'green' : 'red'; // Determine text color based on profit

// Output the profit with appropriate color
echo "<h3 style='color: $text_color;'>Rp.$profit_formatted,-</h3>";
?>

            </center>
        </div>
        <div class="card-footer">
            <a href='index.php?page=laporan'>Lihat Laporan <i class='fa fa-angle-double-right'></i></a>
        </div>
    </div>
</div>


</div>
