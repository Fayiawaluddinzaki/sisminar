<?= $this->extend('temp/index'); ?>
<?= $this->section('content'); ?>
<title>Admin Page</title>
<div class="main-content">
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Data Pendaftar Seminar dan Workshop Fakultas Ilmu Komputer</h3>
                        </div>
                        <!-- bs modal -->
                        <!-- <div class="col-lg mx-2">
                            <button type="button" class="btn btn-primary btn-lg my-2" data-toggle="modal"
                                data-target="#exampleModal" data-whatever="@getbootstrap">Daftar</button>
                        </div> -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="/seminar/save" method="POST">
                                            <?= csrf_field(); ?>
                                            <div class="form-group">
                                                <label for="inputAddress">Username</label>
                                                <input type="text" class="form-control" name="username" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputAddress">Email</label>
                                                <input type="email" class="form-control" name="email" required>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-info">Daftar</button>
                                                <input class="btn btn-primary" type="reset" value="Reset">
                                                <button type="button" class="btn btn-danger"
                                                    data-dismiss="modal">Close</button>
                                                <!-- <a name="" id="" class="btn btn-danger" href="/daftar" role="button">Kembali</a> -->
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- bs modal -->
                        <div class="card-body">
                            <div class="conttainer">
                            </div>
                            <table id="example" class="display table table-bordered" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>Tanggal Daftar Seminar</th>
                                        <th>Tanggal Update</th>
                                        <th>Tanggal Reset</th>
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
            </div>
        </div>
    </section>
</div>
<?= $this->endsection('content'); ?>