<?php if ( ! defined('BASEPATH')) exit('Acces direct à la page interdit.');

class Login extends CI_Controller{
    
    function __construct(){
        parent::__construct();
    }

     public function index($msg = NULL){
        // Load our view to be displayed
        // to the user
        $data['msg'] = $msg;
        if(!$this->session->userdata('validated')){
        $this->load->view('login_view', $data);
    }
    else{
        $this->load->view('dashboard_view');
    }
    }
    
    public function process(){
        // Load the model
        $this->load->model('login_model');
        // Validate the user can login
        $result = $this->login_model->validate();
        // Now we verify the result
        if(! $result){
            // If user did not validate, then show them login page again
            $msg = '<div class="alert alert-danger">Nom d\'utilisateur et/ou mot de passe invalide(s)</div>';
            $this->index($msg);
        }else{
            // If user did validate, 
            // Send them to members area
            $this->load->view('dashboard_view');
        }        
    }
}
?>