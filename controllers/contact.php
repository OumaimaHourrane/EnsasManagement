<?php

/**
 * Description of inscription
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class Contact extends CI_Controller {

    public function index() {

        //loading the template

        $this->load->view('includes/header');
        $this->load->view('contact');
        $this->load->view('includes/footer');

        // loading models
    }

    public function message() {

        $this->load->model('Message');
        //Getting  data

        $message = new Message();
        $message->nom = $this->input->post('nom');
        $message->message = $this->input->post('message');
        $message->date = date('Y-m-d');
        $message->sujet = $this->input->post('sujet');
        $message->email = $this->input->post('email');
        //
        $this->sendemail($message->email, $message->nom, $message->sujet, $message->message);
        $message->save();

        // Generation d'une clé pour la confirmation
    }

    public function sendemail($from, $nom, $subject, $message) {
        $this->load->library('email');
        $this->email->from('abel.ainou@gmail.com', $nom);
        $this->email->to('abel.ainou@gmail.com');
        $this->email->subject('FC :' . $subject);
        $this->email->message(' De : ' . $from . ' Sujet :' . $subject . ' Nom: ' . $nom . ' Message :' . $message);
        $this->email->send();
    }

  

}
