<?php 
	class Get_user extends CI_Model{
		function get_list()
		{
		   $this->db->select()->from('users');
			$query=$this->db->get();
			return $query->first_row();
}
	}
 ?>