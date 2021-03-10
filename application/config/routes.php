<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;



// User API Routes
$route['api/user/register'] = 'api_auth/users/register';
$route['api/user/login'] = 'api_auth/users/login';
$route['api/user/getuser'] = 'api_auth/users/usercurrent';

//USER DAFTAR
$route['api/daftar'] = 'api_auth/daftar/index';
$route['api/daftar2'] = 'api_auth/daftar/daftar2';
$route['api/daftar3'] = 'api_auth/daftar/daftar3';

//USER LOGIN DENGAN HP
$route['api/daftar/getOtp'] = 'api_auth/daftar/getOtp';
$route['api/daftar/validasiOtp'] = 'api_auth/daftar/validasiOtp';

//Tentang user
$route['api/user/detailuser'] = 'api_auth/users/detailUser';
//get user
$route['api/user/getakun'] = 'api_auth/users/getAkun';
//update user
$route['api/user/updateuser'] = 'api_auth/users/updateAkun';
//rubah status user
$route['api/user/setstatus'] = 'api_auth/users/setStatus';


//Ambil Data
$route['api/paket/businesstype'] = 'paket/businesstype';
//get user



//ambil namapaket
$route['api/paket/getpaket'] = 'paket/paket/lookpaket';

//upload gambar
$route['api/documentasi/upload'] = 'documentasi/gallery/savedocumentasi';

$route['api/gallery/test'] = 'documentasi/gallery/testtoken';
//ambil detail gambar
$route['api/documentasi/getid'] = 'documentasi/gallery/getDocumentasidetail';
//ambil semua gambar
$route['api/documentasi/getall'] = 'documentasi/gallery/getAll';


