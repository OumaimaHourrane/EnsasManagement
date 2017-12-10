<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Notes_model extends CI_Model {

    protected $table = 'formations';

    public function afficher_formations($id_formation) {
        return $this->db->select('*')
                        ->from($this->table)
                        ->where('formation_id', (int) $id_formation)
                        ->order_by('formation_id', 'desc')
                        ->get()
                        ->result();
    }

    public function affiche($id) {

        return $this->db->select('formation_id')
                        ->from('inscrits_formations')
                        ->where('id_condidat', (int) $id)
                        ->get()
                        ->result();
    }
    public function modules($id) {

        return $this->db->select('formation_id')
                        ->from('inscrits_formations')
                        ->where('id_condidat', (int) $id)
                        ->get()
                        ->result();
    }

}