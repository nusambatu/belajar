<div class="container-fluid">
<div>
Jumalah Data = <?= $total_rows; ?>
     <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">NO</th>
                        <th scope="col">NAMA OPD</th>
                        <th scope="col">NAMA PAKET</th>
                        <th scope="col">PAGU</th>
                        <th scope="col">METODE</th>
                        <th scope="col">SUMBER DANA </th>
                        <th scope="col">AKSI </th>
                    </tr>
                    
                </thead>
                <tbody>
             
                   <?php foreach ($sirup as $srp) : ?>
                  
                        <tr>
                            <th scope="row"><?= ++$start; ?></th>
                            <td><?= $srp['nama_opd'] ?></td>
                            <td><?= $srp['nama_paket'] ?></td>
                            <td><?= $srp['pagu'] ?></td>
                            <td><?= $srp['metode'] ?></td>
                            <td><?= $srp['sumber_dana'] ?></td>
                            <td>
                    <a href="<?= base_url(); ?>mahasiswa/liatData/<?= $srp['id']; ?>" class="badge badge-success">Liat</a>
                                <a href="<?= base_url(); ?>mahasiswa/hapus/<?= $srp['id']; ?>" class="badge badge-danger" onclick="return confirm( 'anda yakin menghabus data?')">hapus</a>
                                <a href="<?= base_url(); ?>mahasiswa/editMahasiswa/<?= $srp['id']; ?>" class="badge badge-warning">edit</a>
                            </td>
                        </tr>
                </tbody>
            <?php endforeach; ?>
            
            </table>
            <?php echo $this->pagination->create_links(); ?>
            </div>
            </div>
            </div>
            