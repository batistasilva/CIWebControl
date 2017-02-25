<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'CustomerCommAddr.php';
require_once 'util/Tools.php';

/**
 * Description of Customer_Contact1
 * Customer Invoice
 * @author sistema
 */
class CustomerInvo  extends CustomerCommAddr {//Invoice
//
    private $invoice_contact_name;
    private $inv_business_phone;
    private $inv_mobil_phone;
    private $inv_nextel_phone;    
    private $inv_nextel_id;
    private $inv_fax_phone;
    private $inv_email;
    private $inv_note;    
//
    /**
     * Set Customer Contact to
     * object Customer
     * @param type $custinvo
     */
    function setCustomerInvo($custinvo){
        $tools = new Tools();
        //
        if(isset($custinvo)){
            $this->invoice_contact_name = $custinvo->getInvoice_contact_name();
            $this->inv_business_phone     = $tools->format_data($custinvo->getInv_business_phone(), 'phone');
            $this->inv_mobil_phone        = $tools->format_data($custinvo->getInv_mobil_phone(), 'mobil');
            $this->inv_nextel_phone       = $tools->format_data($custinvo->getInv_nextel_phone(), 'phone');
            $this->inv_nextel_id          = $custinvo->getInv_nextel_id();
            $this->inv_fax_phone          = $tools->format_data($custinvo->getInv_fax_phone(), 'phone');
            $this->inv_email              = $custinvo->getInv_email();
            $this->inv_note               = $custinvo->getInv_note();
        }    
    }    
    
    function getInvoice_contact_name() {
        return $this->invoice_contact_name;
    }

    function getInv_business_phone() {
        return $this->inv_business_phone;
    }

    function getInv_mobil_phone() {
        return $this->inv_mobil_phone;
    }

    function getInv_nextel_phone() {
        return $this->inv_nextel_phone;
    }

    function getInv_nextel_id() {
        return $this->inv_nextel_id;
    }

    function getInv_fax_phone() {
        return $this->inv_fax_phone;
    }

    function getInv_email() {
        return $this->inv_email;
    }

    function getInv_note() {
        return $this->inv_note;
    }

    function setInvoice_contact_name($invoice_contact_name) {
        $this->invoice_contact_name = $invoice_contact_name;
    }

    function setInv_business_phone($inv_business_phone) {
        $this->inv_business_phone = $inv_business_phone;
    }

    function setInv_mobil_phone($inv_mobil_phone) {
        $this->inv_mobil_phone = $inv_mobil_phone;
    }

    function setInv_nextel_phone($inv_nextel_phone) {
        $this->inv_nextel_phone = $inv_nextel_phone;
    }

    function setInv_nextel_id($inv_nextel_id) {
        $this->inv_nextel_id = $inv_nextel_id;
    }

    function setInv_fax_phone($inv_fax_phone) {
        $this->inv_fax_phone = $inv_fax_phone;
    }

    function setInv_email($inv_email) {
        $this->inv_email = $inv_email;
    }

    function setInv_note($inv_note) {
        $this->inv_note = $inv_note;
    }

  
}
