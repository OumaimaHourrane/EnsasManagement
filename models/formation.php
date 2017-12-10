<?php

/**
 * Description of formation
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Formation extends MY_Model {

    const DB_TABLE = 'formations';
    const DB_TABLE_PK = 'formation_id';

    public $formation_id;
    public $titre;
    public $categorie;
    public $frais_dossier;
    public $cout_form;
    public $date_debut;
    public $date_fin;
    public $duree;
    public $selection;
    public $evaluation;
    public $diplome;
    public $description;
    public $objectifs;
    public $debauches;
    public $prog_descrip;
    public $module1;
    public $module1_mat;
    public $module2;
    public $module2_mat;
    public $module3;
    public $module3_mat;
    public $module4;
    public $module4_mat;
    public $module5;
    public $module5_mat;
    public $module6;
    public $module6_mat;
    public $module7;
    public $module7_mat;
    public $module8;
    public $module8_mat;

    public function get_tile() {
        
    }

}
