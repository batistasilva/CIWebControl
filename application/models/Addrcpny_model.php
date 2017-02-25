<?php
//require_once 'Msg.php';
//require_once 'SMsg.php';
//require_once 'Customer.php';
//require_once 'Company.php';
//require_once 'CompanyAddr.php';
//require_once 'CustType.php';
//require_once 'Occupation.php';
//require_once 'Staff.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use entity\CompanyAddr as ECpnyAddr;

/**
 * Description of Users
 *
 * @author batista
 */
class Addrcpny_Model extends CI_Model {

    function __construct() {
       parent::__construct();
       $this->table = 'companyaddr';
        //
       $this->cpny = new ECpnyAddr();
       //$this->smsg = new SMsg();
       //$this->msg = new Msg(NULL, NULL, NULL, NULL, NULL, NULL);
    }


    public function get_list() {
        $query = $this->db->get($this->table);

        return $query->result();
    }

    public function get($id_name, $id) {
        $this->db->where($id_name, $id);
        $query = $this->db->get($this->table);

        return $query->row();
    }

    public function add($data) {
        $this->db->insert($this->table, $data);
    }

    public function update($id, $data) {
        $this->db->where('id', $id);
        $this->db->update($this->table, $data);
    }

    public function delete($id) {
        $this->db->where('id', $id);
        $this->db->delete($this->table);
    }
    
    
    /**
     * Method used to get object Company for 
     * a id informed.
     * @param type $vcpny_id
     * @return type
     */
    function getCpny($vcpny_id) {
        $addrcpny = $this->db->selectObj('SELECT company_id, zipcode, zipid, address, addr_number, district, city, state, reference '
                . 'FROM companyaddr '
                . 'WHERE company_id = :company_id', array(':company_id' => $vcpny_id), "CompanyAddr");

        //print "<pre>";
        //print_r($obj);
        //print "</pre>";
        //exit();
        //
        $cpny->setAddr($addrcpny);
        //
        return $cpny;
    }

    /**
     * Method to get NextID to use in company database.
     * @return type
     */
    public function getNextIDToAdd() {
        $result = $this->db->getNextID('SELECT getNextSeq("company_seq") as id;');
        $result = $result[0]['id'];
        //  print "<pre>";
        //  print_r($result[0]['id']);
        //  print "</pre>";
        //  exit();
        return $result;
    }

    /*
     * Method to add a new Company and
     * your address. 
     */

    public function createNewCpny($cpny) {
        $date = date_create($cpny->getDate_create());
        $date_new_create = date_format($date, "Y-m-d H:m:s");
        //
        $result = $this->db->insert('company', array(
            'company_id' => $cpny->getCompany_id(),
            'longname' => $cpny->getLongname(),
            'shortname' => $cpny->getShortname(),
            'cnpj' => $cpny->getCnpj(),
            'ie' => $cpny->getIe(),
            'bussiness_phone' => $cpny->getBussiness_phone(),
            'mobil_phone' => $cpny->getMobil_phone(),
            'nextel_phone' => $cpny->getNextel_phone(),
            'nextelid' => $cpny->getNextelid(),
            'email' => $cpny->getEmail(),
            'status' => "1",
            'note' => $cpny->getNote(),
            'date_create' => $date_new_create
        ));

        $addrcpny = $cpny->getAddr();
        //print "<pre>";
        //print_r($obj);
        //print "</pre>";
        //exit();
        /**
         * If result is free error, enter to
         * update address.
         */
        if (!isset($result)) {
            /*             * *
             * Add address to company
             */
            $result = $this->db->insert('companyaddr', array(
                'company_id' => $addrcpny->getCompany_id(),
                'zipid' => $addrcpny->getZipid(),
                'zipcode' => $addrcpny->getZipcode(),
                'address' => $addrcpny->getAddress(),
                'addr_number' => $addrcpny->getAddr_number(),
                'district' => $addrcpny->getDistrict(),
                'city' => $addrcpny->getCity(),
                'state' => $addrcpny->getState(),
                'reference' => $addrcpny->getReference()
            ));

            if (!isset($result)) {
                //
                //not was valided a response for zip code addedyet..                
                if (intval($addrcpny->getZipid()) == 0) {
                    //                   print "<pre>";
                    //                   print_r($cpny);
                    //                   print "</pre>";
                    //                   exit();
                    $this->addZipCode($cpny);
                }
            }
        }
        //
        return $result;
    }

