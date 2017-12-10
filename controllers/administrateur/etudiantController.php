<?php

if (!defined('BASEPATH'))
    exit('Acces direct à la page interdit.');

/**
 * Description of profil
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class EtudiantController extends CI_Controller {

     public function attestation() {

        // loading models and helpers 
        $this->load->library('table');
        $this->load->model('Condidat');
        $this->load->model('Formation');
        $this->load->model('Inscrit_formation');
        $this->load->helper('url');
        $all_data = array();
        $brief_data = array();
        $condidats= $this->Condidat->get();
        $formations = $this->Formation->get();
      
    foreach ($condidats as $con) {
           
            $brief_data [] = array(
                $id_condidat = $con->id_condidat,
                $nomcomplete = $con->nom . ' ' . $con->prenom,
                $date_naissance = $con->date_naissance,
                $cin = $con->cin,
                $lieu_naissance = $con->lieu_naissance,
                $numinscription=$con->numero_inscription,
                 anchor('administrateur/my_pdf2/generate/' . $id_condidat, 'pdf1', 'class="btn btn-success"'),
                anchor('administrateur/notes/index/' . $id_condidat, 'pdf2', 'class="btn btn-danger btn-medium text-center"')
                //anchor('administrateur/affichage/details/' . $id_condidat, 'Modifier', 'class="btn btn-success"'),
                //anchor('administrateur/affichage/supprimer/'.$id_condidat, 'X', array('data-confirm' => "voulez vous vraiment supprimer cette ligne !?",'class'=>"btn btn-danger")),
                // "<input type='checkbox' name='etat_selection' />",
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
        $this->load->view('administrateur/attestation', 
            array('condidats' => $all_data,
            'main_content' => 'administrateur/attestation', 'brief_data' => $brief_data,
            'formations' => $formations, 'html_tab' => $html_tab, 'id_f' => 'all'));
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
        if ($formation_id == "all") {
            $condidats = $condidat->get();
        } else {
            foreach ($inscrit_formations as $if) {
                $condidats[] = $condidat->load($if->id_condidat);
            }
        }

        foreach ($condidats as $con) {
             $brief_data [] = array(
                $id_condidat = $con->id_condidat,
                $nomcomplete = $con->nom . ' ' . $con->prenom,
                $date_naissance = $con->date_naissance,
                $cin = $con->cin,
                $lieu_naissance = $con->lieu_naissance,
                $numinscription=$con->id_condidat . '/'.date('Y'),
                anchor('administrateur/my_pdf2/generate/' . $id_condidat, 'pdf1', 'class="btn btn-success"'),
                anchor('administrateur/notes/index/' . $id_condidat, 'pdf2', 'class="btn btn-danger btn-medium text-center"')
              //  anchor('administrateur/affichage/details/' . $id_condidat, 'Modifier', 'class="btn btn-success"'),
               // anchor('administrateur/affichage/supprimer/'.$id_condidat, 'X', array('data-confirm' => "voulez vous vraiment supprimer cette ligne !?",'class'=>"btn btn-danger")),
               //  "<input type='checkbox' name='etat_selection' />",
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
       // $this->load->view('includes/admin_header');
        $this->load->view('administrateur/attestation', 
            array('condidats' => $all_data,
            'main_content' => 'administrateur/attestation', 'brief_data' => $brief_data,
            'formations' => $formations, 'html_tab' => $html_tab, 'id_f' => 'all'));
    }
    public function supprimercondidat(){

          $this->load->model('Condidat');
          $this->load->model('Formation');
          $condidat = new Condidat();
          $this->load->helper(array('form', 'url'));
          $this->load->library('form_validation');
          $this->form_validation->set_rules('elements[]', 'User Mail', 'required');
          $table=array();
          foreach ($this->input->post('elements') as $key => $value)
          {
            $table[]= $condidat->load($value);
          }    
          $tous=array();
          $array['list']=$table;
          var_dump($table);
           $this->load->view('includes/admin_header');
          $this->load->view('administrateur/condidatMAJ', $array);
    }
    public function condidatMAJ()
    {
           // $this->load->library('table');

          $this->load->model('Condidat');
          $this->load->model('Formation');
          $this->load->model('Experience');
          $this->load->model('Diplome');

          $condidat = new Condidat();
          $this->load->helper(array('form', 'url'));
          $this->load->library('form_validation');
          $this->form_validation->set_rules('elements[]', 'User Mail', 'required');
          $table=array();
          foreach ($this->input->post('elements') as $key => $value)
          {
            $table[]= $condidat->load($value);
          }    
          $tous=array();
          
          if($this->input->post('btn'))
          {
            $array['list']=$table;  
            $this->load->view('includes/admin_header');
            $this->load->view('administrateur/condidatMAJ', $array);

          }elseif($this->input->post('sup')){
            

            $experiences = $this->Experience->get();
            $diplome = new Diplome();
            $diplomes = $this->Diplome->get();
            foreach ($table as $key ) {
              $condidat->deleteall($key->id_condidat);
               foreach ($experiences as $experience) {
                  if ($experience->id_condidat == $key->id_condidat) {
                       $experience->delete();
                  }
              }
               foreach ($diplomes as $diplome) {
                if ($diplome->id_condidat == $key->id_condidat) {
                    $diplome->delete();
                }
             
            }
           }
        redirect('administrateur/affichage');
         //$this->load->view('includes/admin_header');
         //$this->load->view('administrateur/condidatMAJ', $array);
       

       
    }
  }
    public function pdf($id)
    {
          $this->load->model('My');
          $this->load->model('Formation');
          $condidat = new My();
          $table =array();
          $table = $condidat->getAll($id);
          $array=array();
         // var_dump($table);
          $array['list']=$table;
          ///$this->load->view('includes/admin_header');
          $this->load->view('administrateur/fichierpdf', $array);
    
    }

    public function pdfrelever($id)
    {
         
    
    }
    public function GetInfos()
    { 
    
      $this->load->view('administrateur/GetInfos');
      
    }
    public function relevernotes($id)
    {   
      $this->load->helper('url');
      $this->load->helper(array('form', 'url'));

      $this->load->view('includes/headerRelever');
      

              $this->load->model('Condidat');
              $this->load->model('Formation');
              $this->load->model('Experience');
              $this->load->model('Diplome');
              $condidat = new Condidat();

              $vars= $condidat->getAll($id);

       $technologie=$this->input->post('technologie');
       $conception=$this->input->post('conception');
       $systemes=$this->input->post('systemes');
       $anglais=$this->input->post('anglais');
       $securite=$this->input->post('securite');
       $gestion=$this->input->post('gestion');
       $administration=$this->input->post('administration');
       $techniques=$this->input->post('techniques');
       $projet=$this->input->post('projet');
       $stage=$this->input->post('stage');
      

       
      $table =array();
   $table['list'] = array('technologie' => $technologie ,

                        'conception' => $conception,
                        'systemes'   => $systemes,
                        'anglais'    => $anglais,
                        'securite'   => $securite,
                        'gestion'    => $gestion,
                        'administration' => $administration,
                        'techniques' => $techniques,
                        'projet'     => $projet,
                        'stage'     => $stage,
                       
        );

      if($this->input->post('generer')){
       $this->load->view('administrateur/GetInfos',array('tables'=> $table , 'vars' => $vars));
      }
      $this->load->view('administrateur/relevernotes',array( 'vars' => $vars));
       
    }
    
}

   