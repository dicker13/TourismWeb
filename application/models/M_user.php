<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model {

	public function cek_user($user, $pass)
	{
		$this->db->where('email', $user);
		$this->db->or_where('username', $user);
		$this->db->where('password', md5($pass));
		return $this->db->get('user');
	}
	public function getberita($where='')
	{
		return $this->db->query('select * from berita'.$where);
	}
	public function getvideo($where='')
	{
		return $this->db->query('select * from video'.$where);
	}
	public function getdestinasi($where='')
	{
		return $this->db->query('select * from destinasi'.$where);
	}
	public function getrestoran($where='')
	{
		return $this->db->query('select * from restoran'.$where);
	}
}