<?php

include('dashboard.php');

class Admin extends CI_Controller {

    public function __construct() {
        parent::__construct();

        // « Décommenter » cette ligne pour charger le helper url
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->helper('file');
    }

    public function index() {

        $this->load->view('admin_news.php', array('error' => ''));
    }

    public function ajout_news() {

        $this->load->view('ajouter_news.php', array('error' => ''));
    }

    public function upload() {
        $titre = $this->input->post('titre');
        $auteur = $this->input->post('auteur');
        $contenu = $this->input->post('content');
        $date = date("Y-m-d");
        $config['upload_path'] = "assets/img";
        $config['allowed_types'] = 'jpg|jpeg|gif|png';
        $this->load->library('upload', $config);
        if (!$this->upload->do_upload()) {
            $error = array('error' => $this->upload->display_errors());
            $dash = new Dashboard();
            $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-danger\"><b>Une erreur est parvenue: " . $error . "</b></div></center>";
            $dash->index($msg);
        } else {
            $file_data = $this->upload->data();
            $data['img'] = 'assets/img/' . $file_data['file_name'];

            $this->load->model('news_model', 'newsManager');
            $this->newsManager->ajouter_news($auteur, $titre, $contenu, $data['img']);
            $dash = new Dashboard();
            $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-success\"><b>Ajout de l'actualité avec succés</b></div></center>";
            $dash->index($msg);
        }
    }

    public function modifier_news() {
        $data = array();
        $this->load->model('news_model', 'newsManager');
        $data['news'] = $this->newsManager->liste_news(30, 0);

        $data['nombre'] = $this->newsManager->count();



        $this->load->view('modifier_news', $data);
    }

    public function editer($id) {
        $titre = $this->input->post('titre');
        $contenu = $this->input->post('contenu');
        $config['upload_path'] = "assets/img";
        $config['allowed_types'] = 'jpg|jpeg|gif|png';
        $this->load->library('upload', $config);
        if (!$this->upload->do_upload()) {
            $file_data = $this->upload->data();
            $this->load->model('news_model', 'newsManager');
            $this->newsManager->editer_news2($id, $titre, $contenu);
            $dash = new Dashboard();
            $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-success\"><b>modification de l'actualité avec succés</b></div></center>";
            $dash->index($msg);
        } else {
            $file_data = $this->upload->data();
            $data['img'] = 'assets/img/' . $file_data['file_name'];
            $this->load->model('news_model', 'newsManager');
            $this->newsManager->editer_news($id, $titre, $contenu, $data['img']);
            $dash = new Dashboard();
            $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-success\"><b>modification de l'actualité avec succés</b></div></center>";
            $dash->index($msg);
        }
    }

    public function supprimer($id) {
        $this->load->model('news_model', 'newsManager');
        $this->newsManager->supprimer_news($id);
        $dash = new Dashboard();
        $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-success\"><b>Suppression de l'actualité avec succés</b></div></center>
                      <script> suppr();</script>
          ";
        $dash->index($msg);
    }

    public function supprimer_form($id) {
        $this->load->model('formation_model', 'newsManager');
        $this->newsManager->supprimer_formations($id);
        $dash = new Dashboard();
        $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-success\"><b>Suppression de la formation avec succès</b></div></center>
                      <script> supprform();</script>
          ";
        $dash->index($msg);
    }

    public function add_form() {

        $idform = $this->input->post('idform');

        $data = array(
            'titre' => $this->input->post('titre'),
            'categorie' => $this->input->post('categorie'),
            'frais_dossier' => $this->input->post('frais_dossier'),
            'cout_form' => $this->input->post('cout_form'),
            'date_debut' => $this->input->post('date_debut'),
            'date_fin' => $this->input->post('date_fin'),
            'duree' => $this->input->post('duree'),
            'selection' => $this->input->post('selection'),
            'evaluation' => $this->input->post('evaluation'),
            'diplome' => $this->input->post('diplome'),
            'description' => $this->input->post('description'),
            'objectifs' => $this->input->post('objectifs'),
            'debauches' => $this->input->post('debauches'),
            'admission' => $this->input->post('admission'),
            'prog_descrip' => $this->input->post('prog_descrip'),
            'module1' => $this->input->post('module1'),
            'module1_mat' => '<pre>' . $this->input->post('module1_mat') . '</pre>',
            'module2' => $this->input->post('module2'),
            'module2_mat' => '<pre>' . $this->input->post('module2_mat') . '</pre>',
            'module3' => $this->input->post('module3'),
            'module3_mat' => '<pre>' . $this->input->post('module3_mat') . '</pre>',
            'module4' => $this->input->post('module4'),
            'module4_mat' => '<pre>' . $this->input->post('module4_mat') . '</pre>',
            'module5' => $this->input->post('module5'),
            'module5_mat' => '<pre>' . $this->input->post('module5_mat') . '</pre>',
            'module6' => $this->input->post('module6'),
            'module6_mat' => '<pre>' . $this->input->post('module6_mat') . '</pre>',
            'module7' => $this->input->post('module7'),
            'module7_mat' => '<pre>' . $this->input->post('module7_mat') . '</pre>',
            'module8' => $this->input->post('module8'),
            'module8_mat' => '<pre>' . $this->input->post('module8_mat') . '</pre>',
            'comment' => $this->input->post('comment'),
            'img' => $this->input->post('imghide'),
        );

        $config['upload_path'] = "assets/img/SlideForm/";
        $config['allowed_types'] = 'jpg|jpeg|gif|png';
        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('userfile')) {
            $pos = strpos($data['img'], 'assets/');
            $data['img'] = substr($data['img'], $pos);
        } else {
            $file_data = $this->upload->data();
            $data['img'] = 'assets/img/SlideForm/' . $file_data['file_name'];
        }


        /* $config['upload_path']="assets/img" ;
          $config['allowed_types']='jpg|jpeg|gif|png' ;
          $this->load->library('upload',$config);

          if(!$this->upload->do_upload()){
          $error = array ('error'=>$this->upload->display_errors());
          $dash=new Dashboard();
          $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-danger\"><b>Une erreur est parvenue: ".$error."</b></div></center>";
          $dash->index($msg);
          }
          else { */
        //$file_data=$this->upload->data();
        //$data['img']='assets/img/'.$file_data['file_name'];

        if ($idform == 0) {
            $this->load->model('formation_model', 'newsManager');
            $this->newsManager->ajouter_formation($data);
            $dash = new Dashboard();
            $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-success\"><b>Ajout de la formation avec succès</b></div></center>";
            $dash->index($msg);
        } else {
            $this->load->model('formation_model'); // load the model first
            if ($this->formation_model->modifier_formation($idform, $data)) { // call the method from the model
                $dash = new Dashboard();
                $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-success\"><b>Formation modifiée avec succès</b></div>
               <script type='text/javascript' language='javascript'>loadform();</script>
            </center>";
                $dash->index($msg);
            } else {
                $dash = new Dashboard();
                $msg = "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-error\"><b>Erreur de modification</b></div></center>";
                $dash->index($msg);
            }
        }
        //}
    }

    public function modifier_formation($id) {

        $data = array();
        $this->load->model('formation_model', 'newsManager');
        $data['formation'] = $this->newsManager->afficher_formations($id);

        $this->load->view('modifier_formation', $data);
    }
        public function ajout_formations()
    {
        
        $this->load->view('ajouter_formation.php', array('error' => ''));
        
    }

}
