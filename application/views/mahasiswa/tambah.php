<div class="container">
    <div class="row mt-3">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Tambah Data Mahasiswa
                </div>
                <div class="card-body">
                    <?php if (validation_errors()) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?= validation_errors(); ?>
                        </div>
                    <?php endif; ?>
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" class="form-control" id="nama" name="nama">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="alamat">Alamat</label>
                            <input type="text" class="form-control" id="alamat" name="alamat">
                        </div>
                        <div class="form-group">
                            <label for="jurusan">Jurusan </label>
                            <select class="form-control" id="jurusan" name="jurusan">
                                <?php foreach ($jurusan as $jrs) : ?>
                                    <option value="<?= $jrs['id_jurusan']; ?>"><?= $jrs['jurusan']; ?></option>

                                <?php endforeach ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="jurusan">Dosen </label>
                            <select class="form-control" id="dosen" name="dosen">
                                <?php foreach ($dosen as $dsn) : ?>
                                    <option value="<?= $dsn['id_dosen']; ?>"><?= $dsn['dosen']; ?></option>

                                <?php endforeach ?>
                            </select>

                            <button type="submit" name="tambah" class="btn btn-primary float-right mt-3">Tambah Data</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>