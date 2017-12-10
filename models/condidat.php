<?php

/**
 * Description of Condidat
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Condidat extends MY_Model {

    const DB_TABLE = 'condidats';
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
    public $nationalite;

    /**
     * Fonction occupée par le condidat
     * @var type String
     * 
     */
    public $fonction;

    /**
     *  État du condidat ( Célibataire / marié (e) / divorcé (e) ...)
     * @var type String
     * 
     */
    public $situation_famille;

    /**
     *  Adresse postale
     * @var type String
     * 
     */
    public $adresse_personnelle;

    /**
     * Numéro de téléphone fixe 
     * @var type Integer
     * 
     */
    public $tel_fixe;

    /**
     * Numéro de téléphone Mobile 
     * @var type Integer
     * 
     */
    public $tel_gsm;

    /**
     * Numéro du Fax
     * @var type Integer
     * 
     */
    public $fax;

    /**
     *  Email du condidat
     * @var type String
     * 
     */
    public $email;

    /**
     *  Les motivations du condidat
     * @var type String
     * 
     */
    public $motivations;

    /**
     *  Dossier accepté ou non 
     * @var type Boolean 
     * 
     */
    public $etat_dossier;

    /**
     *  Condidat séléctioné ou non 
     * @var type Boolean 
     * 
     */
    public $etat_selection;

    /**
     * Admis (e) / non Admis (e) / Liste d'attente
     * @var type String 
     * 
     */
    public $decision_jury;

    /**
     *  Nom d'utilisateur 
     * @var type String 
     * 
     */
    public $login;

    /**
     *  Mot de passe 
     * @var type String 
     * 
     */
    public $password;

    /**
     *  Numéro attribué par l'administration
     * @var type String 
     * 
     */
    public $numero_inscription;

    /**
     * Méthode d'authentification
     */
    public $source_info;

    /**
     * Méthode d'authentification
     */
    public $confirmation;

    /**
     * Méthode d'authentification
     */
    public $cle_confirmation;

    /**
     * Méthode d'authentification
     */
    public function doLogin() {
        $count = 0;
        $id_condidat = 0;
        $condidats = $this->get();
        foreach ($condidats as $condidat) {
            if (($condidat->login === $this->login) && ($condidat->password == $this->password)) {
                $count++;
                $id_condidat = $condidat->id_condidat;
            }
        }
        if ($count == 1) {
            return $id_condidat;
        } else {
            return -1;
        }
    }

    // selectionner un condidat lors de la confirmation de l'émail:

    public function get_by_token($token) {
        if ($token != FALSE) {
            $query = $this->db->get_where($this::DB_TABLE, array('cle_confirmation' => $token));
            $class = get_class($this);
            $model = new $class;
            $model->populate($query->row());
            return $model;
        } else {
            return FALSE;
        }
    }

    // updating records in DB:
}
