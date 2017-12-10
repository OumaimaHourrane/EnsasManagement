<?php
if (!defined('BASEPATH'))
    exit('Acces direct à la page interdit.');

/**
 * Description of profil
 *
 * @author EL IDRISSI Zakaria 
 */
class Notes extends CI_Controller {

    function index($id) {
    	$this->load->model('Condidat');
        $this->load->model('Formation');
        $this->load->model('Notes_model','newsManager');
        $con = $this->Condidat->load($id);
        $data = array();

        $this->load->model('formation_model', 'newsManager2');
        $data['liste'] = $this->newsManager2->liste_formations();
        $data['id_form'] = $this->newsManager->affiche($id);              // recuperation de l id de formation puis lintroduire dans la fct 
        //$d =  5;
        //$data['form'] = $this->newsManager->afficher_formations($d);

        $data['select'] = $id;
        $data['con'] = $con;
        //$data['form'] = $this->Notes_model->afficher_formations($id2);

    	$this->load->view('includes/admin_header');
        $this->load->view('administrateur/notes',$data);
    }
} ?>   