<?= $this->extend('temp/index'); ?>
<?= $this->section('content'); ?>
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Edit Forms</h1>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-lg">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Seminar</h4>
                        </div>
                        <div class="col-lg">
                            <form action="/seminar/update/<?= $edit['id']; ?>" method="POST">
                                <?= csrf_field(); ?>
                                <div class="form-group">
                                    <label for="inputAddress">Nama</label>
                                    <input type="text" class="form-control" name="nama" value="<?= $edit['nama']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="inputAddress">Email</label>
                                    <input type="email" class="form-control" name="email"
                                        value="<?= $edit['email']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="inputAddress2">Kota Asal</label>
                                    <input type="text" class="form-control" name="kotaasal"
                                        value="<?= $edit['kotaasal']; ?>">
                                </div>
                                <!-- <div class="form-row"> -->
                                <!-- <div class="form-group col-md-4">
                            <label for="inputCity">Jumlah Orang</label>
                            <input type="number" class="form-control" name="jumlah">
                        </div> -->
                                <div class="form-group">
                                    <label for="inputState">Jenis Kelamin</label>
                                    <select class="form-control" name="jeniskelamin">
                                        <option>Jenis-Kelamin</option>
                                        <option>Laki Laki</option>
                                        <option>Perempuan</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="inputZip">Tanggal</label>
                                    <input type="date" class="form-control" name="tanggal"
                                        value="<?= $edit['tanggal']?>">
                                </div>
                                <!-- </div> -->
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                    <!-- <input class="btn btn-primary mx-2" type="reset" value="Reset"> -->
                                    <a name="" id="" class="btn btn-danger mx-2" href="/daftar"
                                        role="button">Kembali</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?= $this->endsection('content'); ?>