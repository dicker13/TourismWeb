<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tiket extends CI_Controller {

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
		$this->load->view('tiket');
	}
	public function get()
	{
		$Asal       = $this->input->post('asal');
		$Tujuan     = $this->input->post('tujuan');
		$Berangkat    = $this->input->post('berangkat');
		$Pulang    = $this->input->post('pulang');
		$Jumlah    = $this->input->post('jml');
		$Token      = "adc46f50fe4d589aae8b2e8f5a07a1c7"; //Token
		 
		$Data = file_get_contents("http://api-sandbox.tiket.com/search/flight?d=".$Asal."&a=".$Tujuan."&date=".$Berangkat."&adult=1&child=0&infant=0&ret_date=".$Pulang."&token=".$Token."&output=json");
		//$Data = file_get_contents("http://api-sandbox.tiket.com/search/flight?d=CGK&a=DPS&date=2016-05-25&ret_date=2016-05-30&adult=1&child=0&infant=0&ret_date=&token=".$Token."&output=json");
		 
		$Proses2 = json_decode($Data);

		 

		$array = array();

		$array[] = (object)$Proses2;

		if ($_GET['callback']) {
		    echo $_GET['callback'] . '('.json_encode($array).')';
		}else{
		    echo '{"items":'. json_encode($array) .'}';
		}
	}
}
