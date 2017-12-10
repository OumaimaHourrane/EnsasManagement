<?php

/**
 * Description of site
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Site extends CI_Controller {

    function inscription() {
        $data['main_content'] = 'inscription_form';
        $this->load->view('template', $data);
    }

    function index() {
        $data = array();
        $this->load->model('formation_model', 'newsManager');
        $data['liste'] = $this->newsManager->liste_formations();
        $this->load->view('includes/header');
        $this->load->view('includes/slider', $data);
        $this->load->view('home', $data);
        $this->load->view('includes/footer');
    }

}
