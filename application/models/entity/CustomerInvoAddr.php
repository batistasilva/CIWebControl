<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AddrCustomer
 *
 * @author batista
 */
class CustomerInvoAddr {
    //
    private $customer_id;
    private $inv_addr_id;
    private $inv_addr_zip;
    private $inv_address;
    private $inv_addr_number;
    private $inv_addr_comp;
    private $inv_addr_dist;
    private $inv_addr_city;
    private $inv_addr_state;
    private $inv_addr_ref;
    //
    /**
     * Method to set Invoice Addr to
     * Customer Object.
     * @param type $cinvoaddr
     */
    function setCustomerInvoAddr($cinvoaddr){
        if(isset($cinvoaddr)){
            //
            $this->customer_id     = $cinvoaddr->getCustomer_id();
            $this->inv_addr_id     = $cinvoaddr->getInv_addr_id();
            $this->inv_addr_zip    = $cinvoaddr->getInv_addr_zip();
            $this->inv_address     = $cinvoaddr->getInv_address();
            $this->inv_addr_number = $cinvoaddr->getInv_addr_number();
            $this->inv_addr_comp   = $cinvoaddr->getInv_addr_comp();
            $this->inv_addr_dist   = $cinvoaddr->getInv_addr_dist();
            $this->inv_addr_city   = $cinvoaddr->getInv_addr_city();
            $this->inv_addr_state  = $cinvoaddr->getInv_addr_state();
            $this->inv_addr_ref    = $cinvoaddr->getInv_addr_ref();
            //
        }
    }    
    //
    function getCustomer_id() {
        return $this->customer_id;
    }

    function getInv_addr_id() {
        return $this->inv_addr_id;
    }

    function getInv_addr_zip() {
        return $this->inv_addr_zip;
    }

    function getInv_address() {
        return $this->inv_address;
    }

    function getInv_addr_number() {
        return $this->inv_addr_number;
    }

    function getInv_addr_comp() {
        return $this->inv_addr_comp;
    }

    function getInv_addr_dist() {
        return $this->inv_addr_dist;
    }

    function getInv_addr_city() {
        return $this->inv_addr_city;
    }

    function getInv_addr_state() {
        return $this->inv_addr_state;
    }

    function getInv_addr_ref() {
        return $this->inv_addr_ref;
    }

    function setCustomer_id($customer_id) {
        $this->customer_id = $customer_id;
    }

    function setInv_addr_id($inv_addr_id) {
        $this->inv_addr_id = $inv_addr_id;
    }

    function setInv_addr_zip($inv_addr_zip) {
        $this->inv_addr_zip = $inv_addr_zip;
    }

    function setInv_address($inv_address) {
        $this->inv_address = $inv_address;
    }

    function setInv_addr_number($inv_addr_number) {
        $this->inv_addr_number = $inv_addr_number;
    }

    function setInv_addr_comp($inv_addr_comp) {
        $this->inv_addr_comp = $inv_addr_comp;
    }

    function setInv_addr_dist($inv_addr_dist) {
        $this->inv_addr_dist = $inv_addr_dist;
    }

    function setInv_addr_city($inv_addr_city) {
        $this->inv_addr_city = $inv_addr_city;
    }

    function setInv_addr_state($inv_addr_state) {
        $this->inv_addr_state = $inv_addr_state;
    }

    function setInv_addr_ref($inv_addr_ref) {
        $this->inv_addr_ref = $inv_addr_ref;
    }  
}
