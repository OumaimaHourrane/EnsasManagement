<?php 
	class Ajax extends CI_Controller
{
    function index(){
      $this->load->view('ajax_view');
    }
   function get_users()
   {
   		
		    $query = $this->db->get('users');
        if($query->num_rows > 0){
            $header = false;
            $output_string = '';
            $output_string .=  "<table style=\" border:solid black 1px;\"><tr><th>login</th><th>mot de passe</th></tr>";
            foreach ($query->result() as $row){
                $output_string .= '<tr>';
                $output_string .= "<td>{$row->login}</td><td>{$row->pwd}</td>";    
                $output_string .= '</tr>';                
            }                    
            $output_string .= '</table>';
        }
        else{
            $output_string = 'There are no results';
        }
		   $this->output->set_content_type('application/json')->set_output(json_encode($output_string));
  }
   
}

 ?>