<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Coba extends CI_Controller

{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->model('Pagu_model');
    }
    


    public function index()
    {
        $data['title'] = 'coba';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();   
        //pagination
        $this->load->library('pagination');
        $config['total_rows'] = $this->db->count_all_results('sirup');
        $data['total_rows'] = $config['total_rows'];
        $config['base_url'] = 'http://localhost/belajar/coba/index';
        $config['per_page'] = 10;
        $config['num_links'] = 2;
        $data['start'] = $this->uri->segment(3);
        $this->pagination->initialize($config);
        $data['sirup']=$this->Pagu_model->GetAllPagu($config['per_page'],$data['start']);
     //$data['mahasiswa'] = $this->Mahasiswa_model->join($config['per_page'], $data['start'], $data['keyword']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('coba/index', $data);
        $this->load->view('templates/footer');
        $this->load->view('templates/footer');
        //ini untuk page
    }
    
}

