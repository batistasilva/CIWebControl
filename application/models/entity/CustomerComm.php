<?php
require_once 'CustomerInvo.php';
require_once 'util/Tools.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CustomerInvo
 * Commecial
 * @author sistema
 */
class CustomerComm extends CustomerInvo {//Invoice
    //
    private $commercial_contact_name;
    private $comm_business_phone;
    private $comm_mobil_phone;
    private $comm_nextel_phone;
    private $comm_nextel_id;
    private $comm_fax_phone;
    private $comm_email;
    private $comm_webpage;  
    private $comm_note;             
//
    /**
     * Set Customer Contact to
     * object Customer
     * @param type $custcomm
     */
    function setCustomerComm($custcomm){
        $tools = new Tools();
        //
        if(isset($custcomm)){
            $this->commercial_contact_name = $custcomm->getCommercial_contact_name();
            $this->comm_business_phone     = $tools->format_data($custcomm->getComm_business_phone(), 'phone');
            $this->comm_mobil_phone        = $tools->format_data($custcomm->getComm_mobil_phone(), 'mobil');
            $this->comm_nextel_phone       = $tools->format_data($custcomm->getComm_nextel_phone(), 'phone');
            $this->comm_nextel_id          = $custcomm->getComm_nextel_id();
            $this->comm_fax_phone          = $tools->format_data($custcomm->getComm_fax_phone(), 'phone');
            $this->comm_email              = $custcomm->getComm_email();
            $this->comm_webpage            = $custcomm->getComm_Webpage();
            $this->comm_note               = $custcomm->getComm_note();
        }    
    }
    
    //
    function getCommercial_contact_name() {
        return $this->commercial_contact_name;
    }

    function getComm_business_phone() {
        return $this->comm_business_phone;
    }

    function getComm_mobil_phone() {
        return $this->comm_mobil_phone;
    }

    function getComm_nextel_phone() {
        return $this->comm_nextel_phone;
    }

    function getComm_nextel_id() {
        return $this->comm_nextel_id;
    }

    function getComm_fax_phone() {
        return $this->comm_fax_phone;
    }

    function getComm_email() {
        return $this->comm_email;
    }

    function getComm_webpage() {
        return $this->comm_webpage;
    }

    function getComm_note() {
        return $this->comm_note;
    }

    function setCommercial_contact_name($commercial_contact_name) {
        $this->commercial_contact_name = $commercial_contact_name;
    }

    function setComm_business_phone($comm_business_phone) {
        $this->comm_business_phone = $comm_business_phone;
    }

    function setComm_mobil_phone($comm_mobil_phone) {
        $this->comm_mobil_phone = $comm_mobil_phone;
    }

    function setComm_nextel_phone($comm_nextel_phone) {
        $this->comm_nextel_phone = $comm_nextel_phone;
    }

    function setComm_nextel_id($comm_nextel_id) {
        $this->comm_nextel_id = $comm_nextel_id;
    }

    function setComm_fax_phone($comm_fax_phone) {
        $this->comm_fax_phone = $comm_fax_phone;
    }

    function setComm_email($comm_email) {
        $this->comm_email = $comm_email;
    }

    function setComm_webpage($comm_webpage) {
        $this->comm_webpage = $comm_webpage;
    }

    function setComm_note($comm_note) {
        $this->comm_note = $comm_note;
    }

  
}
