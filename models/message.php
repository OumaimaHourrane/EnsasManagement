<?php

/**
 * Description of Condidat
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Message extends MY_Model {

    const DB_TABLE = 'messages';
    const DB_TABLE_PK = 'id_message';

    /**
     * Id condidat
     * @var type int 
     */
    public $id_message;

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
    public $sujet;

    /**
     *  Date de naissance du condidat
     * @var type Date
     * 
     */
    public $date;

    /**
     * Lieu de naissance 
     * @var type String
     * 
     */
    public $email;

    /**
     * Carte d'Identtité Nationale (num)
     * @var type String
     * 
     */
    public $message;

    /**
     * Nationalité
     * @var type String
     * 
     */
}
