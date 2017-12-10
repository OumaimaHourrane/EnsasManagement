<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 *  News_model
 *
 *      ajouter_news($auteur, $titre, $contenu)
 *      editer_news($id, $titre = null, $contenu = null)
 *      supprimer_news($id)
 *      count($where = array())
 *      liste_news($nb = 10, $debut = 0)
 */
class Formation_model extends CI_Model {

    protected $table = 'formations';

    /**
     *  Retourne une liste des formations.
     */

    public function liste_formations() {
        
        return $this->db->select('*')
                        ->from($this->table)
                        ->get()
                        ->result();
    }

      /**
     *  Ajoute une formation.
     */
    public function ajouter_formation($titre, $categorie, $frais_dossier, $cout_form, $date_debut,$date_fin,$duree,$selection,
            $evaluation,$diplome,$description,$objectifs,$debauches,$prog_descrip,$module1,$module1_mat,$module2,$module2_mat,$module3,
            $module3_mat,$module4,$module4_mat,$module5,$module5_mat,$module6,$module6_mat,$module7,$module7_mat,$module8,$module8_mat) {
        
        return $this->db->set('titre', $titre)
                        ->set('categorie', $categorie)
                        ->set('frais_dossier', $frais_dossier)
                        ->set('cout_formation', $cout_form)
                        ->set('debut', $date_debut)
                        ->set('fin', $date_fin)
                        ->set('duree', $duree)
                        ->set('selection', $selection)
                        ->set('evaluation', $evaluation)
                        ->set('diplome', $diplome)
                        ->set('description', $description)
                        ->set('objectifs', $objectifs)
                        ->set('debauche', $debauches)
                        ->set('prog_descrip', $prog_descrip)
                        ->set('module1', $module1)
                        ->set('module1_mat', $module1_mat)
                        ->set('module2', $module2)
                        ->set('module2_mat', $module2_mat)
                        ->set('module3', $module3)
                        ->set('module3_mat', $module3_mat)
                        ->set('module4', $module4)
                        ->set('module4_mat', $module4_mat)
                        ->set('module5', $module5)
                        ->set('module5_mat', $module5_mat)
                        ->set('module6', $module6)
                        ->set('module6_mat', $module6_mat)
                        ->set('module7', $module7)
                        ->set('module7_mat', $module7_mat)
                        ->set('module8', $module8)
                        ->set('module8_mat', $module8_mat)
                        ->insert($this->table);
    }

    /**
     *  Supprime une formation.
     */
    public function supprimer_formations($id) {
        return $this->db->where('formation_id', (int) $id)
                        ->delete($this->table);
    }

    public function afficher_formations($id) {
    return $this->db->select('*')
                    ->from($this->table)
                    ->where('formation_id', (int) $id)
                    ->order_by('formation_id', 'desc')
                    ->get()
                    ->result();
    }



}

/* End of file news_model.php */
/* Location: ./application/models/formation_model.php */