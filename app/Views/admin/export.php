<?= $this->extend('temp/index'); ?>
<?= $this->section('content'); ?>
<title>Export Data</title>
<div class="card shadow mb-4 my-3">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Data Pendaftar Seminar dan Workshop Fakultas Ilmu Komputer</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table id="example2" class="display table table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Tanggal Daftar Seminar</th>
                        <th>Tanggal Update</th>
                        <th>Tanggal Reset Password</th>
                        <!-- <th>Aksi</th> -->
                    </tr>
                </thead>
                <?php $i = 1; ?>
                <?php foreach ($user as $user) : ?>
                <tr>
                    <td><?= $i++; ?></td>
                    <td><?= $user->username; ?></td>
                    <td><?= $user->email; ?></td>
                    <td><?= $user->created_at; ?></td>
                    <td><?= $user->updated_at; ?></td>
                    <td><?= $user->reset_at; ?></td>
                </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
</div>
<?= $this->endsection('content'); ?>