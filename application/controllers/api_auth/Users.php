<?php defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;


class Users extends RestController {

	function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('user_model', 'UserModel');
        // Load Authorization Token Library
        $this->load->library('Authorization_Token');
       
    }

	public function login_post()
	{
		header("Access-Control-Allow-Origin: *");

		$_POST = $this->security->xss_clean($_POST);

		$output = $this->UserModel->user_login($this->input->post('username'), $this->input->post('password'));
            if (!empty($output) AND $output != FALSE)
            {
                 

                // Generate Token
                $token_data['id'] = $output->idpengguna;
                $token_data['nama_pengguna'] = $output->namapengguna;
                $token_data['time'] = time();

                $user_token = $this->authorization_token->generateToken($token_data);

                $return_data = [
                    'idpengguna' => $output->idpengguna,
                    'nama_pengguna' => $output->namapengguna,
                    'token' => $user_token,
                ];

                // Login Success
                $message = [
                    'status' => true,
                    'data' => $return_data,
                    'message' => "User login successful"
                ];
                $this->response($message, RestController::HTTP_OK);
            } else
            {
                // Login Error
                $message = [
                    'status' => FALSE,
                    'message' => "Invalid Username or Password"
                ];
                $this->response($message, RestController::HTTP_NOT_FOUND);
            }
	}

    public function userCurrent_get(){
       header("Access-Control-Allow-Origin: *");

        /**
         * User Token Validation
         */
        $is_valid_token = $this->authorization_token->validateToken();

        if (!empty($is_valid_token) AND $is_valid_token['status'] === TRUE)
        {
            //ambil data user berdasarkan nomor hp
            // Success
            $message = [
                'status' => true,
                'message' => "JSON PAS"
            ];
            $this->response($message, RESTController::HTTP_OK);

        } else {
            $this->response(['status' => FALSE, 'message' => $is_valid_token['message'] ], RESTController::HTTP_NOT_FOUND);
        }

    }

    //ambil detail user
    public function detailUser_get(){

        header("Access-Control-Allow-Origin: *");

        /**
         * User Token Validation
         */
        $is_valid_token = $this->authorization_token->validateToken();

        if (!empty($is_valid_token) AND $is_valid_token['status'] === TRUE)
        {
            //ambil data user
            $idpengguna = $_GET['idpengguna'];

            $output = $this->UserModel->getDetailUser($idpengguna);

            // Success
            $message = [
                'status' => true,
                'data' => $output,
                'message' => 'Data Berhasil Diambil'
            ];
            $this->response($message, RESTController::HTTP_OK);

        } else {
            $this->response(['status' => FALSE, 'message' => $is_valid_token['message'] ], RESTController::HTTP_NOT_FOUND);
        }
       
    }

    //GET AKUN User
    public function getAkun_get(){

        header("Access-Control-Allow-Origin: *");

        /**
         * User Token Validation
         */
        $is_valid_token = $this->authorization_token->validateToken();

        if (!empty($is_valid_token) AND $is_valid_token['status'] === TRUE)
        {
            //ambil data user
            $idpengguna = $_GET['idpengguna'];

            $output = $this->UserModel->getAkunUser($idpengguna);

            // Success
            $message = [
                'status' => true,
                'data' => $output,
                'message' => 'Data Berhasil Diambil'
            ];
            $this->response($message, RESTController::HTTP_OK);

        } else {
            $this->response(['status' => FALSE, 'message' => $is_valid_token['message'] ], RESTController::HTTP_NOT_FOUND);
        }
       
    }

    //UPDATE AKUN USER
    public function updateAkun_post(){

        header("Access-Control-Allow-Origin: *");

        /**
         * User Token Validation
         */
        $is_valid_token = $this->authorization_token->validateToken();

        if (!empty($is_valid_token) AND $is_valid_token['status'] === TRUE)
        {
            
            $_POST = $this->security->xss_clean($_POST);

            $output = $this->UserModel->updateAkun($_POST);

            // Success
            $message = [
                'status' => true,
                'message' => 'Akun Berhasil Diperbaharui'
            ];
            $this->response($message, RESTController::HTTP_OK);

        } else {
            $this->response(['status' => FALSE, 'message' => $is_valid_token['message'] ], RESTController::HTTP_NOT_FOUND);
        }
       
    }

    //Enable atau Disable Akun User
    public function setStatus_post(){
        header("Access-Control-Allow-Origin: *");

        /**
         * User Token Validation
         */
        $is_valid_token = $this->authorization_token->validateToken();

        if (!empty($is_valid_token) AND $is_valid_token['status'] === TRUE)
        {
            
            $_POST = $this->security->xss_clean($_POST);

            $idpengguna = $this->input->post('idpengguna',true);

            //check levelnya dari sisi server
            if($this->UserModel->whatLevel($idpengguna)=='admin' OR $this->UserModel->whatLevel($idpengguna)=='staf'){

                $status = $this->input->post('status',true);
                $idyangdirubah = $this->input->post('idyangdirubah',true);
                $this->UserModel->setStatus($idyangdirubah, $status);

                // Success
                $message = [
                    'status' => true,
                    'message' => 'Status Berhasil Dirubah'
                ];
                $this->response($message, RESTController::HTTP_OK);

            }
            else {
                // gagal rubah
                $message = [
                    'status' => FALSE,
                    'message' => 'Tidak Diizinkan Merubah Status'
                ];
                $this->response($message, RESTController::HTTP_OK);
            }

           

        } else {
            $this->response(['status' => FALSE, 'message' => $is_valid_token['message'] ], RESTController::HTTP_NOT_FOUND);
        }
    }


}
 