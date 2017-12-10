<?php 
	class User extends CI_Model{
		function authentification($login,$pwd){
			$this->db->select()->from('users')->where(array('login'=>$login,'pwd'=>$pwd));
			$query=$this->db->get();
			return $query->first_row('array');
		}
	}
 ?>