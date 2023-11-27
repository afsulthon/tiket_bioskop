<div class="container-fluid">
  <button class="btn btn-sm btn-primary mb-3" data-toggle="modal" data-target="#tambah_barang"> <i class="fas fa-plus mr-2"></i>Tambah Film</button>
  <table class="table table-bordered">
    <tr class="text-center">
      <th>No.</th>
      <th>Judul Film</th>
      <th>Keterangan</th>
      <th>Sinopsis</th>
      <th>Harga</th>
      <th>Seat Tersedia</th>
      <th colspan="3">Aksi</th>
    </tr>
    <?php
    $no = 1;
    foreach ($barang as $brg) : ?>
      <tr>
        <td class="text-center"><?php echo $no++ ?></td>
        <td><?php echo $brg->nama_brg ?></td>
        <td><?php echo $brg->keterangan ?></td>
        <td><?php echo $brg->kategori ?></td>
        <td><?php echo $brg->harga ?></td>
        <td class="text-center"><?php echo $brg->stok ?></td>
        <td class="text-center">
          <?php echo anchor('admin/data_barang/detail/' . $brg->id_brg, '<div class="btn btn-success btn-sm"><i class="fas fa-search-plus"></i></div>') ?>
        </td>
        <td>
          <?php echo anchor('admin/data_barang/edit/' . $brg->id_brg, '<div class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></div>') ?>
        </td>
        <td>
          <?php echo anchor('admin/data_barang/hapus/' . $brg->id_brg, '<div class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></div>') ?>
        </td>
      </tr>
    <?php endforeach; ?>
  </table>
</div>

<!-- Modal -->
<div class="modal fade" id="tambah_barang" tabindex="-1" role="dialog" aria-labelledby="tambah_barangLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Film</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url() . 'admin/data_barang/tambah_aksi'; ?>" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <label for="Nama Barang">Judul Film</label>
            <input type="text" name="nama_brg" class="form-control">
          </div>
          <div class="form-group">
            <label for="Keterangan">Keterangan</label>
            <input type="text" name="keterangan" class="form-control">
          </div>
          <div class="form-group">
            <label for="Kategori">Sinopsis</label>
            <input type="text" name="kategori" class="form-control">
          </div>
          <div class="form-group">
            <label for="Harga">Harga</label>
            <input type="text" name="harga" class="form-control">
          </div>
          <div class="form-group">
            <label for="Stok">Jumlah Seat</label>
            <input type="text" name="stok" class="form-control">
          </div>
          <div class="form-group">
            <label for="Gambar Produk">Gambar Produk</label>
            <input type="file" name="gambar" class="form-control">
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
        <button type="submit" class="btn btn-primary">Tambah</button>
      </div>
      </form>
    </div>
  </div>
</div>