<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php'))
{
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
// $routes->get('/', 'Home::index');
// $routes->get('/booking', 'Home::booking');
$routes->get('/daftar', 'Seminar::daftar');
$routes->get('/schedule', 'Seminar::price');
$routes->get('/tambah', 'Seminar::tambah');
$routes->get('/grafik', 'Seminar::grafik');
$routes->delete('/home/(:num)','Seminar::hapus/$1');
$routes->get('/edit/(:num)','Seminar::edit/$1');
// $routes->get('/delete', 'Home::hapus');
// $routes->get('/login','Auths::index');
// $routes->get('/register','Auths::register');
// $routes->get('/logout','Auth::logout');
$routes->get('/', 'Seminar::index');
// $routes->get('/control', 'Admin::index',['filter' => 'role:Admin']);
$routes->get('/control', 'Admin::index');
// $routes->get('/user/index', 'User::index',['filter' => 'role:user']);
$routes->get('/profile', 'Admin::profile');
$routes->get('/certificate', 'Seminar::sertifikat');
$routes->get('/export', 'Admin::export');
$routes->get('/print', 'Home::print');
$routes->get('/about', 'User::about');
$routes->get('/soon', 'User::soon');
$routes->get('/contact', 'User::contact');
// $routes->get('/simpan', 'Home::save');
/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php'))
{
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
