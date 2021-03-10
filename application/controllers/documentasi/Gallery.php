<?php defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;


require_once APPPATH . 'third_party/php-jwt/JWT.php';


use \Firebase\JWT\JWT;


class Gallery extends RestController {



	function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('Gallery_model', 'GalleryModel');
        // Load Authorization Token Library
        $this->load->library('Authorization_Token');

       
    }

    public function savedocumentasi_post(){
        date_default_timezone_set('Asia/Jayapura');

        header("Access-Control-Allow-Origin: *");
        /**
         * User Token Validation
         */
        $is_valid_token = $this->authorization_token->validateToken();

        if (!empty($is_valid_token) AND $is_valid_token['status'] === TRUE)
        {
            
            //check apakah id user tersebut sama dengan di token
            $idpengguna = $this->input->post('idpengguna',true);

            if($idpengguna == $this->checktoken->getIdFromToken()){

            
                 $nomorkontrak = $this->input->post('nomorkontrak', true);
                 $tanggaldoc = $this->input->post('tanggaldoc',true);
                 $description = $this->input->post('description',true);
                 $uploadby = $this->checktoken->getNamaFromToken();

                 $idpaket = substr($nomorkontrak,0,3);

                 $files = $_FILES;

                 //membuat kode random
                 $time =date('Y-m-d H:i:s');
                 $koderandom= strtotime($time);

                if(!empty($_FILES['file']['name'])){
                
                // Set preference
                // $config['upload_path'] = './../dasibm/assets/upload/';  
                $config['upload_path'] = './upload/';  
                $config['allowed_types'] = 'jpg|jpeg|png|gif';
                $config['max_size']    = '5024'; // max_size in kb
                // $config['file_name'] = $_FILES['file']['name'];

                    $name_file = $_FILES['file']['name'];
                    $expl = explode(".", $name_file);
                    $ext = end($expl);
                    $_FILES['file']['name']= 'doc_'.$idpaket."_".$koderandom.".".$ext;
                    $_FILES['file']['type']= $files['file']['type'];
                    $_FILES['file']['tmp_name']= $files['file']['tmp_name'];
                    $_FILES['file']['error']= $files['file']['error'];
                    $_FILES['file']['size']= $files['file']['size']; 

                    $namafiledidb = 'doc_'.$idpaket."_".$koderandom.".".$ext;
                        
                //Load upload library
                $this->load->library('upload',$config);         
                    
                // File upload
                if($this->upload->do_upload('file')){
                    // Get data about the file
                    $uploadData = $this->upload->data();

                    //save ke database
                    $data = array('nomor_kontrak_documentasi'=> $nomorkontrak,
                                 'tanggal_documentasi'=> $tanggaldoc,
                                 'image'=>$namafiledidb,
                                 'description'=>$description,
                                 'upload_by' => $uploadby);

                    $this->db->insert('dokumentasi',$data);
                    $id = $this->db->insert_id();

                    //simpan data untuk dikirim ke notif
                    $datakirim = array('id'=>$id, 'name'=>$uploadby,
                                        'time'=>$time, 'message'=> 'Telah Upload Foto Documentasi');

                    //kirim notifikasi
                    $this->sendnotif->kirimAdmin($datakirim);

                    //Success
                    $message = [
                        'status' => true,
                        'data' => $datakirim,
                        'message' => 'file berhasil diupload'
                    ];
                    $this->response($message, RESTController::HTTP_OK);

                }
                else {
                     // Gagal
                    $message = [
                        'status' => FALSE,
                        'message' => 'file Gagal diupload'
                    ];
                    $this->response($message, RESTController::HTTP_OK);
                }
                
                }
            }
            else{
                $message = [
                        'status' => FALSE,
                        'message' => 'User Tidak Cocok'
                    ];
                    $this->response($message, RESTController::HTTP_OK);
            }

        } else {
            $this->response(['status' => FALSE, 'message' => $is_valid_token['message'] ], RESTController::HTTP_NOT_FOUND);
        }
    }

    function testtoken_get(){
        // date_default_timezone_set('Asia/Jakarta');
        // $hasil = JWT::decode('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJuYW1hX3BlbmdndW5hIjoiQnVjZWtzIiwidGltZSI6MTYwNjcxMDk1N30.rjQsFpg4B92UCDTeWCMUuCwGk69d6S6YgHqbCPBSlJ0',$this->config->item('jwt_key'), array('HS256'));
        // print_r($hasil);
        // $time =date('Y-m-d H:i:s');
        // $timeone= strtotime($time);
        // echo date('Y-m-d H:i:s',$timeone);
        $uploadby = $this->checktoken->getNamaFromToken();
        echo $uploadby;

    }

    function getDocumentasidetail_get(){
        header("Access-Control-Allow-Origin: *");
        /**
         * User Token Validation
         */
        $is_valid_token = $this->authorization_token->validateToken();


        if (!empty($is_valid_token) AND $is_valid_token['status'] === TRUE)
        {
            $id = $_GET['id'];
            
            $output = $this->GalleryModel->getDocumentasi($id);

            if($output){
                // Data Success diambil
                $message = [
                    'status' => true,
                    'data' => $output,
                    'message' => "Berhasil"
                ];
                $this->response($message, RestController::HTTP_OK);
            }
            else {
                 $message = [
                    'status' => false,
                    'message' => "Tidak ada data."
                ];
                $this->response($message, RestController::HTTP_OK);
            }

        } else {
            $this->response(['status' => FALSE, 'message' => $is_valid_token['message'] ], RESTController::HTTP_NOT_FOUND);
        }
    }

    function getAll_get(){
        header("Access-Control-Allow-Origin: *");
        /**
         * User Token Validation
         */
        $is_valid_token = $this->authorization_token->validateToken();


        if (!empty($is_valid_token) AND $is_valid_token['status'] === TRUE)
        {
          
            
            $output = $this->GalleryModel->getAll();

            if($output){
                // Data Success diambil
                $message = [
                    'status' => true,
                    'data' => $output,
                    'message' => "Data berhasil diambil"
                ];
                $this->response($message, RestController::HTTP_OK);
            }
            else {
                 $message = [
                    'status' => false,
                    'message' => "Tidak ada data."
                ];
                $this->response($message, RestController::HTTP_OK);
            }

        } else {
            $this->response(['status' => FALSE, 'message' => $is_valid_token['message'] ], RESTController::HTTP_NOT_FOUND);
        }
    }




}
 