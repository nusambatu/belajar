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
           }


    public function index()
    {
        $data['title'] = "coba coba";
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('coba/index', $data);
        $this->load->view('templates/footer');
    }
  

}

