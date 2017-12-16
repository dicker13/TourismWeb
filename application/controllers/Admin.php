<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');
	}
	public function index()
	{
		if($this->session->has_userdata('user'))
		{
			$data['page'] = 'Dashboard';
			$this->load->view('admin/dash',$data);
		}else{
			$this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Kamu harus masuk!<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('admin/login');
		}
	}
	public function login()
	{
		if($this->session->has_userdata('user'))
		{
			redirect('admin');
		}else{
			$this->load->view('login');
		}
	}
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('admin/login');
	}
	public function cek()
	{
		$this->load->model('M_user');
		$user = $this->input->post('username');
		$pass = $this->input->post('password');
		$cek_login = $this->M_user->cek_user($user,$pass);
		if($cek_login->num_rows() <> 0)
		{
			$this->session->set_userdata('user', $cek_login->result_array());
			redirect('admin');
		}else{
			$this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Username/Kata sandi Salah!<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('admin/login');
		}
	}
	public function destinasi()
	{
		$crud = new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('destinasi');
		$crud->set_subject('Destinasi');
		$crud->display_as('isi', 'Deskripsi Destinasi');
		$crud->set_field_upload('gambar','assets/uploads/files');
		$crud->set_field_upload('video','assets/uploads/files');
		$crud->field_type('kategori','dropdown',
                   array( "1"  => "Pantai", "2" => "Air Terjun", "3" => "Danau", "4" => "Pulau", "5" => "Lainnya"));
		$crud->field_type('lokasi','dropdown',
                   array( "1"  => "Bandar Lampung", "2" => "Lampung Utara", "3" => "Lampung Selatan", "4" => "Lampung Timur", "5" => "Pesawaran", "6" => "Tanggamus", "7" => "Pesisir Barat"));
		$output = $crud->render();
		$this->load->view('admin/pagecontent',$output);
	}
	public function berita()
	{
		$crud = new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('berita');
		$crud->set_subject('Berita');
		$crud->display_as('isi', 'Isi Berita');
		$crud->set_field_upload('gambar','assets/uploads/files');
		$crud->change_field_type('tanggal','invisible');
		$crud->change_field_type('author','invisible');
		$crud->callback_before_insert(array($this,'current_date'));
		$crud->callback_before_update(array($this,'current_date'));
		$output = $crud->render();
		$this->load->view('admin/pagecontent',$output);
	}
	public function restoran()
	{
		$crud = new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('restoran');
		$crud->set_subject('Restoran');
		$crud->set_field_upload('gambar','assets/uploads/files');
		$output = $crud->render();
		$this->load->view('admin/pagecontent',$output);
	}
	public function current_date($post_array) {
		$post_array['tanggal'] = date('Y-d-m');
		$post_array['author'] = $this->session->userdata('user')[0]['username'];
		return $post_array;
	}
	public function video()
	{
		$crud = new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('video');
		$crud->set_subject('Video');
		$crud->display_as('isi', 'Deskripsi Video');
		$crud->set_field_upload('video','assets/uploads/files');
		$output = $crud->render();
		$this->load->view('admin/pagecontent',$output);
	}
}
