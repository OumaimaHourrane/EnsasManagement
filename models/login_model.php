<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Author: Jorge Torres
 * Description: Login model class
 */
class Login_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    public function validate(){
        // grab user input
        $username = $this->security->xss_clean($this->input->post('login'));
        $password = $this->security->xss_clean($this->input->post('pwd'));
        
        // Prep the query
        $this->db->where('login', $username);
        $this->db->where('pwd', $password);
        
        // Run the query
        $query = $this->db->get('users');
        // Let's check if there are any results
        if($query->num_rows == 1)
        {
            // If there is a user, then create session data
            $row = $query->row();
            $data = array(
                    'id' => $row->id,
                    'login' => $row->login,
                    'pwd' => $row->pwd,
                    'validated' => true
                    );
            $this->session->set_userdata('data',$data);
            return true;
        }
        // If the previous process did not validate
        // then return false.
        return false;
    }
}
?>