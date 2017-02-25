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

class Ctrlcpny extends CI_Controller {

    public $smsg;
    public $title;
    private $msg;

    public function __construct() {
        parent::__construct();
        $this->cpny = new ECompany();
        //Auth::handleLogin();
        // $this->smsg = new SMsg();
        //$this->msg = new Msg(NULL, NULL, NULL, NULL, NULL, NULL);
    }

    /**
     * Method responsible for open 
     * show data in index view..
     */
    public function index() {
        //echo 'Bem vindo ao (Index admcompany) de Empresas!!!';
        //exit();
        //$this->view->title = 'OSSB Solutions - Cadastro de Empresa';
        $data['cpny_list'] = $this->Company_model->get_list();
        // print_r($data);
        // exit();
        //$this->view->smsg = $this->smsg;
        //Load Temaplate
        $this->load->view('header', $data);
        $this->load->view('mngcpny/index', $data);
        $this->load->view('footer', $data);
        // echo '<br/>Inside Main()';
    }

    /**
     * Prepare data to form edit...
     */
    public function cpnyAdd() {
        // echo 'Bem vindo ao (Index admcompany) de Empresas!!!';    
        $this->view->title = 'OSSB Solutions - Cadastro de Empresa';
        //Get next id to add
        $this->view->CpnyID = $this->model->getNextIDToAdd();
        $last_id = $this->model->getNextIDToAdd();
        //echo '<br/>Last ID..:' . $last_id;
        //    
        $this->view->render('header');
        $this->view->render('mngcpny/addcpny');
        $this->view->render('footer');
    }

    /**
     * Save data from form to database.
     */
    public function cpnyAddSave() {
        //Only is found _SESSION if init with session_start()
        $tools = new Tools();
        //    
        $vid = $tools->clean_int_input($_POST['nextid']);
        $vrazao = $tools->clean_input($_POST['nameraz']);
        $vnamefan = $tools->clean_input($_POST['namefan']);
        $vnumcpnj = $tools->clean_int_input($_POST['numcnpj']);
        $vnumie = $tools->clean_int_input($_POST['numie']);
        $vzipid = $tools->clean_input($_POST['zipid']);
        $vzipcode = $tools->clean_input($_POST['zipcode']);
        $vaddress = $tools->clean_input($_POST['address']);
        $vnumber = $tools->clean_input($_POST['number']);
        $vcity = $tools->clean_input($_POST['city']);
        $vdistrict = $tools->clean_input($_POST['district']);
        $vstate = $tools->clean_input($_POST['state']);
        $vstatus = $tools->clean_input($_POST['status']);
        $vreference = $tools->clean_input($_POST['reference']);
        $vbusiness_phone = $tools->clean_int_input($_POST['business_phone']);
        $vmobil_phone = $tools->clean_int_input($_POST['mobil_phone']);
        $vnextel_phone = $tools->clean_int_input($_POST['nextel_phone']);
        $vnextelid_phone = $tools->clean_input($_POST['nextel_id']);
        $vemail = $tools->clean_input($_POST['email']);
        $vnote = $tools->clean_input($_POST['message']);
        //
        //
        if (empty($vid) || empty($vrazao) || empty($vnamefan) || empty($vnumcpnj) ||
                empty($vstatus) || empty($vnumie) || empty($vzipcode) ||
                empty($vaddress) || empty($vcity) || empty($vdistrict) ||
                empty($vstate) || empty($vbusiness_phone)) {
            //

            $this->smsg->setApp('mngpny');
            $this->smsg->setMsg('Erro: Há Campos que Precisam ser Preenchimento!!');
            $this->smsg->setInfo('warn');
            //
            $this->smsg->setSMsg();

            header('location: ' . URL . 'mngcpny');
            exit;
        }

        //
        $cpny = new Company();
        $addrcpny = new CompanyAddr();
        //
        $cpny->setCompany_id($vid);
        $cpny->setLongname($vrazao);
        $cpny->setShortname($vnamefan);
        $cpny->setCnpj($vnumcpnj);
        $cpny->setIe($vnumie);
        $cpny->setStatus($vstatus);
        //

        $addrcpny->setCompany_id($vid);
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
        $result = $this->model->createNewCpny($cpny);
        //
        if (isset($result)) {
            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg("createNewCpny(): " . $result);
            $this->smsg->setInfo('error');

            //
            $this->smsg->setSMsg();
            //
            header('location: ' . URL . 'mngcpny/addcpny');
            exit();
        } else {
            //
            $this->smsg->setApp('mngcpny');
            $this->smsg->setMsg("Empresa Cadastrada com Sucesso!");
            $this->smsg->setInfo('okay');
            //
            $this->smsg->setSMsg();
            //
            header('location: ' . URL . 'mngcpny/index');
            exit();
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
        $zipcode = new MngZipCode_Model();
        //
        $tools = new Tools();
        //
        $vzipcode = $tools->clean_input($_GET['zipcode']);
        //$vzipcode = $this->clean_input($_POST['zipcode']);
        $obj = $zipcode->getZipCode($vzipcode);
        //
        echo json_encode($obj);
    }

}
