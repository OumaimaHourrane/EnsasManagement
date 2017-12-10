<?php

class Cnews extends CI_Controller {

    public function __construct() {
        parent::__construct();

        // « Décommenter » cette ligne pour charger le helper url
        $this->load->helper('url');
    }

    public function afficher() {
        $data = array();
        $this->load->model('news_model', 'newsManager');
        $data['news'] = $this->newsManager->liste_news(30, 0);

        $data['nombre'] = $this->newsManager->count();
        $this->load->view('includes/header');
        $this->load->view('news', $data);
        $this->load->view('includes/footer');
    }

    public function afficher_1() {
        $data = array();
        $this->load->model('news_model', 'newsManager');
        $data['news'] = $this->newsManager->liste_news(10, 0);

        $data['nombre'] = $this->newsManager->count();
        $this->load->view('includes/header');
        $this->load->view('news', $data);
        $this->load->view('includes/footer');
    }

    public function afficher_2($i) {
        $i1 = $i + 5;

        $data = array();
        $this->load->model('news_model', 'newsManager');
        $data['news'] = $this->newsManager->liste_news(10, $i);
        $data['nombre'] = $this->newsManager->count();
        $this->load->view('includes/header');
        $this->load->view('news', $data);
        $this->load->view('includes/footer');
    }

    public function afficher_new($id) {
        $data = array();
        $this->load->model('news_model', 'newsManager');
        $data['news'] = $this->newsManager->afficher_new($id);
        $this->load->view('includes/header');
        $this->load->view('afficher_new', $data);
        $this->load->view('includes/footer');
    }

    public function afficher_new2($id) {

        $data = array();
        $this->load->model('news_model', 'newsManager');
        $data['news'] = $this->newsManager->afficher_new($id);

        $this->load->view('form_modifier', $data);
    }

}
