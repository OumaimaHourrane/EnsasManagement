<?php

/**
 * Description of site
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Experience extends MY_Model {

    const DB_TABLE = 'experiences';
    const DB_TABLE_PK = 'id_experience';

    /**
     *  Id de l'éxperience
     * @var type Integer
     */
    public $id_experience;

    /**
     *  Id du condidat
     * @var type Integer
     */
    public $id_condidat;

    /**
     *  Fonction occupée par le condidat
     * @var type String
     */
    public $fonction;

    /**
     *  Durée de l'expérience
     * @var type String
     */
    public $duree;

    /**
     * Résponsablité et réalisation du condidat
     * @var type String
     */
    public $responsabilite;

    /**
     *  Organisme ou à travaillé le condidat
     * @var type String
     */
    public $organisme;

    /**
     *  Retourne les diplomes d'un condidats donné
     * @var type String
     */
    public function get_by_condidat($id) {

        $query = $this->get();
        $data = array();
        foreach ($query as $result) {
            if ($result->id_condidat == $id) {
                $data[] = array(
                    $organisme = $result->organisme,
                    $fonction = $result->fonction,
                    $duree = $result->duree,
                    $responsabilite = $result->responsabilite,
                );
            }
        }
        return $data;
    }

}
