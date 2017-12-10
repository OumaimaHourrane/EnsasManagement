<?php

if (!defined('BASEPATH'))
    exit('Acces direct à la page interdit.');

/**
 * Description of profil
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Stats extends CI_Controller {

    function index() {

        // loading models and helpers 
        $this->load->library('table');
        $this->load->model('Condidat');
        $this->load->model('Formation');
        $this->load->helper('url');
        $this->load->view('includes/admin_header');
        $this->load->view('administrateur/stats');
    }

}
