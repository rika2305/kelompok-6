<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h3 class="text-center text-primary font-weight-bold">Dashboard User Management</h3>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- New User -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card text-white bg-info">
                    <div class="card-body">
                        <h5 class="card-title">New User</h5>
                        <h3 class="display-4"><?php echo $user_perbulan; ?></h3>
                    </div>
                    <div class="card-footer text-center">
                        <i class="ion ion-person-add"></i>
                    </div>
                </div>
            </div>
            <!-- Active User -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card text-white bg-success">
                    <div class="card-body">
                        <h5 class="card-title">Active Users</h5>
                        <h3 class="display-4"><?php echo $user_aktif; ?></h3>
                    </div>
                    <div class="card-footer text-center">
                        <i class="ion-android-checkbox-outline"></i>
                    </div>
                </div>
            </div>
            <!-- Inactive User -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card text-white bg-warning">
                    <div class="card-body">
                        <h5 class="card-title">Inactive Users</h5>
                        <h3 class="display-4"><?php echo $user_tak_aktif; ?></h3>
                    </div>
                    <div class="card-footer text-center">
                        <i class="ion-android-remove-circle"></i>
                    </div>
                </div>
            </div>
            <!-- Total User -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card text-white bg-danger">
                    <div class="card-body">
                        <h5 class="card-title">Total Users</h5>
                        <h3 class="display-4"><?php echo $count_user; ?></h3>
                    </div>
                    <div class="card-footer text-center">
                        <i class="ion-ios-people"></i>
                    </div>
                </div>
            </div>
        </div>

        <!-- User List Table -->
        <?php echo $this->session->flashdata('message'); ?>
        <div class="card mt-4">
            <div class="card-header bg-primary text-white">
                <h5 class="mb-0">User List</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Username</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Date Created</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($list_user as $lu) : ?>
                                <tr>
                                    <td><?php echo $i++; ?></td>
                                    <td><?php echo $lu['nama']; ?></td>
                                    <td><?php echo $lu['username']; ?></td>
                                    <td><?php echo $lu['role_id'] == 1 ? 'Administrator' : 'User'; ?></td>
                                    <td><?php echo $lu['is_active'] == 1 ? 'Active' : 'Inactive'; ?></td>
                                    <td><?php echo format_indo($lu['date_created']); ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
