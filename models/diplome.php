<?php

/**
 * Description of site
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Diplome extends MY_Model {

    const DB_TABLE = 'diplomes';
    const DB_TABLE_PK = 'id_diplome';

    /**
     * Id du diplome
     * @var type Integer 
     */
    public $id_diplome;

    /**
     * Année d'obtention
     * @var type Date
     */
    public $annee_obtention;

    /**
     *  Nom du diplome 
     * @var type String
     */
    public $nom_diplome;
    
    
    /**
     *  BAC 
     * @var type String
     */
    public $bac;

    /**
     *  Établissement 
     * @var type String
     */
    public $etablissement;

    /**
     *  Id du condidat
     * @var type Integer
     */
    public $id_condidat;

    public function get_by_condidat($id) {

        $query = $this->get();
        $data = array();
        foreach ($query as $result) {
            if ($result->id_condidat == $id) {
                $data[] = array(
                    $nom_diplome = $result->nom_diplome,
                    $annee_obtention = $result->annee_obtention,
                    $etablissement = $result->etablissement,                    
                    $bac = $result->bac,

                );
            }
        }
        return $data;
    }

}