    /*
     * Metho to update company and your 
     * address.
     */

    public function updateCpny($cpny) {
        //
        $datetoday = date_create(date('Y/m/d H:i'));
        $date_today = date_format($datetoday, "Y-m-d H:i");
        //
        $addr = $cpny->getAddr();

        /**
         * do update to company
         */
        $result = $this->db->update('company', array(
            'shortname' => $cpny->getShortname(),
            'bussiness_phone' => $cpny->getBussiness_phone(),
            'mobil_phone' => $cpny->getMobil_phone(),
            'nextel_phone' => $cpny->getNextel_phone(),
            'nextelid' => $cpny->getNextelid(),
            'email' => $cpny->getEmail(),
            'status' => $cpny->getStatus(),
            'note' => $cpny->getNote(),
            'date_change' => $date_today), "company_id = {$cpny->getCompany_id()}");
        //print "<pre>";
        //print_r($obj);
        //print "</pre>";
        //exit();

        /**
         * If result is free error, enter to update 
         * address.
         */
        if (!isset($result)) {
            /**
             * do update to companyaddr
             */
            $result = $this->db->update('companyaddr', array(
                'zipid' => $addr->getZipid(),
                'zipcode' => $addr->getZipcode(),
                'address' => $addr->getAddress(),
                'addr_number' => $addr->getAddr_number(),
                'district' => $addr->getDistrict(),
                'city' => $addr->getCity(),
                'state' => $addr->getState(),
                'reference' => $addr->getReference()), "company_id = {$addr->getCompany_id()}");
//
            if (!isset($result)) {
                //not valid response for add zip code yet..
                if (intval($addr->getZipid()) == 0) {
                    //                   print "<pre>";
                    //                   print_r($cpny);
                    //                   print "</pre>";
                    //                   exit();
                    $this->addZipCode($cpny);
                }
            }
        }
        //            
        //print "<pre>";
        //print_r($obj);
        //print "</pre>";
        //exit(); 
        return $result;
    }

    /**
     * I stop here for test anyway to put data in web frame for confirm 
     * if delete or not the customer and user, them whem I will have got the
     * best way to do this, I will continue the remove action.
     * @param type $cpny_id
     * @return \Msg
     */
    public function deleteCpny($cpny_id) {
        // $msg = new Msg("", "", false);
        //$cpny_id = 20;
        //
        $status = $this->db->selectObj('SELECT status FROM customer WHERE company_id = :company_id', array(':company_id' => $cpny_id), "Customer");

        if (!$status) {
            //Remove Company
            $resultcomp = $this->db->delete('company', "company_id = '$cpny_id'");
            //Remove Address Company
            $resultaddr = $this->db->delete('companyaddr', "company_id = '$cpny_id'");
            //    
            if (($resultcomp === 1) && ($resultaddr === 1)) {
                $this->msg->setType('Okay');
                $this->msg->setStatusError(FALSE);
                $this->msg->setMsg("Empresa Excluida com Sucesso!");
            } else {
                $this->msg->setType('Error');
                $this->msg->setStatusError(TRUE);
                $this->msg->setMsg("Empresa não pode ser removida!, Cliente não Encontrado!");
            }
            //
            return $this->msg;
        } else {
            $this->msg->setType('Error');
            $this->msg->setStatusError(TRUE);
            $this->msg->setMsg("Empresa não pode ser removida!, há Clientes Ativos!");
            //
            return $this->msg;
        }
    }

}
