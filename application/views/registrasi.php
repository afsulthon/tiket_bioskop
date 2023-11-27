<body class="" style="background-color: #5200FF">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg col-lg-6 my-5 mx-auto">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Daftarkan akun</h1>
              </div>
              <form class="user" method="post" action="<?php echo base_url('registrasi/index') ?>">
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" placeholder="Nama Anda" name="nama">
                  <?php echo form_error('nama', '<div class="text-danger small ml-2">', '</div>') ?>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" placeholder="Username Anda" name="username">
                  <?php echo form_error('username', '<div class="text-danger small ml-2">', '</div>') ?>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" placeholder="Password" name="password_1">
                    <?php echo form_error('password_1', '<div class="text-danger small ml-2">', '</div>') ?>
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" placeholder="Ulangi Password" name="password_2">
                  </div>
                </div>
                <button type="submit" class="btn btn-user btn-block" style="background-color: #FFD600; color: #000000; font-weight: 700">Daftar</button>
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="<?php echo base_url('auth/login') ?>">
                  Sudah punya akun? Silakan login!
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>