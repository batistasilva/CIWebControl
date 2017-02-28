<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @param Pages
 */
//require_once 'models/Msg.php';
//require_once 'util/Tools.php';
//require_once 'models/SMsg.php';
//require_once 'models/CompanyAddr.php';
//require_once 'models/Company.php';
//require_once 'models/mngzipcode_model.php';

use entity\Company as ECompany;
use entity\Tools as ETools;
use entity\CompanyAddr as ECpnyAddr;
use entity\SMsg        as ESMsg;
use entity\Msg         as EMsg;

class Ctrlcpny extends CI_Controller {

    public $smsg;
    private $msg;
    private $status_error;

    public function __construct() {
        parent::__construct();
        $this->cpny = new ECompany();
        $this->addr = new ECpnyAddr();
        $this->tools = new ETools();
        $this->status_error = new ArrayObject();
        
        //Auth::handleLogin();
        $this->smsg = new ESMsg();
        $this->msg  = new EMsg(NULL, NULL, NULL, NULL, NULL, NULL);
    }

    /**
     * Method responsible for open 
     * show data in index view..
     */
    public function index() {
        $data['cpny_list'] = $this->Company_model->get_list();
        //print_r($data);
        //exit();
        //Load Temaplate
        $this->load->view('header', $data);
        $this->load->view('mngcpny/index', $data);
        $this->load->view('footer', $data);
    }

    /**
     * Prepare data to form edit...
     */
    public function cpnyAdd() {
        //Get next id to add
        $result_id = $this->Company_model->get_next_id(); //getNextID();

        $data['cpny_next_id'] = $result_id;
        //echo '<br/>Last ID..:' . $result_id;
        //
        //Load Temaplate
        $this->load->view('header', $data);
        $this->load->view('mngcpny/addcpny', $data);
        $this->load->view('footer', $data);
        //    
    }

    /**
     * Save data from form to database.
     */
    public function cpnyAddSave() {
        
         $this->status_error = new ArrayObject();
        
        // Field Rules
        $this->form_validation->set_rules('nextid', 'RegID', 'trim|required');
        $this->form_validation->set_rules('nameraz', 'Coporation Name', 'trim|required');
        $this->form_validation->set_rules('namefan', 'Alias Name', 'trim|required');
        $this->form_validation->set_rules('numcnpj', 'CNPJ/CPF', 'integer|required');
        $this->form_validation->set_rules('numie', 'ID/I.E.', 'trim|required');
        $this->form_validation->set_rules('zipid', 'ZipID', 'integer|required');
        $this->form_validation->set_rules('zipcode', 'Zip Code', 'trim|required|min_length[8]');
        $this->form_validation->set_rules('address', 'Address', 'trim|required');
        $this->form_validation->set_rules('number', 'Number', 'integer|required');
        $this->form_validation->set_rules('city', 'City', 'trim|required');
        $this->form_validation->set_rules('district', 'District', 'trim|required');
        $this->form_validation->set_rules('state', 'State', 'trim|required');
        $this->form_validation->set_rules('status', 'Status', 'trim|required');
        $this->form_validation->set_rules('reference', 'Reference', 'trim|required');
        $this->form_validation->set_rules('business_phone', 'Business Phone', 'integer|required');
        $this->form_validation->set_rules('mobil_phone', 'Mobil Phone', 'integer|required');
        $this->form_validation->set_rules('nextel_phone', 'Nextel Phone', 'integer|required');
        $this->form_validation->set_rules('nextel_id', 'Nextel ID', 'trim|required');
        $this->form_validation->set_rules('email', 'E-mail', 'trim|required');
        $this->form_validation->set_rules('message', 'Message', 'trim|required');

        //
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('header');
            $this->load->view('mngcpny/addcpny');
            $this->load->view('footer');
        } else {

            // $datetoday = date_create(date('Y/m/d H:i'));
            // $date_today = date_format($datetoday, "Y-m-d H:i");

            $date = date_create(date('Y/m/d H:i'));
            $date_new_create = date_format($date, "Y-m-d H:m:s");

            // Company data
            $cpny_data = array(
                'company_id' => $this->input->post('nextid'),
                'cnpj' => $this->input->post('numcnpj'),
                'ie' => $this->input->post('numie'),
                'longname' => $this->input->post('nameraz'),
                'shortname' => $this->input->post('namefan'),
                'bussiness_phone' => $this->input->post('business_phone'),
                'mobil_phone' => $this->input->post('mobil_phone'),
                'nextel_phone' => $this->input->post('nextel_phone'),
                'nextelid' => $this->input->post('nextel_id'),
                'email' => $this->input->post('email'),
                'status' => $this->input->post('status'),
                'note' => $this->input->post('message'),
                'date_create' => $date_new_create,
            );

            // Address data
            $addr_data = array(
                'company_id' => $this->input->post('nextid'),
                'zipid' => $this->input->post('zipid'),
                'zipcode' => $this->input->post('zipcode'),
                'address' => $this->input->post('address'),
                'addr_number' => $this->input->post('number'),
                'district' => $this->input->post('district'),
                'city' => $this->input->post('city'),
                'state' => $this->input->post('state'),
                'reference' => $this->input->post('reference')
            );

            /**
             * Here!, Call the first method to add company.
             */
            $this->status_error = $this->Company_model->AddCpny($cpny_data);

            if ($this->status_error->status == TRUE) {
                //
                //Reinitializing ArrayObject
                $this->status_error = new ArrayObject();
                //
                $this->status_error->status = $this->Company_model->AddAddr($addr_data);
                //
                if ($this->status_error->status == FALSE) {
                    //
                    $this->Company_model->DeleteCpny($this->input->post('nextid'));
                    $this->Company_model->DeleteAddr($this->input->post('nextid'));
                    //
                }
            }
        }

