<?php

/**
 * Description of profil
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Profil extends CI_Controller {

    public function index() {
        // loading helpers and models
        $this->load->model('Condidat');
        $this->load->model('Diplome');
        $this->load->model('Experience');
        $this->load->library('table');

        // defining the view 
        $data['main_content'] = 'profil';
        $id = $this->session->userdata('id_condidat');
        // sending user's logged info to the view 

        $condidat = new Condidat();
        $r = $condidat->get();
        foreach ($r as $c) {
            if ($c->id_condidat == $id) {
                $condidat = $c;
            }
        }
        $data['condidat'] = $condidat;

        $diplome = new Diplome();
        $diplomes = $diplome->get_by_condidat($condidat->id_condidat);
        //
        $experience = new Experience();
        $experiences = $experience->get_by_condidat($condidat->id_condidat);
        $this->load->view('template', array('condidat' => $condidat,
            'main_content' => 'profil', 'diplomes' => $diplomes, 'experiences' => $experiences));
    }

    public function info() {
        
    }

    // mettre a joutr les informations :
    public function update($id) {
        $this->load->model('Condidat');
        $condidat = $this->Condidat->load($id);
        $condidat->login = $this->input->post('login');
        $condidat->password = $this->input->post('password');


        // authorisations necceassaires :

        $loged = $this->session->userdata('id_condidat');

        if ($loged == $id) {

            $condidat->update();
            redirect('profil');
        } else {
            echo 'Oppération non autorisée !';
        }
    }

    public function activate($token) {

        $this->load->model('Condidat');
        $condidat = $this->Condidat->get_by_token($token);
        if ($condidat->id_condidat != NULL) {
            $condidat->confirmation = "active";
            $condidat->update();
            $this->load->view('includes/header');
            $this->load->view('account_activation');
            $this->load->view('includes/footer');
        } else {
            $this->load->view('includes/header');
            $this->load->view('includes/404');
            $this->load->view('includes/footer');
        }
    }

    public function logout() {
        $temp = $this->session->userdata('id_condidat');
        $this->session->sess_destroy();
        $this->session->set_userdata('id_condidat', $temp);
        redirect('auth');
    }

}
