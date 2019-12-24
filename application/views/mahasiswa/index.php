<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <?php if ($this->session->flashdata()) : ?>
        <div class="row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    Data <strong>berhasil</strong> <?= $this->session->flashdata('tambah'); ?>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <div class="row mt-3">
        <div class="col-lg-12">
            <h3>Daftar Mahasiswa</h3>
            <div class="row mb-3">
                <div class="col">
                    <a href="<?= base_url(); ?>mahasiswa/tambah" class="btn btn-primary">Tambah Data Mahasiswa</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <form action="<?= base_url('mahasiswa'); ?>" method="post">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="search keyword ...." name="keyword">
                            <div class="input-group-append">
                                <input class="btn btn-primary" name="submit" type="submit">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            Jumalah Data = <?= $total_rows; ?>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">NAMA </th>
                        <th scope="col">EMAIL</th>
                        <th scope="col">ALAMAT</th>
                        <th scope="col">JURUSAN</th>
                        <th scope="col">DOSEN </th>
                        <th scope="col">AKSI </th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (empty($mahasiswa)) : ?>
                        <tr>
                            <td colspan="7">
                                <div class="alert alert-danger" role="alert">
                                    Data tidak di temukan bossss ku !!!!!!!!!
                                </div>
                            </td>
                        </tr>

                    <?php endif; ?>
                    <?php foreach ($mahasiswa as $mhs) : ?>
                        <tr>
                            <th scope="row"><?= ++$start; ?></th>
                            <td><?= $mhs['nama'] ?></td>
                            <td><?= $mhs['email'] ?></td>
                            <td><?= $mhs['alamat'] ?></td>
                            <td><?= $mhs['jurusan'] ?></td>
                            <td><?= $mhs['dosen'] ?></td>
                            <td>
                                <a href="<?= base_url(); ?>mahasiswa/liatData/<?= $mhs['id']; ?>" class="badge badge-success">Liat</a>
                                <a href="<?= base_url(); ?>mahasiswa/hapus/<?= $mhs['id']; ?>" class="badge badge-danger" onclick="return confirm( 'anda yakin menghabus data?')">hapus</a>
                                <a href="<?= base_url(); ?>mahasiswa/editMahasiswa/<?= $mhs['id']; ?>" class="badge badge-warning">edit</a>
                            </td>
                        </tr>
                </tbody>
            <?php endforeach; ?>
            </table>
            <?php echo $this->pagination->create_links(); ?>




        </div>

    </div>
    <!-- /.container-fluid -->

</div>
</div>
<!-- End of Main Content -->