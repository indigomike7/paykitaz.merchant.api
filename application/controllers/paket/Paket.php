<?php defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;


class Paket extends RestController {

	function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('paket_model', 'PaketModel');
        // Load Authorization Token Library
       
    }

    public function lookpaket_post(){
        header("Access-Control-Allow-Origin: *");

        $_POST = $this->security->xss_clean($_POST);
        $data = $_POST['namapaket'];

        $output = $this->PaketModel->getPaket($data);
            if (!empty($output) AND $output != FALSE)
            {
                // Data Success diambil
                $message = [
                    'status' => true,
                    'data' => $output,
                    'message' => "User login successful"
                ];
                $this->response($message, RestController::HTTP_OK);
            } else
            {
                // Login Error
                $message = [
                    'status' => FALSE,
                    'message' => "Nama Paket Tidak Tersedia"
                ];
                $this->response($message, RestController::HTTP_NOT_FOUND);
            }
    }

	
}
 