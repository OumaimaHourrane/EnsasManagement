<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

    public function get_list_users() {
        $query = $this->db->query('SELECT * FROM news order by date_ajout desc,id desc');
        if ($query->num_rows > 0) {
            $header = false;
            $output_string = '';
            $output_string .= "<center><h3>Liste des Utilisateurs:</h3><table style=\"width:500px;\" class=\"table\"><tr><th>ID</th><th>login</th><th>mot de passe</th></tr>";
            foreach ($query->result() as $row) {
                $output_string .= '<tr>';
                $output_string .= "<td>{$row->id}</td><td>{$row->login}</td><td>{$row->pwd}</td>";
                $output_string .= '</tr>';
            }
            $output_string .= '</table></center>';
        } else {
            $output_string = 'There are no results';
        }
        return $output_string;
    }

    public function get_list_actualites() {
        $query = $this->db->query('SELECT * FROM news order by date_ajout desc,id desc');

        if ($query->num_rows > 0) {
            $header = false;
            $output_string = '';
            $output_string .= "<center><h3>Liste des Actualites:</h3><table style=\"width:900px;\" class=\"table\"><tr><th>ID</th><th>Auteur</th><th>Date</th><th>Titre</th><th>Texte</th></tr>";
            foreach ($query->result() as $row) {
                $output_string .= '<tr>';//<td>{$row->auteur}</td>
                $output_string .= "<td>{$row->id}</td><td>{$row->date_ajout}</td><td>{$row->titre}</td><td>{$row->contenu}</td>";
                $output_string .= '</tr>';
            }
            $output_string .= '</table></center>';
        } else {
            $output_string = 'There are no results';
        }
        return $output_string;
    }

    public function get_list_formations() {
        $query = $this->db->get('formations');
        if ($query->num_rows > 0) {
            $header = false;
            $output_string = '';
            $output_string .= "<center><h3>Liste des Formations:</h3><table style=\"width:90%;\" class=\"table\"><tr><th>ID</th><th>Titre de formation</th><th>Catégorie</th><th>Durée</th><th>Date Début</th><th>Date Fin</th><th>Programme</th></tr>";
            foreach ($query->result() as $row) {
                $categup = strtoupper($row->categorie);
                $output_string .= '<tr>';
                $output_string .= "<td>{$row->formation_id}</td><td>{$row->titre}</td><td>$categup</td><td>{$row->duree} mois</td><td>{$row->debut}</td><td>{$row->fin}</td>";
                if ($row->duree == 0)
                    $output_string .= "<td></td>";
                else {
                    $output_string .= "<td>

                                       <b>Module 1: </b>{$row->module1}<br>{$row->module1_mat}
                                       <b>Module 2: </b>{$row->module2}<br>{$row->module2_mat}
                                       <b>Module 3: </b>{$row->module3}<br>{$row->module3_mat}
                                       <b>Module 4: </b>{$row->module4}<br>{$row->module4_mat}
                                       <b>Module 5: </b>{$row->module5}<br>{$row->module5_mat}
                                       <b>Module 6: </b>{$row->module6}<br>{$row->module6_mat}
                                       <b>Module 7: </b>{$row->module7}<br>{$row->module7_mat}
                                       <b>Module 8: </b>{$row->module8}<br>{$row->module8_mat}

                                   </td>";
                }
                $output_string .= '</tr>';
            }
            $output_string .= '</table></center>';
        } else {
            $output_string = 'There are no results';
        }
        return $output_string;
    }

    public function ajouter_formation() {



        return '

    <script type="text/javascript" src="<?php echo base_url(\'assets\'); ?>/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(\'assets\'); ?>/js/tinymce.js"></script>
      
        <center>
            
            <div class="well" style="width:700px; margin-top:30px;">
            <form class="form-horizontal" enctype="multipart/form-data" method="POST" action="' . base_url() . 'index.php/admin/add_form">
            <input type="hidden" name="idform" value="0"/>
            <fieldset>

            <!-- Form Name -->
            <legend><h3>Ajouter une formation</h3></legend>

            <ul class="nav nav-tabs">
              <li class="active"><a href="#info" data-toggle="tab">Informations et modalités</a></li>
              <li><a href="#desc" data-toggle="tab">Description et objectifs</a></li>
              <li><a href="#prog" data-toggle="tab">Programme</a></li>
            </ul>

            <div class="tab-content form-content">
            
              <div class="tab-pane active" id="info"><br>
               <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                  <input name="titre" placeholder="Titre de formation" class="form-group form-control input-sm" type="text" />
                
                  <select class="form-control input-sm" name="categorie">
                    <option value="">Choisissez une catégorie ...</option>
                    <option value="lpu">Licence professionnelle d\'université</option>
                    <option value="mu">Master d\'université</option>
                  </select>

                </div>
                <div class="col-sm-3"></div>
               </div><br>

               <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                  <input name="frais_dossier" placeholder="Frais du dossier (DHs)" class="form-group form-control input-sm" type="text" />
                  <input name="date_debut" placeholder="Date début de formation (Mois-aaaa)" class="form-group form-control input-sm" type="text" />
                </div>
                <div class="col-sm-5">
                  <input name="cout_form" placeholder="Coût de formation (DHs)" class="form-group form-control input-sm" type="text" />
                  <input name="date_fin" placeholder="Date fin de formation (Mois-aaaa)" class="form-group form-control input-sm" type="text" />
                </div>
                <div class="col-sm-1"></div>
               </div>

               <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                  <input name="duree" placeholder="Durée de formation (en mois)" class="form-group form-control input-sm" type="text" />
                  <input name="selection" placeholder="Conditions de séléction" class="form-group form-control input-sm" type="text" />
                  <input name="evaluation" placeholder="Méthodes d\'évaluation" class="form-group form-control input-sm" type="text" />
                  <input name="diplome" placeholder="Diplôme délivré" class="form-group form-control input-sm" type="text" />

                </div>
                <div class="col-sm-3"></div>
               </div><br>
                <div class="form-group">
                  <label class=" control-label"></label>
                  <div class="buttons">
                    <button class="btn btn-success" disabled>Ajouter</button>
                    <button id="button2id" name="button2id" class="btn btn-danger" type="reset">Annuler</button>
                  </div>
                </div> 
              </div>

              <div class="tab-pane" id="desc"><br>
                <div class="row">
                  <div class="col-sm-3"></div>
                  <div class="col-sm-6">
                    <label>Description de la formation</label>
                    <textarea rows="5" name="description" placeholder="Ajoutez une description de la formation" class="form-group form-control input-sm" />
                    <label>Objectifs de la formation</label>
                    <textarea rows="5" name="objectifs" placeholder="Les objectifs de la formation" class="form-group form-control input-sm" />
                    <label>Débouchés de la formation</label>
                    <textarea rows="5" name="debauches" placeholder="Les débouchés de la formation" class="form-group form-control input-sm" />
                    <label>Conditions d\'admission</label>
                    <textarea rows="5" name="admission" placeholder="Les conditions d\'admission" class="form-group form-control input-sm" />
                  </div>
                  <div class="col-sm-3"></div>
               </div><br>
                <div class="form-group">
                  <label class=" control-label"></label>
                  <div class="buttons">
                    <button class="btn btn-success" disabled>Ajouter</button>
                    <button id="button2id0" name="button2id" class="btn btn-danger" type="reset">Annuler</button>
                  </div>
                </div> 
              </div>

              <div class="tab-pane" id="prog"><br>
                <div class="row">
                  <div class="col-sm-3"></div>
                  <div class="col-sm-6">
                    <label>Description du programme</label>
                    <textarea rows="5" name="prog_descrip" placeholder="Ajoutez une description du programme" class="form-group form-control input-sm" />
                  </div>
                  <div class="col-sm-3"></div>
               </div>

               <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                  <label>Module 1</label>
                  <input name="module1" placeholder="Nom du module" class=" form-control input-sm" type="text" />
                  <textarea rows="3" name="module1_mat" placeholder="Matières du module" class=" form-control input-sm" />

                  <label>Module 3</label>
                  <input name="module3" placeholder="Nom du module" class=" form-control input-sm" type="text" />
                  <textarea rows="3" name="module3_mat" placeholder="Matières du module" class=" form-control input-sm" />

                  <label>Module 5</label>
                  <input name="module5" placeholder="Nom du module" class=" form-control input-sm" type="text" />
                  <textarea rows="3" name="module5_mat" placeholder="Matières du module" class=" form-control input-sm" />

                  <label>Module 7</label>
                  <input name="module7" placeholder="Nom du module" class=" form-control input-sm" type="text" />
                  <textarea rows="3" name="module7_mat" placeholder="Matières du module" class=" form-control input-sm" />
                </div>
                <div class="col-sm-5">
                  <label>Module 2</label>
                  <input name="module2" placeholder="Nom du module" class=" form-control input-sm" type="text" />
                  <textarea rows="3" name="module2_mat" placeholder="Matières du module" class=" form-control input-sm" />

                  <label>Module 4</label>
                  <input name="module4" placeholder="Nom du module" class=" form-control input-sm" type="text" />
                  <textarea rows="3" name="module4_mat" placeholder="Matières du module" class=" form-control input-sm" />

                  <label>Module 6</label>
                  <input name="module6" placeholder="Nom du module" class=" form-control input-sm" type="text" />
                  <textarea rows="3" name="module6_mat" placeholder="Matières du module" class=" form-control input-sm" />

                  <label>Module 8</label>
                  <input name="module8" placeholder="Nom du module" class=" form-control input-sm" type="text" />
                  <textarea rows="3" name="module8_mat" placeholder="Matières du module" class=" form-control input-sm" />
                </div>
                <div class="col-sm-1"></div>
               </div><br>

                <div class="form-group">
                  <label class=" control-label" for="button1id"></label>
                  <div class="buttons">
                    <button id="button1id" name="button1id" class="btn btn-success">Ajouter</button>
                    <button id="button2id00" name="button2id" class="btn btn-danger" type="reset">Annuler</button>
                  </div>
                </div>

              </div>

              

            </div>


            </fieldset>
            </form>


              </div>
             

        </center>';
    }

    public function modifier_formation() {
        $query = $this->db->get('formations');
        if ($query->num_rows > 0) {
            $header = false;
            $output_string = '';
            $output_string .= "<center><h3>Modifier les formations</h3><table style=\"width:90%;\" class=\"table bordered\"><tr><th>ID</th><th>Titre de formation</th><th>Catégorie</th><th>Modifier</th><th>Supprimer</th></tr>";
            foreach ($query->result() as $row) {
                $output_string .= '<tr>';
                $output_string .= "<td>{$row->formation_id}</td><td>{$row->titre}</td><td>{$row->categorie}</td>
                <td>
                    <a href=\"" . base_url() . "index.php/admin/modifier_formation/{$row->formation_id}\">
                        <div class=\"controls\">
                          <button id=\"plus\" name=\"plus\" class=\"btn btn-success\">Modifier</button></a>
                        </div>
                    </a>
                </td>
                <td>
                     <a class=\"confirmModalLink\" href=\"" . base_url() . "index.php/admin/supprimer_form/{$row->formation_id}\">
                      <div class=\"controls\">
                        <button id=\"plus\" name=\"plus\" class=\"btn btn-danger\">X</button></a>
                      </div>
                    </a>
                </td>";
                $output_string .= '</tr>';
            }
            $output_string .= "
                <div class='modal fade confirm-modal' id='confirmModal' >
                  <div class='modal-header'  style='width:450px; background-color:#fff; border-bottom:0px; margin-top:100px;'>
                      <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
                <h4>Confirmation de la suppression</h4>
                  </div>
                  <div class='modal-body'  style='width:450px; background-color:#fff;'>
                      <p>Etes-vous sûr de vouloir supprimer cet élément ?</p>
                  </div>
                  <div class='modal-footer'  style='width:450px; background-color:#fff; margin-top:0; padding: 5px 20px 5px;'>
                    <a href='#' class='btn' id='confirmModalNo'>Non</a>
                <a href='#' class='btn btn-primary' id='confirmModalYes'>Oui</a>
                  </div>
              </div>
              <script>
                                    $(document).ready(function () {
                    var theHREF;

                    $(\".confirmModalLink\").click(function(e) {
                        e.preventDefault();
                        theHREF = $(this).attr(\"href\");
                        $(\".confirm-modal\").modal(\"show\"); 
                        
                    });

                    $(\"#confirmModalNo\").click(function(e) {
                        $(\"#confirmModal\").modal(\"hide\");
                    });

                    $(\"#confirmModalYes\").click(function(e) {
                        window.location.href = theHREF;
                    });
                });

                    </script>

                </td>
            </table></center>";
            $output_string .= '';
        } else {
            $output_string = 'Aucune formation a modifier';
        }
        return $output_string;
    }

    public function user_informations() {
        $link = base_url() . 'index.php';
        $output_string = '<center class="modifier_info">
            <header class="header">Modifier vos informations</header>
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Modifier votre mot de passe</a></li>
              
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
              <div class="tab-pane fade in active" id="home">
                <form action="' . $link . 'dashboard/change_pwd" method="post" name="process">
                    <input type="password" name="current_pwd" placeholder="Ancien mot de passe" required/>
                    <input type="password" name="new_pwd" placeholder="Nouveau mot de passe" required/>
                    <input type="password" name="check_new_pwd" placeholder="Verifiez nouveau mot de passe" required/>
                    <input type="submit" value="Envoyer">
                </form>
              </div>
              
            </center>';
        return $output_string;
    }

    public function change_password() {
        $current_pwd = $this->security->xss_clean($this->input->post('current_pwd'));
        $new_pwd = $this->security->xss_clean($this->input->post('new_pwd'));
        $check_new_pwd = $this->security->xss_clean($this->input->post('check_new_pwd'));
        $username = $this->session->userdata['data']['login'];
        $link = base_url() . 'index.php';
// Prep the query
        $this->db->where('login', $username);
        $this->db->where('pwd', $current_pwd);
        $query = $this->db->get('users');
// Let's check if there are any results
        if ($query->num_rows == 0) {

            return '<center><div style="margin-top:100px; width:300px;"class="alert alert-danger"><b>Mot de passe actuel incorrecte</b></div></center></br>
                    <center class="modifier_info" style="margin-top:0px;">
                    <header class="header">Modifier vos informations</header>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                      <li class="active"><a href="#home" data-toggle="tab">Modifier votre mot de passe</a></li>
                      <li><a href="#profile" data-toggle="tab">Modifier votre adresse email</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                      <div class="tab-pane fade in active" id="home">
                        <form action="' . $link . 'dashboard/change_pwd" method="post" name="process">
                            <input type="password" name="current_pwd" placeholder="Ancien mot de passe" required/>
                            <input type="password" name="new_pwd" placeholder="Nouveau mot de passe" required/>
                            <input type="password" name="check_new_pwd" placeholder="Verifiez nouveau mot de passe" required/>
                            <input type="submit" value="Envoyer">
                        </form>
                      </div>
                      <div class="tab-pane fade" id="profile">
                        <form action="<?php echo base_url();?>login/process" method="post" name="process">
                            <input type="text" name="pwd" placeholder="Entrez votre mot de passe" required/>
                            <input type="password" name="email" placeholder="Entrez votre nouvel email" required/>
                            
                            <input type="submit" value="Envoyer">
                        </form>
                      </div>
                    </div>
                    </center>';
        } elseif ($new_pwd != $check_new_pwd) {
            return '<center><div style="margin-top:100px; width:300px;"class="alert alert-danger"><b>Les nouveaux mots de passe ne sont pas identiques</b></div></center></br>
                            <center class="modifier_info" style="margin-top:0px;>
                    <header class="header">Modifier vos informations</header>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                      <li class="active"><a href="#home" data-toggle="tab">Modifier votre mot de passe</a></li>
                      <li><a href="#profile" data-toggle="tab">Modifier votre adresse email</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                      <div class="tab-pane fade in active" id="home">
                        <form action="' . $link . 'dashboard/change_pwd" method="post" name="process">
                            <input type="password" name="current_pwd" placeholder="Ancien mot de passe" required/>
                            <input type="password" name="new_pwd" placeholder="Nouveau mot de passe" required/>
                            <input type="password" name="check_new_pwd" placeholder="Verifiez nouveau mot de passe" required/>
                            <input type="submit" value="Envoyer">
                        </form>
                      </div>
                      <div class="tab-pane fade" id="profile">
                        <form action="<?php echo base_url();?>login/process" method="post" name="process">
                            <input type="text" name="pwd" placeholder="Entrez votre mot de passe" required/>
                            <input type="password" name="email" placeholder="Entrez votre nouvel email" required/>
                            
                            <input type="submit" value="Envoyer">
                        </form>
                      </div>
                    </div>
                    </center>'
            ;
        } else {

            $this->db->set('pwd', $new_pwd);
            $this->db->update('users');

            return "<center><div style=\"margin-top:100px; width:300px;\"class=\"alert alert-success\"><b>Mot de passe modifié avec succés</b></div></center>";
        }
    }

    public function ajout_actualite() {


        return '
        <center class="ajout_article">
             
              <div class="well" style="width:500px; margin-top:30px;">
            <form class="form-horizontal" enctype="multipart/form-data" method="POST" action="' . base_url() . 'index.php/admin/upload">
            <fieldset>

            <!-- Form Name -->
            <legend><h3>Ajouter un article</h3></legend>

            <!-- Text input-->
            <div class="form-group">
              
              <div >
              <input id="titre" name="titre" placeholder="Titre" class="form-control input-md" type="text">
                
              </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
              
              <div class="">
             <!-- <input id="auteur" name="auteur" placeholder="Auteur"  class="form-control input-md" type="text">-->
               
              </div>
            </div>

            <!-- File Button --> 
            <div class="form-group">
              <label style="margin-left:30px;"class=" control-label" for="filebutton">Choisissez une image</label>
              <div class="">
                <input id="filebutton" name="userfile" required="" class="input-file" type="file">
              </div>
            </div>

            <!-- Textarea -->
            <div class="form-group" >
             
              <div class="">                     
              <div id="text">  <textarea class="form-control" id="text" placeholder="text" name="text"> 
                

                 </textarea></div>
              </div>
            </div>
             
            <!-- Button (Double) -->
            <div class="form-group">
              <label class=" control-label" for="button1id"></label>
              <div class="buttons">
                <button id="button1id" name="button1id" class="btn btn-success">Ajouter</button>
                <button id="button2id" name="button2id" class="btn btn-danger" type="reset">Annuler</button>
              </div>
            </div>
              
            </fieldset>
            </form>


              </div>
              <script type="text/javascript">
             $(document).ready(
                function(){

                  $(\'#text\').wysihtml5();

                }
              );
        
       </script>
        </center>';
    }

    public function modifier_actualite() {

        $query = $this->db->query('SELECT * FROM news order by date_ajout desc, id desc');

        if ($query->num_rows > 0) {
            $header = false;
            $output_string = '';
            $output_string .= "<center><h3>Modifier les actualités:</h3><table style=\"width:900px;\" class=\"table\"><tr><th>ID</th><th>Titre</th><th>Date</th><th>Modifier</th><th>Supprimer</th></tr>";
            foreach ($query->result() as $row) {
                $output_string .= '<tr>';
                $output_string .= "<td>{$row->id}</td><td>{$row->titre}</td><td>{$row->date_ajout}</td>
                <td>
                    <a href=\"" . base_url() . "index.php/cnews/afficher_new2/{$row->id}\">
                        <label class=\"control-label\" for=\"plus\"></label>
                        <div class=\"controls\">
                          <button id=\"plus\" name=\"plus\" class=\"btn btn-success\">Modifier</button></a>
                        </div>
                    </a>
                </td>
                <td>
                     <a class=\"confirmModalLink\" href=\"" . base_url() . "index.php/admin/supprimer/{$row->id}\">
                       <label class=\"control-label\" for=\"plus\"></label>
                      <div class=\"controls\">
                        <button id=\"plus\" name=\"plus\" class=\"btn btn-danger\">X</button></a>
                      </div>
                    </a>
                  </td>  
                    

                ";
                $output_string .= '</tr>';
            }
            $output_string .= "
                <div class='modal fade confirm-modal' id='confirmModal' >
                  <div class='modal-header'  style='width:450px; background-color:#fff; border-bottom:0px; margin-top:100px;'>
                      <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
                <h4>Confirmation de la suppression</h4>
                  </div>
                  <div class='modal-body'  style='width:450px; background-color:#fff;'>
                      <p>Etes-vous sûr de vouloir supprimer cet élément ?</p>
                  </div>
                  <div class='modal-footer'  style='width:450px; background-color:#fff; margin-top:0; padding: 5px 20px 5px;'>
                    <a href='#' class='btn' id='confirmModalNo'>Non</a>
                <a href='#' class='btn btn-primary' id='confirmModalYes'>Oui</a>
                  </div>
              </div>
              <script>
                                    $(document).ready(function () {
                    var theHREF;

                    $(\".confirmModalLink\").click(function(e) {
                        e.preventDefault();
                        theHREF = $(this).attr(\"href\");
                        $(\".confirm-modal\").modal(\"show\"); 
                        
                    });

                    $(\"#confirmModalNo\").click(function(e) {
                        $(\"#confirmModal\").modal(\"hide\");
                    });

                    $(\"#confirmModalYes\").click(function(e) {
                        window.location.href = theHREF;
                    });
                });

                    </script>

                </td>
            </table></center>";
        } else {
            $output_string = 'Aucune actualité a modifier';
        }
        return $output_string;
    }

}
?>