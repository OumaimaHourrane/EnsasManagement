<?php
 if ( ! defined('BASEPATH')) exit('Acces direct à la page interdit.');
class Auth extends CI_Controller {

    public function index() {
        // Vue 
        $data['main_content'] = 'auth_form';
        $this->load->view('template', $data);

        // récupération des données 

        $this->load->model('Condidat');
        $condidat = new Condidat();

        $condidat->login = $this->input->post('login');
        $condidat->password = $this->input->post('password');

        // utilisteur dejà authentifié 

        if ($this->session->userdata('id_condidat') > 0) {
            redirect('profil');
        }

        // utilisateur non authentifié 

        if (($condidat->login != NULL) && ($condidat->password != NULL)) {
            $condidat->id_condidat = $condidat->doLogin();
            if ($condidat->id_condidat > 0) {
                // données correctes 
                $this->load->library('session');
                $this->session->set_userdata('id_condidat', $condidat->id_condidat);
                redirect('profil');
            } else if ($condidat->id_condidat == -1) {
                redirect('auth/fail');
            }
        }

        // traitement d'authentification
    }

    public function fail() {
        $data['main_content'] = 'auth_form_fail';
        $this->load->view('template', $data);
    }

}
