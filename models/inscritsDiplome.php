<?php

/**
 * Description of Condidat
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class InscritsDiplome extends MY_Model {

    const DB_TABLE = 'getData';
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
    public $bac;

    /**
     * Fonction occupée par le condidat
     * @var type String
     * 
     */
    public $nom_diplome;

    /**nom_diplome
     * Fonction occupée par le condidat
     * @var type String
     * 
     */
    public $tel_gsm;

    /**nom_diplome
     * Fonction occupée par le condidat
     * @var type String
     * 
     */
 
   public $email;

    /**nom_diplome
     * Fonction occupée par le condidat
     * @var type String
     * 
     */
    /**
     *  Numéro attribué par l'administration
     * @var type String 
     * 
     */
    public $numero_inscription;
    public $formation_id;
    //public $numero_inscription;
   

}
