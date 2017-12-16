<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Destinasi extends CI_Controller {

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
	public function index($lokasi, $kategori=null)
	{
		$this->load->model('M_user');
		$data['destinasi'] = $this->M_user->getdestinasi(' where lokasi = "'.$lokasi.'" and kategori = "'.$kategori.'"');
		$this->load->view('destinasi', $data);
	}
	public function detail($id)
	{
		$this->load->model('M_user');
		$destinasi = $this->M_user->getdestinasi(' where id_destinasi = "'.$id.'"');
		if($destinasi->num_rows() <> 0){
			$data['destinasi'] = $destinasi->row();
		}else{
			redirect('destinasi');
		}
		$this->load->view('detaildestinasi', $data);
	}

}


		




