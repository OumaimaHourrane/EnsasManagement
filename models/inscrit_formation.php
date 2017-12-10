<?php

/**
 * Description of inscrit_formation
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Inscrit_formation extends MY_Model {

    const DB_TABLE = 'inscrits_formations';
    const DB_TABLE_PK = 'id_inscrit_formation';

    public $id_inscrit_formation;
    public $id_condidat;
    public $formation_id;

    function get_by_formation_id($formation_id) {
        if ($formation_id != FALSE) {
            $query = $this->db->get_where($this::DB_TABLE, array('formation_id' => $formation_id));
            $class = get_class($this);
            $ret_val = array();

            foreach ($query->result() as $row) {
                $model = new $class;
                $model->populate($row);
                $ret_val[$row->{$this::DB_TABLE_PK}] = $model;
            }
            return $ret_val;
        } else {
            return FALSE;
        }
    }

    public function get($limit = 0, $offset = 0) {
        if ($limit) {
            $query = $this->db->get($this::DB_TABLE, $limit, $offset);
        } else {
            $query = $this->db->get($this::DB_TABLE);
        }
        $ret_val = array();
        $class = get_class($this);
        foreach ($query->result() as $row) {
            $model = new $class;
            $model->populate($row);
            $ret_val[$row->{$this::DB_TABLE_PK}] = $model;
        }
        return $ret_val;
    }

}
