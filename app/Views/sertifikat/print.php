<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<?= base_url(); ?>/style.css">
<title>Print Nomor</title>
<div class="wrapper">
    <div class="card">
        <div class="upper">
            <h4>Kartu Antrean</h4>
            <!-- <h4>Visa</h4> -->
        </div>
        <div class="lower">
            <h5><?= user()->firstname; ?> <?= user()->lastname; ?></h5> <span class="text-center"> Nomor Anda Adalah : <?= user_id(); ?></span>
        </div>
    </div>
    <!-- <div class="print">
        <button onclick="window.print()">Cetak Sertifikat</button>
    </div> -->
</div>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>