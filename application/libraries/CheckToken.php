<?php defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH . 'third_party/php-jwt/JWT.php';

use \Firebase\JWT\JWT;

class CheckToken 
{
	public function __construct(){
	 //biar bisa pakai semua fungsi / sistem di codeigniter, sperti databasenya, load viewnya dll.
	 $this->CI =& get_instance();
	}

	public function getIdFromToken(){

		$jwt = $this->CI->input->get_request_header('Authorization');

		$hasil = JWT::decode($jwt,$this->CI->config->item('jwt_key'), array('HS256'));
        return $hasil->id;
	}

	public function getNamaFromToken(){

		$jwt = $this->CI->input->get_request_header('Authorization');

		$hasil = JWT::decode($jwt,$this->CI->config->item('jwt_key'), array('HS256'));
        return $hasil->nama_pengguna;
	}

}