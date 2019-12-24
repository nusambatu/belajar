<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Mahasiswa_model extends CI_Model
{

    public function GetAllMahasiswa()
    {
        return $this->db->get('mahasiswa')->result_array();
    }
    public function join($per_page, $start, $keyword = null)
    {
        $this->db->select('nama,alamat,email,jurusan,dosen,id');
        $this->db->from('mahasiswa');
        $this->db->join('jurusan', 'mahasiswa.id_jurusan = jurusan.id_jurusan');
        $this->db->join('dosen', 'mahasiswa.id_dosen = dosen.id_dosen');
        $this->db->order_by('id', 'asc');
        $this->db->limit($per_page, $start);
        if ($keyword) {
            $this->db->like('nama', $keyword);
            $this->db->or_like('alamat', $keyword);
            $this->db->or_like('jurusan', $keyword);
            $this->db->or_like('dosen', $keyword);
        }
        return $this->db->get()->result_array();

        // var_dump($a);
    }
    public function jumlah()
    {

        $this->db->select('nama,alamat,email,jurusan,dosen,id');
        $this->db->from('mahasiswa');
        $this->db->join('jurusan', 'mahasiswa.id_jurusan = jurusan.id_jurusan');
        $this->db->join('dosen', 'mahasiswa.id_dosen = dosen.id_dosen');
        return $this->db->get()->num_rows();
    }
    public function GetAllJurusan()
    {
        return $this->db->get('jurusan')->result_array();
    }
    public function GetAllDosen()
    {
        return $this->db->get('dosen')->result_array();
    }
    public function tambahData()
    {
        $data = [
            "nama" => $this->input->post('nama', true),
            "email" => $this->input->post('email', true),
            "alamat" => $this->input->post('alamat', true),
            "id_jurusan" => $this->input->post('jurusan', true),
            "id_dosen" => $this->input->post('dosen', true),
        ];
        $this->db->insert('mahasiswa', $data);
    }
    public function hapusData($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('mahasiswa');
    }
    public function liatData($id)
    {

        $this->db->select('*');
        $this->db->from('mahasiswa');
        $this->db->join('jurusan', 'mahasiswa.id_jurusan = jurusan.id_jurusan');
        $this->db->join('dosen', 'mahasiswa.id_dosen = dosen.id_dosen');
        $this->db->where('id', $id);
        return  $this->db->get()->row_array();
    }
    public function editData($id)
    {
        $data = [
            "nama" => $this->input->post('nama', true),
            "email" => $this->input->post('email', true),
            "alamat" => $this->input->post('alamat', true),
            "id_jurusan" => $this->input->post('jurusan', true),
            "id_dosen" => $this->input->post('dosen', true),
        ];
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('mahasiswa', $data);
    }
}
