<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'PersonEducation.php';
/**
 * Description of StaffAddr
 *
 * @author batista
 */
class PersonAddr extends PersonEducation {
    private $zipid;
    private $zipcode;
    private $address;
    private $addr_number;
    private $complement;
    private $district;
    private $city;
    private $state;
    private $reference;
    //
    function getZipid() {
        return $this->zipid;
    }

    function getZipcode() {
        return $this->zipcode;
    }

    function getAddress() {
        return $this->address;
    }

    function getAddr_number() {
        return $this->addr_number;
    }

    function getComplement() {
        return $this->complement;
    }
    
    function getDistrict() {
        return $this->district;
    }

    function getCity() {
        return $this->city;
    }

    function getState() {
        return $this->state;
    }

    function getReference() {
        return $this->reference;
    }

    function setZipid($zipid) {
        $this->zipid = $zipid;
    }

    function setZipcode($zipcode) {
        $this->zipcode = $zipcode;
    }

    function setAddress($address) {
        $this->address = $address;
    }

    function setAddr_number($addr_number) {
        $this->addr_number = $addr_number;
    }

    function setComplement($complement) {
        $this->complement = $complement;
    }
    
    function setDistrict($district) {
        $this->district = $district;
    }

    function setCity($city) {
        $this->city = $city;
    }

    function setState($state) {
        $this->state = $state;
    }

    function setReference($reference) {
        $this->reference = $reference;
    }

    /**
     * Method to se all data from object
     * 
     * @param type $personaddr
     */
    function setPersonAddr($personaddr) {
        $this->zipid       = $personaddr->getZipid();
        $this->zipcode     = $personaddr->getZipcode();
        $this->address     = $personaddr->getAddress();
        $this->addr_number = $personaddr->getAddr_number();
        $this->complement  = $personaddr->getComplement();
        $this->district    = $personaddr->getDistrict();
        $this->city        = $personaddr->getCity();
        $this->state       = $personaddr->getState();
        $this->reference   = $personaddr->getReference();
    }




}
