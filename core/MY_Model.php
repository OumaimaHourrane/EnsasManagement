<?php

/**
 * Description of my_model
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 * @author Zakaria EL IDRISSI <elidrissithai@gmail.com
 *
 **/
class MY_Model extends CI_Model {

    const DB_TABLE = 'abstract';
    const DB_TABLE_PK = 'abstract';

    /**
     * Create record.
     */
    private function insert() {
        $this->db->insert($this::DB_TABLE, $this);
        $this->{$this::DB_TABLE_PK} = $this->db->insert_id();
    }

    /**
     * Update record.
     */
    public function modifier() {
        $this->db->update($this::DB_TABLE, $this, $this::DB_TABLE_PK);
    }

    public function update() {
        $this->db->where($this::DB_TABLE_PK, $this->{$this::DB_TABLE_PK});
        $this->db->update($this::DB_TABLE, $this);
    }

    /**
     * Populate from an array or standard class.
     * @param mixed $row
     */
    public function populate($row) {
        foreach ($row as $key => $value) {
            $this->$key = $value;
        }
    }


    public function getCount($cin)
    {
        $sql = "select count(i.formation_id) as 'count' from inscrits_formations i,condidats c , formations f where c.id_condidat=i.id_condidat and f.formation_id=i.formation_id and c.cin=?"; 
        $result=$this->db->query($sql, array($cin));
        $cnt = 0;
        foreach ($result->result_array()as $key) {
           $cnt=$key['count'];
        }
        return $cnt;
    }
      public function getlastcondidat()
    {
        $sql = "select id_condidat from condidats order by id_condidat  "; 
        $result=$this->db->query($sql);
        $lastprimarykey = 0;
        foreach ($result->result_array()as $key) {
           $lastprimarykey=$key['id_condidat'];
        }
        return $lastprimarykey;
    }
    public function getAll($id)
    {
        $this->db->select ( 'condidats.id_condidat,condidats.nom,condidats.prenom,condidats.date_naissance,condidats.cin,condidats.lieu_naissance,formations.titre' ); 
        $this->db->from ( 'condidats' );
        $this->db->join ( 'inscrits_formations', 'inscrits_formations.id_condidat = condidats.id_condidat' , 'left' );
        $this->db->join ( 'formations', 'formations.formation_id = inscrits_formations.formation_id' , 'left' );
        $this->db->where ( 'condidats.id_condidat', $id);
        $query = $this->db->get();
        return $query->result ();
    }
   public function getData()
    {
        $this->db->select ('condidats.id_condidat,condidats.nom,condidats.prenom,condidats.date_naissance,condidats.cin,condidats.lieu_naissance,condidats.tel_gsm,condidats.email,diplomes.bac,diplomes.nom_diplome,diplomes.etablissement,condidats.numero_inscription' ); 
        $this->db->from ( 'condidats' );
        $this->db->join ( 'diplomes', 'diplomes.id_condidat = condidats.id_condidat' , 'left' );
        $query = $this->db->get();
        return $query->result ();
    }
    public function getData2($id)
    {
        $this->db->select ('condidats.id_condidat,condidats.nom,condidats.prenom,condidats.date_naissance,condidats.cin,condidats.lieu_naissance,condidats.tel_gsm,condidats.email,diplomes.bac,diplomes.nom_diplome,diplomes.etablissement,condidats.numero_inscription' ); 
        $this->db->from ( 'condidats' );
        $this->db->join ( 'diplomes', 'diplomes.id_condidat = condidats.id_condidat' , 'left' );
        $this->db->join ( 'inscrits_formations', 'inscrits_formations.id_condidat = condidats.id_condidat' , 'left' );
        $this->db->where ( 'inscrits_formations.formation_id', $id);

        $query = $this->db->get();
        return $query->result ();
      
    }            
    /**
     * Load from the database.
     * @param int $id
     */
    public function load($id) {
        if ($id != FALSE) {
            $query = $this->db->get_where($this::DB_TABLE, array($this::DB_TABLE_PK => $id));
            $class = get_class($this);
            $model = new $class;
            $model->populate($query->row());
            return $model;
        } else {
            return FALSE;
        }
    }


    /**
     * Delete the current record.
     */
    public function delete() {
        $this->db->delete($this::DB_TABLE, array(
            $this::DB_TABLE_PK => $this->{$this::DB_TABLE_PK},
        ));
        unset($this->{$this::DB_TABLE_PK});
    }
  public function deleteall($ids) {
        $this->db->delete($this::DB_TABLE, array( $this::DB_TABLE_PK => $ids,
        ));
        unset($this->{$this::DB_TABLE_PK});
    }
    /**
     * Save the record.
     */
    public function save() {
        if (isset($this->{$this::DB_TABLE_PK})) {
            $this->update();
        } else {
            $this->insert();
        }
    }

    /**
     * Get an array of Models with an optional limit, offset.
     * 
     * @param int $limit Optional.
     * @param int $offset Optional; if set, requires $limit.
     * @return array Models populated by database, keyed by PK.
     */
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
