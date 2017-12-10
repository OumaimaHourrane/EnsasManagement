<?php

/**
 * Description of my_PDF
 *
 * @author Abdelghani AINOUSS <abel.ainou@gmail.com
 */
class My_pdf extends CI_Controller {

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

    function generate($formation_id) {
        if ($formation_id == "all") {
            $filename = "Liste des inscrits en toutes les filières";
        }
        $this->load->helpers('dompdf');
        $this->load->model('Formation');
        $formation = $this->Formation->load($formation_id);
        $filename = $formation->titre;
        $data['main_content'] = 'inscription_form_success';
        $this->load->view('template', $data);
        $html = $this->input->post('html');
        $html = $this->style.'<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' .$html;
        $html =$this->header." ".$html;
        
        pdf_create($html, $filename, $stream = TRUE, $orientation = 'portrait');
    }

}
