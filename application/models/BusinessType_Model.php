<?php defined('BASEPATH') OR exit('No direct script access allowed');

class BusinessType_Model extends CI_Model
{
    protected $user_table = 'pengguna';

    /**
     * Use Registration
     * @param: {array} User Data
     */
    public function insert_user(array $data) {
        $this->db->insert($this->user_table, $data);
        return $this->db->insert_id();
    }

    //get user berdasarkan nomor hp 
    function getAllBusinessType(){
        $this->db->select('*');
        $this->db->from('business_type');
        $query = $this->db->get();
		$data=array();
		foreach ($query->result_array() as $row)
		{
			$data[]=$row;
		}
        if($query->num_rows() > 0){
            return $data;
        }
        else {
            return false;
        }
    }

    /**
     * User Login
     * ----------------------------------
     * @param: username or email address
     * @param: password
     */
    public function user_login($username, $password)
    {
        $this->db->where('username', $username);
        $this->db->where('password', md5($password));
        $q = $this->db->get($this->user_table);

        if( $q->num_rows() ) 
        {
            return $q->row();
        }else{
            return FALSE;
        }
    }

    public function getUser($id)
    {
        $this->db->where('idpengguna', $id);
        $q = $this->db->get($this->user_table);

        if( $q->num_rows() ) 
        {
            return $q->row();
        }else{
            return FALSE;
        }
    }

    public function userdaftar1($picture){

        $store_name = $this->input->post('store_name');
        $business_type = $this->input->post('business_type');
        $store_open = $this->input->post('store_open');
        $store_close = $this->input->post('store_close');
        $merchant_type = $this->input->post('merchant_type');
		//$picture="";
		
		
        $featured_photo = $picture;
            $data = array(
                'store_name' => $store_name,
                'business_type' => $business_type,
                'store_open' => $store_open,
                'store_close'=>$store_close,
                'merchant_type' => $merchant_type,
                'featured_photo' => $featured_photo,
				'session_id'=>$this->session->session_id
            );
        
            $this->db->insert('merchant_user', $data);
			if(isset($error))
			{
				return false;
			}
			else
			{
	            return ($this->db->affected_rows() != 1) ? false  : $this->session->session_id;
			}


    }

    public function userdaftar2(){

        $merchant_address = $this->input->post('merchant_address', true);
        $merchant_kelurahan = $this->input->post('merchant_kelurahan', true);
        $zip_code = $this->input->post('zip_code', true);

        //$idpaket = $this->getIdPaket($paket);

        //echo $idpaket;

//        if(!empty($idpaket)){
            //untuk table pengguna
            $data = array(
                'merchant_address' => $merchant_address,
                'merchant_kelurahan' => $merchant_kelurahan,
                'zip_code' => $zip_code
            );
			$this->db->where('session_id',$this->session->session_id);
            $this->db->update('merchant_user', $data);
            return ($this->db->affected_rows() != 1) ? false : true;
//        }else {
//            return false;
//        }

    }
    public function userdaftar3(){

        $phone_number = $this->input->post('phone_number', true);
        $user_name = $this->input->post('user_name', true);
        $login_password = $this->input->post('login_password', true);
        $email = $this->input->post('email', true);

$this->db->select('merchant_id');
$this->db->from('merchant_login');
$query = $this->db->get();  

echo print_r($query);

        //$idpaket = $this->getIdPaket($paket);

        //echo $idpaket;

//        if(!empty($idpaket)){
            //untuk table pengguna
            $data = array(
                'phone_number' => $phone_number,
                'user_name' => $user_name,
                'login_password' => md5($login_password),
                'email' => $email,
                'merchant_user'=>$merchant_id
            );
        
            $this->db->insert('merchant_login', $data);
            return true;
//        }else {
//            return false;
//        }

    }
    function getIdPaket($paket){
        $this->db->where('nama_paket',$paket);
        $query = $this->db->get('paket');
        if($query->num_rows() > 0){
            $result = $query->row_array();
            return $result['idpaket'];
        }
        else {
            return null;
        }
    }

    //ambil data user, kontrak dan perusahaannya berdasarkan nomorhp & idpaketnya.
    function getDetailUser($idpengguna){

        $this->db->select('nomorhp, paket.idpaket, idkontrak, nomor_kontrak, nama_kontrak, perusahaan_id ,tanggal_kontrak, waktu_pelaksanaan, nilai_kontrak_awal, sumber_dana, no_dipa, no_spmk, tanggal_spmk, tanggal_pho, created, updated, created_by, updated_by, idperusahaan, nama_perusahaan, nama_direktur, alamat, kota, nama_pengawas, nama_paket, wilayah');

        $this->db->where('status','enable');
        $this->db->where('pengguna.idpengguna',$idpengguna);
        $this->db->from('pengguna, kontrak, perusahaan, paket');
        $this->db->where('kontrak.idpaket = pengguna.idpaket');
        $this->db->where('perusahaan.idperusahaan = kontrak.perusahaan_id');
        $this->db->where('kontrak.idpaket = paket.idpaket');
        $query = $this->db->get();

        if($query->num_rows() > 0){
            return $query->row();
        }
        else {
            return false;
        }
    }

    public function getAkunUser($id){
        $this->db->where('idpengguna',$id);
        $this->db->from('pengguna');
        $query = $this->db->get();

        if($query->num_rows() > 0){
            return $query->result();
        }
        else {
            return false;
        }

    }

    public function updateAkun(){
        $idpengguna = $_POST['idpengguna'];
        $namapengguna = $_POST['namapengguna'];
        $username = $_POST['username'];
        $email = $_POST['email'];
        $pass = $_POST['password'];
        $nohp = $_POST['nomorhp'];

       
        $data['namapengguna'] = $namapengguna;
        $data['username'] = $username;
        $data['email'] = $email;
        $data['nomorhp'] = $nohp;

        if($pass != null ){
            $data['password'] = md5($pass);
        }

        $this->db->where('idpengguna',$idpengguna);
        $this->db->update('pengguna',$data);

    }

    //melihat level pengguna
    public function whatLevel($idpengguna){
        $this->db->select('level');
        $this->db->where('idpengguna',$idpengguna);
        $this->db->from('pengguna');
        $query = $this->db->get();

        if($query->num_rows() > 0){
            $hasil = $query->row_array();
            return $hasil['level'];
        }
        else {
            return false;
        }
    }

    public function setStatus($id, $status){
        $this->db->where('idpengguna',$id);
        $this->db->update('pengguna', array('status'=>$status));
    }
}
