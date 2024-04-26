<?php 
	@ob_start();
	session_start();
	if(!empty($_SESSION['admin'])){ }else{
		echo '<script>window.location="login.php";</script>';
        exit;
	}
	require 'config.php';
	include $view;
	$lihat = new view($config);
	$toko = $lihat -> toko();
	$hsl = $lihat -> penjualan();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Print</title>
</head>
<body onload="window.print();">
    <div style="text-align: center; margin-top: 50px;">
        <h2 style="color: #333; font-size:50px;"><?php echo $toko['nama_toko']; ?></h2>
        <div style="text-align: left; margin-left: 150px;"> <!-- Adjust margin as needed -->
    <p><?php echo $toko['alamat_toko']; ?></p>
    <p>Tanggal: <?php echo date("j F Y, G:i"); ?></p>
    <p>Kasir: <?php echo htmlentities($_GET['nm_member']); ?></p>
</div>
<div>
            <div style="position: absolute; left: 1120px; top: 110px;">
            <img src="/final_project/CEM-60032.png" alt="Company Logo" style="max-width: 130px; max-height: 130px; ">
        </div>
</div>


        <table style="margin: auto; border-collapse: collapse; width: 80%;">
            <tr>
                <th style="border: 1px solid #ddd; padding: 8px; background-color: #4e73de; color: white;">No.</th>
                <th style="border: 1px solid #ddd; padding: 8px; background-color: #4e73de; color: white;">Barang</th>
                <th style="border: 1px solid #ddd; padding: 8px; background-color: #4e73de; color: white;">Jumlah</th>
                <th style="border: 1px solid #ddd; padding: 8px; background-color: #4e73de; color: white;">Total</th>
            </tr>
            <?php $no = 1; foreach ($hsl as $isi) { ?>
            <tr style="background-color: <?php echo $no % 2 === 0 ? '#f2f2f2' : 'none'; ?>;">
                <td style="border: 1px solid #ddd; padding: 8px;"><?php echo $no; ?></td>
                <td style="border: 1px solid #ddd; padding: 8px;"><?php echo $isi['nama_barang']; ?></td>
                <td style="border: 1px solid #ddd; padding: 8px;"><?php echo $isi['jumlah']; ?></td>
                <td style="border: 1px solid #ddd; padding: 8px;"><?php echo "Rp. " . number_format($isi['total'], 2, ',', '.'); ?></td>
            </tr>
            <?php $no++; } ?>
        </table>

        <div style="text-align: right; margin-top: 20px; margin-right: 20%;">
            <?php $hasil = $lihat -> jumlah(); ?>
						Total : Rp.<?php echo number_format($hasil['bayar']);?>,
            <p>Bayar: <?php echo "Rp. " . number_format(htmlentities($_GET['bayar']), 2, ',', '.'); ?>,-</p>
            <p>Kembali: <?php echo "Rp. " . number_format(htmlentities($_GET['kembali']), 2, ',', '.'); ?>,-</p>
        </div>

        <p style="margin-top: 50px; color: #333;font-size: 30px;">Terima Kasih Telah Berbelanja di Toko Kami!</p>
    </div>
</body>
</html>