        //
        if ($this->status_error->status !== TRUE) {
            //
            
            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg("AddCpny(): " . $this->status_error->error);
            $this->smsg->setInfo('error');
            //
            $this->smsg->setSMsg();
            //
            $this->load->view('header');
            $this->load->view('mngcpny/addcpny');
            $this->load->view('footer');
        } else {
            //
            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg("Empresa Cadastrada com Sucesso!");
            $this->smsg->setInfo('okay');
            //
            $this->smsg->setSMsg();
            //
            $this->load->view('header');
            $this->load->view('mngcpny/addcpny');
            $this->load->view('footer');
        }
    }

    /*     * *
     * Prepare data to form edit.
     */

    public function cpnyEdit($vcpny_id) {
        $tools = new ETools();
        $this->cpny = new ECompany();
        // 
        //$this->view->title = 'OSSB Solutions - Alteração de Empresa';
        //
        
        $this->cpny = $this->Company_model->getCustonCpny($vcpny_id);
        /*
          if (isset($this->cpny)) {
          echo $this->cpny->getCompany_id();   // access attributes
          echo $this->cpny->getLongname();   // access class methods
          }

          exit();
         */
        /**
         * Make this think only to format some fields.
         */
        //Used to format data
        $vcnpj = $this->cpny->getCnpj();
        //  echo '<br/>Cnpj..:' . $vcnpj;
        $vcnpj = $tools->format_data($vcnpj, "cnpj");
        //  echo '<br/>Cnpj..:' . $vcnpj;
        $this->cpny->setCnpj($vcnpj);
        //
        $vie = $this->cpny->getIe();
        $vie = $tools->format_data($vie, "ie");
        $this->cpny->setIe($vie);
        //
        $vphone = $this->cpny->getBussiness_phone();
        //  echo '<br/>Phone..:' . $vphone;
        $vphone = $tools->format_data($vphone, "phone");
        $this->cpny->setBussiness_phone($vphone);
        //  echo '<br/>Phone..:' . $vphone;
        //

        $vmobil = $this->cpny->getMobil_phone();
        //   echo '<br/>Mobil..:' . $vmobil;
        if (strlen($vmobil) > 2) {
            $vmobil = $tools->format_data($vmobil, "mobil");
            $this->cpny->setMobil_phone($vmobil);
            //   echo '<br/>Mobil..:' . $vmobil;
        }
        //
        $vnextel = $this->cpny->getNextel_phone();
        //   echo '<br/>Nextel..:' . $vnextel;
        if (strlen($vnextel) > 2) {
            $vnextel = $tools->format_data($vnextel, "phone");
            $this->cpny->setNextel_phone($vnextel);
            //   echo '<br/>Nextel..:' . $vnextel;
        }
        /*
          print "<pre>";
          print_r($obj);
          print "</pre>";
          exit();
         */
        //  exit();
        $data['cpny'] = $this->cpny;
        //
        //print "<pre>";
        //print_r($obj);
        //print "</pre>";
        //exit();
        $this->load->view('header');
        $this->load->view('mngcpny/editcpny', $data);
        $this->load->view('footer');
    }

    /**
     * Save data to form edit to database..
     * 
     * @param type $cpny_id
     */
    public function cpnyEditSave($cpny_id) {
        //
        $tools = new ETools();
        //
        $vnamefan = $tools->clean_input($_POST['namefan']);
        $vzipid = $tools->clean_input($_POST['zipid']);
        $vzipcode = $tools->clean_input($_POST['zipcode']);
        $vaddress = $tools->clean_input($_POST['address']);
        $vnumber = $tools->clean_input($_POST['number']);
        $vcity = $tools->clean_input($_POST['city']);
        $vdistrict = $tools->clean_input($_POST['district']);
        $vstate = $tools->clean_input($_POST['state']);
        $vreference = $tools->clean_input($_POST['reference']);
        $vbusiness_phone = $tools->clean_int_input($_POST['business_phone']);
        $vmobil_phone = $tools->clean_int_input($_POST['mobil_phone']);
        $vnextel_phone = $tools->clean_int_input($_POST['nextel_phone']);
        $vnextelid_phone = $tools->clean_input($_POST['nextel_id']);
        $vemail = $tools->clean_input($_POST['email']);
        $vnote = $tools->clean_input($_POST['message']);
        $vstatus = $tools->clean_input($_POST['status']);

        if (empty($vstatus) || empty($vstate) || empty($vnamefan) || empty($vzipcode) || empty($vaddress) || empty($vcity) || empty($vdistrict) || empty($vstate) ||
                empty($vbusiness_phone)) {
            //
            $createCompanyErro = "Erro: Todos os campos são de Preenchimento Obrigatório!!";

            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg($createCompanyErro);
            $this->smsg->setInfo('error');
            //
            $this->smsg->setSMsg();

            header('location: ' . URL . 'mngcpny/index');
            exit;
        }

        $cpny = new Company();
        $addrcpny = new CompanyAddr();

        $cpny->setCompany_id($cpny_id);
        $cpny->setStatus($vstatus);
        $cpny->setShortname($vnamefan);
        //
        $addrcpny->setCompany_id($cpny_id);
        $addrcpny->setZipid($vzipid);
        $addrcpny->setZipcode($vzipcode);
        $addrcpny->setAddress($vaddress);
        $addrcpny->setAddr_number($vnumber);
        $addrcpny->setDistrict($vdistrict);
        $addrcpny->setCity($vcity);
        $addrcpny->setState($vstate);
        $addrcpny->setReference($vreference);
        //
        $cpny->setBussiness_phone($vbusiness_phone);
        $cpny->setMobil_phone($vmobil_phone);
        $cpny->setNextel_phone($vnextel_phone);
        $cpny->setNextelid($vnextelid_phone);
        $cpny->setEmail($vemail);
        $cpny->setNote($vnote);
        //
        $cpny->setAddr($addrcpny);

        /**
         * Here!, Call the first method to add company.
         */
        $result = $this->model->updateCpny($cpny);
        //
        if (isset($result)) {
            //
            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg("updateCpny(): " . $result);
            $this->smsg->setInfo('error');
            //
            $this->smsg->setSMsg();
            //
            header('location: ' . URL . 'mngcpny/editcpny');
            exit();
        } else {
            //
            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg("Empresa Alterada com Sucesso!");
            $this->smsg->setInfo('okay');
            //
            $this->smsg->setSMsg();
            //
            header('location: ' . URL . 'mngcpny/index');
            exit();
        }
    }

    /**
     * Delete company selected from table, in case 
     * where it's not has customer.
     * @param type $cpny_id
     */
    public function cpnyDel($cpny_id) {
        //
        $msg = $this->model->deleteCpny($cpny_id);

        //
        if ($msg->getStatusError() == '1') {
            //
            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg("deleteCpny(): " . $msg->getMsg());
            $this->smsg->setInfo('error');
            //
            $this->smsg->setSMsg();
            //
            header('location: ' . URL . 'mngcpny/index');
            exit();
        } else {
            //
            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg("Empresa Excluida com Sucesso!");
            $this->smsg->setInfo('okay');
            //
            $this->smsg->setSMsg();
            //            
            header('location: ' . URL . 'mngcpny/index');
            exit();
        }
    }

    public function srchzip() {
        //
        $vzipcode = $this->tools->clean_input($_GET['zipcode']);
        //echo '---> '.$vzipcode;
        //$vzipcode = $this->clean_input($_POST['zipcode']);
        $obj = $this->Company_model->getZipCode($vzipcode);
        //
        echo json_encode($obj);
    }

}
