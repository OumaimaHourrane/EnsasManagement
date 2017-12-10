<?php

if (!defined('BASEPATH'))
    exit('Acces direct à la page interdit.');

require_once('login.php');

class Dashboard extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    public function index($msg = NULL) {
        // Load our view to be displayed
        // to the user
        $data['msg'] = $msg;

        $this->load->view('dashboard_view', $data);
    }

    public function get_users() {
        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->get_list_users();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

    public function get_actualites() {
        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->get_list_actualites();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

    public function get_formations() {
        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->get_list_formations();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

    public function ajouter_formations() {
        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->ajouter_formation();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

    public function modifier_formations() {
        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->modifier_formation();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

    public function logout() {


        $this->session->sess_destroy();
        redirect('login/index', 'refresh');
    }

    public function user_info() {

        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->user_informations();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

    public function modifier_pwd() {

        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->password();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

    public function change_pwd() {
        $this->load->model('dashboard_model');
        $result = $this->dashboard_model->change_password();
        $this->index($result);
    }

    public function ajout_actualites() {
        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->ajout_actualite();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

    public function modifier_actualites() {
        if ($this->input->is_ajax_request()) {
            $this->load->model('dashboard_model');
            $result = $this->dashboard_model->modifier_actualite();
            $this->output->set_content_type('application/json')->set_output(json_encode($result));
        } else {
            show_error("No direct access allowed");
        }
    }

}
?>











