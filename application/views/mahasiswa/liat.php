<!-- Page Heading -->
<div class="container-fluid">



    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row mt-3">
        <div class="col md-6">
            <div class="container md-4">
                <div class="col md-6">
                    <div class="card">
                        <h5 class="card-header">Data detail </h5>
                        <div class="card-body">
                            <h5 class="card-title">NAMA : <span><?= $mahasiswa['nama']; ?></span></h5>
                            <p class="card-text">ALAMAT : <span><?= $mahasiswa['alamat']; ?></span></p>
                            <p class="card-text">EMAIL: <span><?= $mahasiswa['email']; ?></span></p>
                            <p class="card-text">JURUSAN : <span><?= $mahasiswa['jurusan']; ?></span></p>
                            <p class="card-text">DOSEN : <span><?= $mahasiswa['dosen']; ?></span></p>
                            <a href="<?= base_url(); ?>mahasiswa" class="btn btn-primary">Kembali</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>