<?php
defined ('BASEPATH') or exit ('No direct script access allowed');

class Pagu_model extends CI_Model{
    public function GetAllPagu($per_page, $start, $keyword=null)
    {
        $this->db->select('*');
        $this->db->from('sirup');
        $this->db->order_by('id', 'asc');
        $this->db->limit($per_page, $start);
        return $this->db->get()->result_array();
    }
}


