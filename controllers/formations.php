<?php

/**
 * Description of site
 */
class Formations extends CI_Controller {

    function index() {
        $data = array();
        $this->load->model('formation_model', 'newsManager');

        $data['liste'] = $this->newsManager->liste_formations();

        $this->load->view('includes/header');
        //$this->load->view('includes/slider', $data);
        $this->load->view('formation_view', $data);
        $this->load->view('includes/footer');
    }

    public function afficher_form($id) {

        $data = array();
        $this->load->model('formation_model', 'newsManager');
        $data['news'] = $this->newsManager->afficher_formations($id);

        $this->load->view('form_modifier', $data);
    }

    public function detail_form($id) {

        $data = array();
        $this->load->view('includes/header');
        $this->load->model('formation_model', 'newsManager');
        $data['liste'] = $this->newsManager->liste_formations();
        $data['id_select'] = $id;
        $this->load->view('formation_details', $data);
        $this->load->view('includes/footer');
    }

}
