<?php

/**
 * Description of my_PDF
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class My_pdf2 extends CI_Controller {

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

        $filename = 'attestation scolaire';
        $data['main_content'] = 'inscription_form_success';
       // $this->load->view('template', $data);
        /* $html = $this->input->post('html');
        $html = $this->style.'<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' .$html;
        $htm =  '<body>
            <div style="margin-top:20px;text-align: center;font-weight: bold">
                nom : '. $con->nom.' prenom  '. $con->prenom.'
            </div>
        </body>';
        $html =$this->header." ".$html.$htm;*/
        //$html = $this->load->view('myfile', '', true);
        //$html = $this->html2pdf->html($this->load->view('administrateur/test_pdf'));
        $data['annee']= $this->input->post('annee');
         $data['con'] = $con;
        $html = $this->load->view('administrateur/att_scol', $data , true);
        pdf_create($html, $filename, $stream = TRUE, $orientation = 'portrait');
    }

}
