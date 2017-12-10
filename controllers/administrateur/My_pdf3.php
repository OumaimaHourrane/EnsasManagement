<?php

/**
 * Description of my_PDF
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class My_pdf3 extends CI_Controller {

    function mypdf() {
        $this->load->helpers('dompdf');
    }

    public $style = "<style>
    .custom-tab{
        border: 1px solid #999;
        color:#222;
        text-align:left;
        font-family:'deja vu';
        width:100%;
    }
    tr:nth-child(2n){
        background : #F9F9F9;
    }
    td{
        padding-left:4px;
    }
    th{
    color:gray;
    background:#ccc;
    }
    </style>";
    public $header ="<h3> Ensa Safi</h3>";

    function generate($condidat_id) {
        $this->load->database();
        $this->load->helpers('dompdf');
        $this->load->model('Condidat');
        $con = $this->Condidat->load($condidat_id);
        $this->load->model('Formation');
        $this->load->model('Notes_model','newsManager');
        $this->load->model('formation_model', 'newsManager2');
        $data['liste'] = $this->newsManager2->liste_formations();
        $data['id_form'] = $this->newsManager->affiche($condidat_id);


        $filename = 'Relevé de note ';
        $data['main_content'] = 'inscription_form_success';

        $data['con'] = $con;
        for($i=0;$i<8;$i++){
        $data['note'.$i]= $this->input->post('note'.$i);}
        $data['annee']= $this->input->post('annee');
        // $mdp = $this->input->post('mdp');
        $html = $this->load->view('administrateur/releve', $data , true);
        pdf_create($html, $filename, $stream = TRUE, $orientation = 'portrait');
    }

}?>