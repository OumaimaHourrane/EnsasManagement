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
                        ->order_by("categorie")
                        ->order_by("titre")
                        ->get()
                        ->result();
    }

    /**
     *  Ajoute une formation.
     */
    public function ajouter_formation($data) {

        return $this->db->set('titre', $data['titre'])
                        ->set('categorie', $data['categorie'])
                        ->set('frais_dossier', $data['frais_dossier'])
                        ->set('cout_formation', $data['cout_form'])
                        ->set('debut', $data['date_debut'])
                        ->set('fin', $data['date_fin'])
                        ->set('duree', $data['duree'])
                        ->set('selection', $data['selection'])
                        ->set('evaluation', $data['evaluation'])
                        ->set('diplome', $data['diplome'])
                        ->set('description', $data['description'])
                        ->set('objectifs', $data['objectifs'])
                        ->set('debauche', $data['debauches'])
                        ->set('admission', $data['admission'])
                        ->set('prog_descrip', $data['prog_descrip'])
                        ->set('module1', $data['module1'])
                        ->set('module1_mat', $data['module1_mat'])
                        ->set('module2', $data['module2'])
                        ->set('module2_mat', $data['module2_mat'])
                        ->set('module3', $data['module3'])
                        ->set('module3_mat', $data['module3_mat'])
                        ->set('module4', $data['module4'])
                        ->set('module4_mat', $data['module4_mat'])
                        ->set('module5', $data['module5'])
                        ->set('module5_mat', $data['module5_mat'])
                        ->set('module6', $data['module6'])
                        ->set('module6_mat', $data['module6_mat'])
                        ->set('module7', $data['module7'])
                        ->set('module7_mat', $data['module7_mat'])
                        ->set('module8', $data['module8'])
                        ->set('module8_mat', $data['module8_mat'])
                        ->set('commentaire', $data['comment'])
                        ->set('image', $data['img'])
                        ->insert($this->table);
    }

    /**
     *  Modifie une formation.
     */
    public function modifier_formation($id, $data) {

        extract($data);
        $this->db->where('formation_id', $id);
        $this->db->update($this->table, array('titre' => $titre,
            'categorie' => $categorie,
            'frais_dossier' => $frais_dossier,
            'cout_formation' => $cout_form,
            'debut' => $date_debut,
            'fin' => $date_fin,
            'duree' => $duree,
            'selection' => $selection,
            'evaluation' => $evaluation,
            'diplome' => $diplome,
            'description' => $description,
            'objectifs' => $objectifs,
            'debauche' => $debauches,
            'admission' => $admission,
            'prog_descrip' => $prog_descrip,
            'module1' => $module1,
            'module1_mat' => $module1_mat,
            'module2' => $module2,
            'module2_mat' => $module2_mat,
            'module3' => $module3,
            'module3_mat' => $module3_mat,
            'module4' => $module4,
            'module4_mat' => $module4_mat,
            'module5' => $module5,
            'module5_mat' => $module5_mat,
            'module6' => $module6,
            'module6_mat' => $module6_mat,
            'module7' => $module7,
            'module7_mat' => $module7_mat,
            'module8' => $module8,
            'module8_mat' => $module8_mat,
            'commentaire' => $comment,
            'image' => $img));
        return true;
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