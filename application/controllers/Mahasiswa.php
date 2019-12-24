<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mahasiswa extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->model('Mahasiswa_model');
    }


    public function index()
    {
        $data['title'] = 'mahasiswa';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        //pagination
        $this->load->library('pagination');
        if ($this->input->post('submit')) {
            $data['keyword'] = $this->input->post('keyword');
            $this->session->set_userdata('keyword', $data['keyword']);
        } else {
            $data['keyword'] = $this->session->userdata('keyword');;
        }
        $this->db->like('nama', $data['keyword']);
        $this->db->or_like('alamat', $data['keyword']);
        $this->db->or_like('jurusan', $data['keyword']);
        $this->db->or_like('dosen', $data['keyword']);
        $this->db->from('mahasiswa');
        $this->db->join('jurusan', 'mahasiswa.id_jurusan = jurusan.id_jurusan');
        $this->db->join('dosen', 'mahasiswa.id_dosen = dosen.id_dosen');

        $config['total_rows'] = $this->db->count_all_results();
        $data['total_rows'] = $config['total_rows'];
        $config['base_url'] = 'http://localhost/belajar/mahasiswa/index';
        $config['per_page'] = 7;
        $config['num_links'] = 2;
        $data['start'] = $this->uri->segment(3);


        $this->pagination->initialize($config);

        $data['mahasiswa'] = $this->Mahasiswa_model->join($config['per_page'], $data['start'], $data['keyword']);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('mahasiswa/index', $data);
        $this->load->view('templates/footer');
    }
    public function tambah()
    {

        $data['title'] = "halaman tambah data";
        $this->form_validation->set_rules('email', 'email', 'required|valid_email');
        $this->form_validation->set_rules('nama', 'Nama Mahasiswa', 'required');
        $this->form_validation->set_rules('alamat', 'alamat', 'required');
        if ($this->form_validation->run() == FALSE) {
            $data['jurusan'] = $this->Mahasiswa_model->GetAllJurusan();
            $data['dosen'] = $this->Mahasiswa_model->GetAllDosen();
            $data['title'] = 'tambah';
            $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('mahasiswa/tambah', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Mahasiswa_model->tambahData();
            $this->session->set_flashdata('tambah', ' di tambahkan ');
            redirect('mahasiswa');
        }
    }
    public function hapus($id)
    {

        $this->Mahasiswa_model->hapusData($id);
        $this->session->set_flashdata('tambah', ' di hapus ');
        redirect('mahasiswa');
    }
    public function liatData($id)
    {
        $data['title'] = "liat detail data";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['mahasiswa'] = $this->Mahasiswa_model->liatData($id);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('mahasiswa/liat', $data);
        $this->load->view('templates/footer');
    }
    public function editMahasiswa($id)
    {
        $data['title'] = "edit data";
        $this->form_validation->set_rules('email', 'email', 'required|valid_email');
        $this->form_validation->set_rules('nama', 'Nama Mahasiswa', 'required');
        $this->form_validation->set_rules('alamat', 'alamat', 'required');
        if ($this->form_validation->run() == FALSE) {
            $data['mahasiswa'] = $this->Mahasiswa_model->liatData($id);
            $data['jurusan'] = $this->Mahasiswa_model->GetAllJurusan();
            $data['dosen'] = $this->Mahasiswa_model->GetAllDosen();
            $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('mahasiswa/edit', $data);
            $this->load->view('templates/footer');
        } else {

            $this->Mahasiswa_model->editData();
            $this->session->set_flashdata('tambah', ' di diubah ');
            redirect('mahasiswa');
        }
    }
}
