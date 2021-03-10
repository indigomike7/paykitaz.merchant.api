<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Paket_model extends CI_Model
{
    protected $_table = 'paket';

    /**
     * Use Registration
     * @param: {array} User Data
     */
    public function getPaket($data) {
        
        $this->db->like('nama_paket', $data); 
        $this->db->from($this->_table);
        $query = $this->db->get();

        if($query->num_rows() > 0){
            return $query->result();
        }
        else {
            return false;
        }
    }

}
