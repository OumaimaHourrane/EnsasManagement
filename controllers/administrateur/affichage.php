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
        $this->load->model('Formation');
        $this->load->model('Inscrit_formation');
        $this->load->helper('url');
        //
        $all_data = array();
        $brief_data = array();

        $condidats= $this->Condidat->get();
       // $formation = new Formation();
        $formations = $this->Formation->get();
       // $array["list"]=$condidats;
       // $arr['formations']=$formations;
       // $this->load->view('includes/admin_header');
       // $this->load->view("administrateur/affichage",$array);
        //$this->load->view("administrateur/affichage",$arr);
       // $inscrit_formations = $inscrit_formation->get();
          $this->load->model('CondidatDiplome');
          $condidatdiplome = new CondidatDiplome();
          $r=$condidatdiplome->getData();
         
    foreach ( $r as $con) {
           
            $brief_data [] = array(
                $id_condidat = $con->id_condidat,
                $nomcomplete = $con->nom . ' ' . $con->prenom,
                $date_naissance = $con->date_naissance,
                $cin = $con->cin,
                $institus= $con->etablissement,
                $numinscription=$con->numero_inscription,
                $email=$con->email,
                $gsm=$con->tel_gsm,
                $bac=$con->bac,
                $nom_diplome=$con->nom_diplome,
                anchor('administrateur/affichage/details/' . $id_condidat, 'Details', 'class="label label-success"'),
                anchor('administrateur/affichage/supprimer/'.$id_condidat, 'Supprimer', array('data-confirm' => "voulez vous vraiment supprimer cette ligne !?",'class'=>"label label-danger")),
                 "<input type='checkbox' name='etat_selection' />", 

              );
           
       }

        $html_tab = array();
        foreach ($condidats as $condidat_pdf) {
            $html_tab [] = array(
                $nom = $condidat_pdf->nom,
                $prenom = $condidat_pdf->prenom,
                $fonction = $condidat_pdf->fonction,
                 $adresse_personnelle = $condidat_pdf->adresse_personnelle,
                 $tel_gsm = $condidat_pdf->tel_gsm,
                $email = $condidat_pdf->email
            );
        }
        $this->load->view('includes/admin_header');
        $this->load->view('administrateur/affichage', 
            array('condidats' => $all_data,
            'main_content' => 'administrateur/affichage', 'brief_data' => $brief_data,
            'formations' => $formations, 'html_tab' => $html_tab, 'id_f' => 'all'));
    }






    public function pdf() {
        $this->load->helper(array('dompdf', 'file'));
        // page info here, db calls, etc. 
        $data['pdf'] = "hhhhhhhhhhhhhhh";
        $html = $this->load->view('administrateur/pdf', $data, true);
        pdf_create($html, 'filename');
        //if you want to write it to disk and/or send it as an attachment    
    }

    public function formation($formation_id) {


        // loading models and helpers 
        $this->load->library('table');
        $this->load->model('Condidat');
        $this->load->model('Formation');
        $this->load->model('Inscrit_formation');
        $this->load->helper('url');
        //
        $all_data = array();
        $brief_data = array();
        $condidats = $this->Condidat->get();
        $formation = new Formation();
        $formations = $formation->get();

        $inscrit_formation = new Inscrit_formation();
        $inscrit_formations = $inscrit_formation->get_by_formation_id($formation_id);
        $condidat = new Condidat();
        $condidats = array();

        $this->load->model('InscritsDiplome');
        $inscritsDiplome = new InscritsDiplome();
        $r=$inscritsDiplome->getData2($formation_id);
         
        /*if ($formation_id == "all") {
            $condidats = $condidat->get();
        } else {
            foreach ($inscrit_formations as $if) {
                $condidats[] = $condidat->load($if->id_condidat);
            }
        }*/

        // On doit voir le mecanisme du model inscrit_formation
        foreach ( $r as $con) {
           
            $brief_data [] = array(
                $id_condidat = $con->id_condidat,
                $nomcomplete = $con->nom . ' ' . $con->prenom,
                $date_naissance = $con->date_naissance,
                $cin = $con->cin,
                $institus= $con->etablissement,
                $numinscription=$con->numero_inscription,
                $email=$con->email,
                $gsm=$con->tel_gsm,
                $bac=$con->bac,
                $nom_diplome=$con->nom_diplome,
                anchor('administrateur/affichage/details/' . $id_condidat, 'Details', 'class="label label-success"'),
                anchor('administrateur/affichage/supprimer/'.$id_condidat, 'Supprimer', array('data-confirm' => "voulez vous vraiment supprimer cette ligne !?",'class'=>"label label-danger")),
                 "<input type='checkbox' name='etat_selection' />", 

              );
           
       }


        $html_tab = array();
        foreach ($condidats as $condidat_pdf) {
            $html_tab [] = array(
                $nom = $condidat_pdf->nom,
                $prenom = $condidat_pdf->prenom,
                $fonction = $condidat_pdf->fonction,
                $adresse_personnelle = $condidat_pdf->adresse_personnelle,
                $tel_gsm = $condidat_pdf->tel_gsm,
                $email = $condidat_pdf->email
            );
        }

        $id = $formation_id;
        $f = $this->Formation->load($id);
        $titre_formation = $f->titre;

        $this->load->view('administrateur/affichage', array('condidats' => $all_data,
            'main_content' => 'administrateur/ajax_result', 'brief_data' => $brief_data,
            'formations' => $formations, 'html_tab' => $html_tab, 'id_f' => $id,
            'titre_formation' => $titre_formation));
    }

    public function supprimer($id) {


        // loading models and helpers 
        $this->load->model('Condidat');
        $this->load->model('Experience');
        $this->load->model('Diplome');
        $this->load->model('Inscrit_formation');

        $this->load->model('inscrit');

        //

        $condidat = $this->Condidat->load($id);
        $inscrit = $this ->Inscrit_formation->load($id);
        $condidat->delete();
        $inscrit->delete();
        
        $this->inscrit->supprimer_inscrits($id);
        
        $experiences = $this->Experience->get();
        foreach ($experiences as $experience) {
            if ($experience->id_condidat == $id) {
                $experience->delete();
            }
        }
        $diplome = new Diplome();
        $diplomes = $this->Diplome->get();
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
               // anchor('administrateur/affichage/supprimer/' . $id_condidat, 'X', 'class="btn btn-danger btn-medium text-center"')
              anchor('administrateur/affichage/details/' . $id_condidat, 'Modifier', 'class="btn btn-success"'),
                anchor('administrateur/affichage/supprimer/'.$id_condidat, 'X', array('data-confirm' => "voulez vous vraiment supprimer cette ligne !?",'class'=>"btn btn-danger")),

            );
        }

        $this->load->view('includes/admin_header');
        $this->load->view('administrateur/modification_condidat_success', array('condidats' => $all_data,
            'main_content' => 'administrateur/affichage', 'brief_data' => $brief_data));
    }

}
