<?= $this->extend('temp/index'); ?>
<?= $this->section('content'); ?>
<title>My Profile</title>
<div class="card mb-3" style="max-width: 1000px;">
    <div class="row no-gutters">
        <div class="col-md-4 mx-2 my-2">
            <img src="<?= base_url(); ?>/sbadmin/img/undraw_profile.svg">
        </div>
        <div class="col-lg">
            <div class="card-body">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <h3>Username: </h3>
                        <h4><?= user()->username; ?></h4>
                    </li>
                    <li class="list-group-item">
                        <h3>Nama Lengkap: </h3>
                        <h4><?= user()->firstname; ?> <?= user()->lastname; ?></h4>
                    </li>
                    <li class="list-group-item">
                        <h4>Email : </h4>
                        <h5><?= user()->email; ?></h5>
                    </li>
                    <li class="list-group-item">
                        <h4>Tanggal Pendaftaran : </h4>
                        <h5><?= user()->created_at; ?></h5>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<?= $this->endsection('content'); ?>