<?php // var_dump($mahasiswa);  
?>
<?php //var_dump($dosen); 
?>

<div class="container">
    <div class="row mt-3">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    edit Data Mahasiswa
                </div>
                <div class="card-body">
                    <?php if (validation_errors()) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?= validation_errors(); ?>
                        </div>
                    <?php endif; ?>
                    <form action="" method="post">
                        <input type="hidden" name="id" value="<?= $mahasiswa['id']; ?>">
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" class="form-control" id="nama" name="nama" value="<?= $mahasiswa['nama']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" value="<?= $mahasiswa['email']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="alamat">Alamat</label>
                            <input type="text" class="form-control" id="alamat" name="alamat" value="<?= $mahasiswa['alamat']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="jurusan">Jurusan </label>
                            <select class="form-control" id="jurusan" name="jurusan">
                                <?php foreach ($jurusan as $jrs) : ?>
                                    <?php if ($jrs['jurusan'] == $mahasiswa['jurusan']) : ?>
                                        <option value="<?= $jrs['id_jurusan']; ?>" selected><?= $jrs['jurusan']; ?></option>
                                    <?php else : ?>
                                        <option value="<?= $jrs['id_jurusan']; ?>"><?= $jrs['jurusan']; ?></option>
                                    <?php endif; ?>
                                <?php endforeach ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="jurusan">Dosen </label>
                            <select class="form-control" id="dosen" name="dosen">
                                <?php foreach ($dosen as $dsn) : ?>
                                    <?php if ($dsn['dosen'] == $mahasiswa['dosen']) : ?>
                                        <option value="<?= $dsn['id_dosen']; ?>" selected><?= $dsn['dosen']; ?></option>
                                    <?php else : ?>
                                        <option value="<?= $dsn['id_dosen']; ?>"><?= $dsn['dosen']; ?></option>
                                    <?php endif; ?>
                                <?php endforeach ?>
                            </select>

                            <button type="submit" name="edit" class="btn btn-primary float-right mt-3">edit Data</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>