<?php

/**
 * Description of inscription
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Inscription extends CI_Controller {

    public function index() {

        //loading the template

        $this->load->model('Formation');
        $formation = new Formation();
        $formations = $formation->get();
        $this->load->view('includes/header');
        $this->load->view('inscription_form', array('formations' => $formations,
            'main_content' => 'inscription_form'));
        $this->load->view('includes/footer');

        // loading models
    }

    public function add() {

        $data['main_content'] = 'inscription_form';
        $this->load->view('includes/header');
        
        $this->load->model('Condidat');
        $this->load->model('Diplome');
        $this->load->model('Experience');
        $this->load->model('Formation');
        
        $this->load->model('Inscrit_formation');

        //Getting  data

        $condidat = new Condidat();
        $condidat->nom = $this->input->post('nom');
        $condidat->prenom = $this->input->post('prenom');
        $condidat->date_naissance = $this->input->post('date_naissance');
        $condidat->lieu_naissance = $this->input->post('lieu_naissance');
        $condidat->cin = $this->input->post('cin');
        $condidat->nationalite = $this->input->post('nationalite');
        $condidat->adresse_personnelle = $this->input->post('adresse_personnelle');
        // $condidat->situation_famille = "d";$
           /* $condidat->fax = "d";
        $condidat->email ="d";
        $condidat->login = "d";
        $condidat->password = "d";
        $condidat->motivations = "d";
        $condidat->confirmation = "d";*/
        $condidat->fonction = $this->input->post('fonction');
        $condidat->tel_fixe = $this->input->post('tel_fixe');
        $condidat->tel_gsm = $this->input->post('tel_gsm');
        $condidat->email = $this->input->post('email');

       
    

       

        if ($this->input->post('source_info') != "autre") {
            $condidat->source_info = $this->input->post('source_info');
        } else {
            $condidat->source_info = $this->input->post('source_info_input');
        }

        // Generation d'une clé pour la confirmation

        $condidat->confirmation = "pending";
        $this->load->helper('string');
        $token = random_string('alnum', 16);
        $condidat->cle_confirmation = $token;
       // $condidat->save();
        // Validation.
        
        
        $this->load->library('form_validation');
        $this->form_validation->set_rules('nom', '"Nom "', 'trim|required|min_length[4]|max_length[52]|alpha_dash|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('prenom', '"Prénom"', 'trim|required|min_length[4]|max_length[52]|alpha_dash|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('date_naissance', 'Date Naissance', 'trim|required|valid_date[d/m/y,/]|callback_valid_date[' . $this->input->post('date_naissance') . ']');
        $this->form_validation->set_rules('lieu_naissance', '"Lieu de Naissance"', 'trim|required|min_length[4]|max_length[52]|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('cin', '"CIN"', 'trim|required|min_length[4]|max_length[52]|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('nationalite', '"Nationalité"', 'trim|required|min_length[4]|max_length[52]|alpha_dash|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('fonction', '"Fonction"', 'trim|required|min_length[4]|max_length[52]|encode_php_tags|xss_clean');
       // $this->form_validation->set_rules('situation_famille', '"Situation de famille "', 'trim|required|min_length[4]|max_length[20]|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('adresse_personnelle', '"Adresse Personelle"', 'trim|required|min_length[10]|max_length[52]|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('tel_gsm', '"Tél. GSM"', 'trim|required|min_length[14]|max_length[14]|alpha_dash|encode_php_tags|xss_clean');
        //$this->form_validation->set_rules('tel_fixe', '"Tél. Fixe"', 'trim|min_length[14]|max_length[14]|alpha_dash|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('email', '"Email"', 'required|valid_email|max_length[255]|callback_valid_email|');
        $this->form_validation->set_rules('login', '"Nom d\'utilisateur"', 'trim|required|min_length[4]|max_length[52]|alpha_dash|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('password', '"Mot de passe"', 'trim|required|min_length[4]|max_length[52]|alpha_dash|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('password_2', '"Confirmation du passe"', 'trim|required|min_length[4]|max_length[52]|alpha_dash|encode_php_tags|xss_clean');
        $this->form_validation->set_rules('motivations', '"Motivations"', 'trim|required|max_length[1000]|encode_php_tags|xss_clean');

        // Error container 
        $this->form_validation->set_error_delimiters('<div class="error-container"><div class="arrow-up"  style="margin-top:5px; margin-left:45%;"></div><div class="b-message message-error"> <i class="fa fa-exclamation-circle"></i> ', '</div></div>');

        // validation functions
       /* function valid_email($str) {
            $condidat = new Condidat();
            $condidats = $condidat->get();
            $count = 0;
            foreach ($condidats as $user) {
                if ($user->email == $str) {
                    $count++;
                }
            }
            if ($count == 0) {
                return TRUE;
            } else {
                $this->form_validation->set_message('email', 'Cette adresse email est déjà utlisée.');
                return FALSE;
            }
        }*/

        // validation success
                //$id;

             
          
                $diplome = new Diplome();
            
                $diplome->nom_diplome = $this->input->post('nom_diplome');
            
                $diplome->annee_obtention = $this->input->post('annee_obtention');
            
                $diplome->etablissement = $this->input->post('etablissement');     
            
                $diplome->bac = $this->input->post('bac');

                $diplome->id_condidat = $condidat->id_condidat;
            
               
            $formation_id = $this->input->post('formations');


            $inscrit_formation = new Inscrit_formation();

            $inscrit_formation->id_condidat = $condidat->id_condidat;
            $inscrit_formation->formation_id = $formation_id;
            
           
         /* if($inscrit_formation->id_condidat == $condidat->id_condidat){
                if($inscrit_formation->formation_id == 4 ){
                    $count++;
                }elseif($inscrit_formation->formation_id == 5 ){
                    $count++;
                }elseif($inscrit_formation->formation_id == 6 ){
                    $count++;
                }elseif($inscrit_formation->formation_id == 7 ){
                    $count++;
                }
            }*/

           
             $formats = new Formation();
             $fs = $formats->get();
             $titre = null;
              $conds=$condidat->get();
              $forms= $inscrit_formation->get();
              $count=0;
                foreach ($conds as $k => $v) {
                   if($v->cin == $condidat->cin ){
                    foreach ($forms as $key => $value) {
                      if($k == $value->id_condidat){
                        foreach ($fs as $formid => $valuefor) {
                            if($value->formation_id == $formid){
                                if($formid == $formation_id){
                                    if($formation_id == 4){
                                         
                                         $titre =$valuefor->titre;
                                         $count +=1;

                                     }elseif($formation_id == 5){
                                       
                                         $titre =$valuefor->titre;
                                         $count +=1;


                                     }elseif($formation_id == 6){
                                      
                                         $titre =$valuefor->titre;
                                         $count +=1;
                 


                                     }elseif($formation_id == 7){
                                       
                                         $titre =$valuefor->titre;
                                         $count +=1;
                 

                                     }
                                  
                                }
                            }
                        }
                        
                      }
                    }
                    
                   }
                }
            if(($formats->getCount($condidat->cin))>2)
            {
                    echo "<script> alert('impossible de faire linscription dans troix branche !! ');</script>" ;
                    //$this->load->view('inscription_form');

            }
            if($count == 1 ){
                 echo "<script> alert('vous etes deja inscrit dans le filiere : $titre ');</script>" ;
                 $this->load->view('inscription_form');
                
            }else{

                 //  $condidat->save();
                  if ($diplome->nom_diplome != NULL) {
                         //  $diplome->save();
                     }


                  // $inscrit_formation->save();
            if ($formation_id = !NULL) {
                
                $this->session->set_userdata('formation_id', $formation_id);
                
            }
            // sending mail confirmation

            $to = $condidat->email;
            $this->sendemail($to, $token);

            //

            $this->load->view('inscription_form_success');
        if ($this->form_validation->run()) {

               
            
            
            
           
        } else {

            $this->load->model('Formation');
            $formation = new Formation();
            $formations = $this->Formation->get();

            $this->load->view('inscription_form', array('formations' => $formations,  'main_content' => 'inscription_form'));
            $this->load->view('includes/footer');
        }
            }

          
    }

    public function sendemail($to, $token) {
        $this->load->library('email');
        $this->email->from('abel.ainou@gmail.com', 'Abdelghani AINOUSS');
        $this->email->to($to);
        $this->email->subject('Inscrption à la Formation continue ENSAS');
        $this->email->message('Votre espace personnel est crée, pour l\'activer cliquer sur le lien suivant : ' . base_url() . 'index.php/profil/activate/' . $token);
        $this->email->send();
    }

    public function ajout() {
        $data['main_content'] = 'inscription_form';
        $this->load->view('template', $data);
    }

    public function activate($id) {
        
    }

    public function success() {
        $data['main_content'] = 'inscription_form_success';
        $this->load->view('template', $data);
        $this->load->view('includes/footer');
    }

}
