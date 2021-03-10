<?php defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
use Twilio\Rest\Client;

class BusinessType extends RestController {

	function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('BusinessType_Model');
        // Load Authorization Token Library
 $this->load->library('session');      
    }

	public function index_post()
	{
		header("Access-Control-Allow-Origin: *");
		$output = $this->BusinessType_Model->getAllBusinessType();
          if ($output)
          {
              // Daftar Success
              $message = [
                  'status' => true,
                  'message' => "Ambil Data Berhasil",
				  'datax'=>$output
				  
              ];
              $this->response($message, RestController::HTTP_OK);
          } else
          {
              // Login Error
              $message = [
                  'status' => FALSE,
                  'message' => "Gagal Mendaftar."
              ];
              $this->response($message, RestController::HTTP_NOT_FOUND);
          }
	}

}
 