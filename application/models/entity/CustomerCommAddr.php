<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'CustomerInvoAddr.php';
/**
 * Description of AddrCustomer
 *
 * @author batista
 */
class CustomerCommAddr extends CustomerInvoAddr{
    //
    private $customer_id;
    private $comm_addr_id;
    private $comm_addr_zip;
    private $comm_address;
    private $comm_addr_number;
    private $comm_addr_comp;
    private $comm_addr_dist;
    private $comm_addr_city;
    private $comm_addr_state;
    private $comm_addr_ref;
    //
    
    /**
     * Method to set Commercial Addr to
     * Customer Object.
     * @param type $ccommaddr
     */
    function setCustomerCommAddr($ccommaddr){
        if(isset($ccommaddr)){
            //
            $this->customer_id      = $ccommaddr->getCustomer_id();
            $this->comm_addr_id     = $ccommaddr->getComm_addr_id();
            $this->comm_addr_zip    = $ccommaddr->getComm_addr_zip();
            $this->comm_address     = $ccommaddr->getComm_address();
            $this->comm_addr_number = $ccommaddr->getComm_addr_number();
            $this->comm_addr_comp   = $ccommaddr->getComm_addr_comp();
            $this->comm_addr_dist   = $ccommaddr->getComm_addr_dist();
            $this->comm_addr_city   = $ccommaddr->getComm_addr_city();
            $this->comm_addr_state  = $ccommaddr->getComm_addr_state();
            $this->comm_addr_ref    = $ccommaddr->getComm_addr_ref();
            //
        }
    }
    
    //
    function getCustomer_id() {
        return $this->customer_id;
    }

    function getComm_addr_id() {
        return $this->comm_addr_id;
    }

    function getComm_addr_zip() {
        return $this->comm_addr_zip;
    }

    function getComm_address() {
        return $this->comm_address;
    }

    function getComm_addr_number() {
        return $this->comm_addr_number;
    }

    function getComm_addr_comp() {
        return $this->comm_addr_comp;
    }

    function getComm_addr_dist() {
        return $this->comm_addr_dist;
    }

    function getComm_addr_city() {
        return $this->comm_addr_city;
    }

    function getComm_addr_state() {
        return $this->comm_addr_state;
    }

    function getComm_addr_ref() {
        return $this->comm_addr_ref;
    }

    function setCustomer_id($customer_id) {
        $this->customer_id = $customer_id;
    }

    function setComm_addr_id($comm_addr_id) {
        $this->comm_addr_id = $comm_addr_id;
    }

    function setComm_addr_zip($comm_addr_zip) {
        $this->comm_addr_zip = $comm_addr_zip;
    }

    function setComm_address($comm_address) {
        $this->comm_address = $comm_address;
    }

    function setComm_addr_number($comm_addr_number) {
        $this->comm_addr_number = $comm_addr_number;
    }

    function setComm_addr_comp($comm_addr_comp) {
        $this->comm_addr_comp = $comm_addr_comp;
    }

    function setComm_addr_dist($comm_addr_dist) {
        $this->comm_addr_dist = $comm_addr_dist;
    }

    function setComm_addr_city($comm_addr_city) {
        $this->comm_addr_city = $comm_addr_city;
    }

    function setComm_addr_state($comm_addr_state) {
        $this->comm_addr_state = $comm_addr_state;
    }

    function setComm_addr_ref($comm_addr_ref) {
        $this->comm_addr_ref = $comm_addr_ref;
    }


}
