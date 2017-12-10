<?php

if (!defined('BASEPATH'))
    exit('Acces direct à la page interdit.');

/**
 * Description of profil
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Affichage extends CI_Controller {

    function index() {

        // loading models and helpers 
        $this->load->library('table');
        $this->load->model('Condidat');
        $this->load->helper('url');
        //
        $all_data = array();
        $brief_data = array();
        $condidats = $this->Condidat->get();

        foreach ($condidats as $con) {
            $brief_data [] = array(
                $id_condidat = $con->id_condidat,
                $nom = $con->nom,
                $prenom = $con->prenom,
                $fonction = $con->fonction,
                $adresse_personnelle = $con->adresse_personnelle,
                $tel_gsm = $con->tel_gsm,
                $email = $con->email,
                //anchor('administrateur/affichage/details/' . $id_condidat, 'Modifier', 'class="btn btn-success"'),
                //anchor('administrateur/affichage/supprimer/' . $id_condidat, 'X', 'class="btn btn-danger btn-medium text-center"')
             anchor('administrateur/affichage/details/' . $id_condidat, 'Modifier', 'class="btn btn-success"'),
                anchor('administrateur/affichage/supprimer/'.$id_condidat, 'X', array('data-confirm' => "voulez vous vraiment supprimer cette ligne !?",'class'=>"btn btn-danger")),

            );
        }
        $this->load->view('includes/admin_header');
        $this->load->view('administrateur/affichage', array('condidats' => $all_data,
            'main_content' => 'administrateur/affichage', 'brief_data' => $brief_data));
    }

    public function supprimer($id) {


        // loading models and helpers 
        $this->load->model('Condidat');
        $this->load->model('Experience');
        $this->load->model('Diplome');
        //

        $condidat = $this->Condidat->load($id);
        $condidat->delete();
        $experiences = $this->Experience->get();
        foreach ($experiences as $experience) {
            if ($experience->id_condidat == $id) {
                $experience->delete();
            }
        }
        $diplomes = $this->Diplomes->get();
        foreach ($diplomes as $diplome) {
            if ($diplome->id_condidat == $id) {
                $diplome->delete();
            }
        }


        redirect('administrateur/affichage');
    }

    public function details($id) {

        // loading models and helpers 
        $this->load->model('Condidat');
        $this->load->model('Diplome');
        $this->load->model('Experience');
        $this->load->library('table');
        $condidat = $this->Condidat->load($id);

        // sending data to the view 

        $diplome = new Diplome();
        $diplomes = $diplome->get_by_condidat($condidat->id_condidat);
        $experience = new Experience();
        $experiences = $experience->get_by_condidat($condidat->id_condidat);


        $this->load->view('includes/admin_header');
        $experiences = $this->load->view('administrateur/details', array('condidat' => $condidat,
            'main_content' => 'administrateur/details', 'experiences' => $experiences, 'diplomes' => $diplomes));
    }

    // mettre a joutr les informations :
    public function update($id) {
        $this->load->model('Condidat');
        $this->load->model('Diplome');
        $condidat = $this->Condidat->load($id);

        // getting admin inputs

        switch ($this->input->post('etat_selection')) {
            case "on":
                $condidat->etat_selection = 1;
                break;
            default:
                $condidat->etat_selection = 0;
                break;
        }

        switch ($this->input->post('etat_dossier')) {
            case "on":
                $condidat->etat_dossier = 1;
                break;
            default:
                $condidat->etat_dossier = 0;
                break;
        }
        //
        if ($this->input->post('decision_jury') == "on") {
            $condidat->decision_jury = "admis";
        } else {
            if ($this->input->post('liste_attente') == "on") {
                $condidat->decision_jury = "liste attente";
            } else {
                $condidat->decision_jury = "non admis";
            }
        }
        //
        $condidat->update();
        redirect('administrateur/affichage/success');
    }

    public function success() {
        // loading models and helpers 
        $this->load->library('table');
        $this->load->model('Condidat');
        $this->load->helper('url');
        //
        $all_data = array();
        $brief_data = array();
        $condidats = $this->Condidat->get();

        foreach ($condidats as $con) {
            $brief_data [] = array(
                $id_condidat = $con->id_condidat,
                $nom = $con->nom,
                $prenom = $con->prenom,
                $fonction = $con->fonction,
                $adresse_personnelle = $con->adresse_personnelle,
                $tel_gsm = $con->tel_gsm,
                $email = $con->email,
               // anchor('administrateur/affichage/details/' . $id_condidat, 'Voir', 'class="btn btn-success"'),
                //anchor('administrateur/affichage/supprimer/' . $id_condidat, 'X', 'class="btn btn-danger btn-medium text-center"')
             anchor('administrateur/affichage/details/' . $id_condidat, 'Modifier', 'class="btn btn-success"'),
                anchor('administrateur/affichage/supprimer/'.$id_condidat, 'X', array('data-confirm' => "voulez vous vraiment supprimer cette ligne !?",'class'=>"btn btn-danger")),

            );
        }

        $this->load->view('includes/admin_header');
        $this->load->view('administrateur/modification_condidat_success', array('condidats' => $all_data,
            'main_content' => 'administrateur/affichage', 'brief_data' => $brief_data));
    }

}
