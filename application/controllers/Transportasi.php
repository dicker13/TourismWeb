<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transportasi extends CI_Controller {

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
	public function index()
	{
		$this->load->library('googlemaps');
		$start = $this->input->post('start');
		$end = $this->input->post('end');
		$data['map'] = $this->getmap($start, $end);
		$data['desc'] = $this->getloc($start, $end);
		$this->load->view('Transportasi', $data);
	}
	public function getmap($start, $end)
	{
		if($start != '')
		{
			$config['center'] = $start;
			$config['zoom'] = 'auto';
			$config['directions'] = TRUE;
			$config['directionsStart'] = $start;
			$config['directionsEnd'] = $end;
			$config['directionsDivID'] = 'directionsDiv';
		}else{
			$config['center'] = '-5.1178394, 105.3072646';
			$config['zoom'] = 'auto';
			$config['directions'] = TRUE;
			$config['directionsStart'] = '-5.1178394, 105.3072646';
			$config['directionsEnd'] = '-5.3971396, 105.2667887';
			$config['directionsDivID'] = 'directionsDiv';
		}
		$this->googlemaps->initialize($config);
		return $this->googlemaps->create_map();
	}
	public function getloc($start, $end)
	{
		//samain koordinat valuenya ini Terminal Rajabasa ke Teluk Kiluan
		if($start == "-5.36776034, 105.23783863" && $end == "-5.77160308, 105.10818869"){
			return "Terminal Rajabasa ke Teluk Kiluan";
		}else if($start == "-5.36776034, 105.23783863" && $end == "-5.67662994, 105.21831751"){
			return "Terminal Rajabasa ke Pulau Pahawang Pulau Pahawang";
		}else if($start == "-5.36776034, 105.23783863" && $end == "-5.67662994, 105.21831751"){
			return "Terminal Rajabasa ke Pulau Pahawang Pulau Pahawang";
		}
	}
}
