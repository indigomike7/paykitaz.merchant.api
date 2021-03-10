<?php defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
use Twilio\Rest\Client;

class Daftar extends RestController {

	function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('User_model', 'UserModel');
        // Load Authorization Token Library
 $this->load->library('session');      
    }

	public function index_post()
	{
		$namafiledidb="";
		header("Access-Control-Allow-Origin: *");
				if(!empty($_FILES['filez']['name'])){
		$files = $_FILES;
		// Set preference
		// $config['upload_path'] = './../dasibm/assets/upload/';  
		$config['upload_path'] = './upload/'.$this->session->session_id."/"; 
			if (!mkdir($config['upload_path'] , 0777, true)) {
				die('Failed to create folders...');
			}

		$config['allowed_types'] = 'jpg|jpeg|png|gif';
		$config['max_size']    = '5024'; // max_size in kb
		// $config['file_name'] = $_FILES['file']['name'];

			$name_file = $_FILES['filez']['name'];
			$expl = explode(".", $name_file);
			$ext = end($expl);
			$_FILES['filez']['name']= 'primary_'.$name_file;
			$_FILES['filez']['type']= $files['filez']['type'];
			$_FILES['filez']['tmp_name']= $files['filez']['tmp_name'];
			$_FILES['filez']['error']= $files['filez']['error'];
			$_FILES['filez']['size']= $files['filez']['size']; 

			$namafiledidb = 'primary_'.$name_file;
				
		//Load upload library
		$this->load->library('upload',$config);         
			
		// File upload
		if($this->upload->do_upload('filez')){
			// Get data about the file
			$uploadData = $this->upload->data();
		}

		}	  
		$output = $this->UserModel->userdaftar1($namafiledidb);
          if ($output)
          {
              // Daftar Success
              $message = [
                  'status' => true,
                  'message' => "Anda Telah Berhasil Daftar Toko"
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

	public function daftar2_post()
	{
		header("Access-Control-Allow-Origin: *");

	  $output = $this->UserModel->userdaftar2();
          if ($output)
          {
              // Daftar Success
              $message = [
                  'status' => true,
                  'message' => "Anda Telah Berhasil Daftar Alamat"
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

	public function daftarlogin_post()
	{
		header("Access-Control-Allow-Origin: *");

	  $output = $this->UserModel->userdaftar3();
          if ($output!= false)
          {
              // Daftar Success
              $message = [
                  'status' => true,
                  'message' => "Anda Telah Berhasil Daftar",
				  'session_id'=> $output
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

  function getOtp_post(){
       date_default_timezone_set('Asia/Jayapura');
      //ambil nomor hp
      $nomorhp = "62".$this->input->post('nomorhp',true);

      //cek database
      $this->db->where('nomorhp',$nomorhp);
      $this->db->where('status','enable');
      $query = $this->db->get('pengguna');

      if($query->num_rows() > 0){
          $kodeOtp =  random_string('numeric', 4);

          //menentukan lama kode otp 
          $tanggalSekarang=date('Y-m-d H:i:s');
          $datetime = new DateTime($tanggalSekarang);
          $datetime->modify('+10 minute');
          $tanggalKadaluarsa=$datetime->format('Y-m-d H:i:s');

          $data = array(
              'no_hp' => $nomorhp,
              'kode'  => $kodeOtp,
              'tanggal_kadaluarsa'=> $tanggalKadaluarsa,
              'status'=> 'Y');

          //cek nomor sdh ada belum di database
           $cek = $this->db->get_where('kodeotp', array('no_hp' => $nomorhp));
           if($cek->num_rows() > 0) {
            //jika sudah ada, update database
            $this->db->where('no_hp',$nomorhp);
            $this->db->update('kodeotp',$data);
           }
           else {
            // jika belum, insert ke database
            $this->db->insert('kodeotp', $data);
           }  

            //gunakan client twilio
            $sid = 'ACf87488e9f7bf937815f12ec1fbc1f363';
            $token = 'ad745546ac0649741d4a1699913632a5';
            $client = new Client($sid, $token);

            //Use the client to do fun stuff like send text messages!
            $sendMessage = $client->messages->create(
            //the number you'd like to send the message to
                '+'.$nomorhp,
                array(
                //A Twilio phone number you purchased at twilio.com/console
                    'from' => '+19378216912',
                    'body' => 'Kode Login System DASI: '.$kodeOtp,
                    'provideFeedback' => True
                )
            );

            $messageSid = $sendMessage->sid;
            // $result = $client->messages($messageSid)->feedback->create();

            if($sendMessage->sid != null){
              $message = 'success';
            }

            // Daftar Success
            $message = [
                'status' => true,
                'message' => "Kode Telah berhasil dikirim."
            ];
            $this->response($message, RestController::HTTP_OK);

      }
      else {
        // Nomor tidak terdaftar
        $message = [
            'status' => FALSE,
            'message' => "Nomor Tidak Terdaftar."
        ];
        $this->response($message, RestController::HTTP_NOT_FOUND);
      }
  }

  function validasiOtp_post(){
      date_default_timezone_set('Asia/Jayapura');
      $nohpotp = $this->input->post('nohpotp', true);
      $kode = $this->input->post('kode',TRUE);

      $waktuSekarang=date('Y-m-d H:i:s');

      //cek kode otp berdasarkan nomorhp, kode dan status
      $cek = $this->db->get_where('kodeotp', array('no_hp' => $nohpotp,'kode'=>$kode,'status'=>'Y'));
      if ($cek->num_rows()>0) {

          $cek=$cek->row();
          if ($waktuSekarang > $cek->tanggal_kadaluarsa) {
              $message = [
                  'status' => FALSE,
                  'message' => "Kode Telah Kadaluarsa."
              ];
              $this->response($message, RestController::HTTP_NOT_FOUND);
          }

          else { 
              //jika otp sudah benar maka buat akses token

              $this->db->set('status', 'N');
              $this->db->where('no_hp', $nohpotp);
              $this->db->update('kodeotp');

              //AMBIL DATA AKUN USER BERDASARKAN NOMOR HP.
              $output = $this->UserModel->getUserbyKode($nohpotp, $kode);

              if($output){
                //BUAT TOKEN
              $this->load->library('Authorization_Token');

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
                
              }
              else {
                echo "no data ";
              }
              
          }
      }

      else {
        // Nomor tidak terdaftar
        $message = [
            'status' => FALSE,
            'message' => "Kode Tidak Terdaftar."
        ];
        $this->response($message, RestController::HTTP_NOT_FOUND);
      }

  }
}
 