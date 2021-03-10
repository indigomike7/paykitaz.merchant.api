<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery_Model extends CI_Model
{
    protected $table = 'dokumentasi';

    /**
     * Use Registration
     * @param: {array} User Data
     */
    public function insert_user(array $data) {
        $this->db->insert($this->table, $data);
        return $this->db->insert_id();
    }

    public function getDocumentasi($id){
    	$this->db->select('iddokumentasi,nomor_kontrak_documentasi, tanggal_documentasi, image, description, dokumentasi.created, dokumentasi.updated, upload_by, dokumentasi.updated_by, nama_kontrak, nama_perusahaan');
    	$this->db->where('iddokumentasi',$id);
    	$this->db->where('nomor_kontrak = nomor_kontrak_documentasi');
    	$this->db->where('perusahaan_id = idperusahaan');
    	$this->db->from('kontrak, perusahaan, dokumentasi');
    	$query = $this->db->get();
    	if($query->num_rows() > 0){
    		return $query->result();
    	}
    	else {
    		return false;
    	}
    }

    public function getAll(){
    	$query = $this->db->get($this->table);
    	if($query->num_rows() > 0){
    		return $query->result();
    	}
    	else {
    		return false;
    	}
    }
}
