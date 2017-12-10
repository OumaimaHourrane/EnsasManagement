<?php

/**
 * Description of Condidat
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class My extends MY_Model {

    const DB_TABLE = 'alldata';
    const DB_TABLE_PK = 'id_condidat';

    /**
     * Id condidat
     * @var type int 
     */
    public $id_condidat;

    /**
     * nom du condidat 
     * @var type String
     */
    public $nom;

    /**
     * prénom du condidat 
     * @var type String
     * 
     */
    public $prenom;

    /**
     *  Date de naissance du condidat
     * @var type Date
     * 
     */
    public $date_naissance;

    /**
     * Lieu de naissance 
     * @var type String
     * 
     */
    public $lieu_naissance;

    /**
     * Carte d'Identtité Nationale (num)
     * @var type String
     * 
     */
    public $cin;

    /**
     * Nationalité
     * @var type String
     * 
     */
    public $titre;

    /**
     * Fonction occupée par le condidat
     * @var type String
     * 
     */
 
   

}
