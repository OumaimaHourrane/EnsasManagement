<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ajax_model extends CI_Model{
       
    public function getAllUsers(){
        return  $this->db->get('users')->result();   
    }
}
?>