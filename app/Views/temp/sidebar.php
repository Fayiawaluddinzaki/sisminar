        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/control">
                <div class="sidebar-brand-icon">
                    <i class="fas fa-users"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Control Page</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="/control">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Control
            </div>
            <!-- Nav Item - Tables -->
            <?php if(in_groups('User')): ?>
            <li class="nav-item">
                <a class="nav-link" href="/profile">
                    <i class="fas fa-user"></i>
                    <span>My Profile</span></a>
            </li>
            <?php endif; ?>

            <!-- Nav Item - Charts -->
            <?php if (in_groups('Admin')): ?>
            <li class="nav-item">
                <a class="nav-link" href="/daftar">
                    <i class="fas fa-table"></i>
                    <span>Data Pendaftar</span></a>
            </li>
            <?php endif; ?>

            <!-- Nav Item - Tables -->
                        <?php if(in_groups('Admin')): ?>
            <li class="nav-item">
                <a class="nav-link" href="/export">
                    <i class="fas fa-upload"></i>
                    <span>Export Data Pendaftar</span></a>
            </li>
            <?php endif; ?>

            <!-- Nav Item - Tables -->
            <?php if(in_groups('User')): ?>
            <li class="nav-item">
                <a class="nav-link" href="/certificate">
                    <i class="fas fa-book"></i>
                    <span> Sertifikat</span></a>
            </li>
            <?php endif; ?>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->