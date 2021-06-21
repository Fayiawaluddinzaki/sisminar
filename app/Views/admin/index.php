<?= $this->extend('temp/index'); ?>
<?= $this->section('content'); ?>
<!-- Content Row -->
<div class="row">

    <title><?= $title; ?></title>
    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Nomor Antrian</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?= user_id() ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-users fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            Nama</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?= user()->username; ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-user fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Print antrian
                        </div>
                        <div class="row no-gutters align-items-center">
                            <div class="col-auto">
                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?= user_id(); ?></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto">
                        <a href="/print"><i class="fas fa-download fa-2x text-gray-300"></i></a>
                        <!-- <i class="fas fa-print fa-2x text-gray-300"></i> -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Pending Requests Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-warning shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Total Pendaftar</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= user_id(); ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Content Row -->

<div class="row">
    <!-- Area Chart -->
    <div class="col">
        <div class="card shadow">
            <!-- Card Header - Dropdown -->
            <div class="card-header">
                <h6 class="font-weight-bold text-primary">Jumlah Peserta</h6>
            </div>
            <!-- Card Body -->
            <div class="card-body">
                <canvas id="myChart" height="100"></canvas>
            </div>
        </div>
    </div>
</div>

<div class="card shadow mb-4 my-3">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Data Pendaftar Seminar dan Workshop Fakultas Ilmu Komputer</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="example1" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Tanggal Pembuatan Akun</th>
                        <th>Tanggal Daftar Seminar</th>
                        <th>Tanggal Reset Password</th>
                    </tr>
                </thead>
                <tbody>
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
                </tbody>
            </table>
        </div>
    </div>
</div>
<?= $this->endsection('content'); ?>