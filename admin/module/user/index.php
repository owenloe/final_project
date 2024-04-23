 <!--sidebar end-->

 <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
 <!--main content start-->
<?php 
	$id = $_SESSION['admin']['id_member'];
	$hasil = $lihat -> member_edit($id);
?>
<h4>Profil Pengguna Aplikasi</h4>
<br>
<?php if(isset($_GET['success'])){?>
<div class="alert alert-success">
	<p>Edit Data Berhasil !</p>
</div>
<?php }?>
<?php if(isset($_GET['remove'])){?>
<div class="alert alert-danger">
	<p>Hapus Data Berhasil !</p>
</div>
<?php }?>
<div class="row">
	<div class="col-sm-7">
		<div class="card card-primary">
			<div class="card-header">
				<h5 class="mt-2"><i class="fa fa-user"></i> Kelola Pengguna </h5>
			</div>
			<div class="card-body">
				<div class="box-content">
					<form class="form-horizontal" method="POST" action="fungsi/edit/edit.php?profil=edit"
						enctype="multipart/form-data">
						<fieldset>
							<div class="control-group mb-3">
								<label class="control-label" for="typeahead">Nama </label>
								<div class="input-group">
									<input type="text" class="form-control" style="border-radius:0px;" name="nama"
										data-items="4" value="<?php echo $hasil['nm_member']; ?>"
										required="required" />
								</div>
							</div>
							<div class="control-group mb-4">
								<label class="control-label" for="typeahead">Email </label>
								<div class="input-group">
									<input type="email" class="form-control" style="border-radius:0px;" name="email"
										value="<?php echo $hasil['email']; ?>" required="required" />
								</div>
							</div>
							<div class="control-group mb-3">
								<label class="control-label" for="typeahead">Telepon </label>
								<div class="input-group">
									<input type="text" class="form-control" style="border-radius:0px;" name="tlp"
										value="<?php echo $hasil['telepon']; ?>" required="required" />
								</div>
							</div>
							<div class="control-group mb-3">
								<label class="control-label" for="typeahead">NIK ( KTP ) </label>
								<div class="input-group">
									<input type="text" class="form-control" style="border-radius:0px;" name="nik"
										value="<?php echo $hasil['NIK']; ?>" required="required" />
								</div>
							</div>
							<div class="control-group mb-3">
								<label class="control-label" for="typeahead">Alamat </label>
								<div class="controls">
									<textarea name="alamat" rows="3" class="form-control" style="border-radius:0px;"
										required="required"><?php echo $hasil['alamat_member']; ?></textarea>
								</div>
							</div>
							<input type="hidden" name="id" value="<?php echo $hasil['id_member']; ?>">
							<button class="btn btn-primary" name="btn" value="Tambah">
								<i class="fas fa-edit"></i> Ubah Profil
							</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-4">
		<div class="card card-primary">
			<div class="card-header">
				<h5 class="mt-2"><i class="fa fa-lock"></i> Ganti Password</h5>
			</div>
			<div class="card-body">
				<div class="box-content">
					<form class="form-horizontal" method="POST" action="fungsi/edit/edit.php?pass=ganti-pas">
    <fieldset>
        <div class="control-group mb-3">
    <label class="control-label" for="typeahead">Username </label>
    <div class="input-group">
        <input type="text" class="form-control" style="border-radius:0px;" name="user" value="<?php echo $hasil['user'];?>" readonly />
    </div>
</div>

        <div class="control-group mb-3">
    <label class="control-label" for="newPassword">Password Baru</label>
    <div class="input-group" style="position: relative;">
        <input type="password" class="form-control" placeholder="Enter Your New Password" id="newPassword" name="newPassword" required 
            style="padding-right: 50px;" /> <!-- padding for eye icon -->
        <button class="btn btn-outline-secondary toggle-password" type="button" data-input="newPassword"
            style="border: none; background: transparent; position: absolute; right: 0; z-index: 10; padding: 10px; height: 100%; outline: none;">
            <i class="fas fa-eye"></i>
        </button>
    </div>
</div>
<div class="control-group mb-3">
    <label class="control-label" for="confirmNewPassword">Konfirmasi Password Baru</label>
    <div class="input-group" style="position: relative;">
        <input type="password" class="form-control" placeholder="Confirm Your New Password" id="confirmNewPassword" name="confirmNewPassword" required
            style="padding-right: 50px;" /> <!-- padding for eye icon -->
        <button class="btn btn-outline-secondary toggle-password" type="button" data-input="confirmNewPassword"
            style="border: none; background: transparent; position: absolute; right: 0; z-index: 10; padding: 10px; height: 100%; outline: none;">
            <i class="fas fa-eye-slash"></i>
        </button>
    </div>
</div>

        <input type="hidden" class="form-control" style="border-radius:0px;" name="id" value="<?php echo $hasil['id_member'];?>" required />
        <button type="submit" class="btn btn-primary" name="proses"><i class="fas fa-edit"></i> Ubah Password</button>
    </fieldset>
</form>


				</div>
			</div>
		</div>
	</div>
</div>

<body>
	<script>
	document.querySelectorAll('.toggle-password').forEach(function(button) {
    button.addEventListener('click', function() {
        var inputId = this.getAttribute('data-input');
        var input = document.getElementById(inputId);
        if (input.type === 'password') {
            input.type = 'text';
            this.innerHTML = '<i class="fas fa-eye-slash"></i>'; // change icon to eye-slash
        } else {
            input.type = 'password';
            this.innerHTML = '<i class="fas fa-eye"></i>'; // change icon back to eye
        }
    });
});
</script>

</body>