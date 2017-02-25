<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace entity;
/**
 * Description of CompanyAddr
 *
 * @author batista
 */
class CompanyAddr {
    //
    private $company_id;
    private $zipid;
    private $zipcode;
    private $address;
    private $addr_number;
    private $district;
    private $city;
    private $state;
    private $reference;
    //
    
    function getCompany_id() {
        return $this->company_id;
    }

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

    function setCompany_id($company_id) {
        $this->company_id = $company_id;
        return $this;
    }

    function setZipid($zipid) {
        $this->zipid = $zipid;
        return $this;
    }

    function setZipcode($zipcode) {
        $this->zipcode = $zipcode;
        return $this;
    }

    function setAddress($address) {
        $this->address = $address;
        return $this;
    }

    function setAddr_number($addr_number) {
        $this->addr_number = $addr_number;
        return $this;
    }

    function setDistrict($district) {
        $this->district = $district;
        return $this;
    }

    function setCity($city) {
        $this->city = $city;
        return $this;
    }

    function setState($state) {
        $this->state = $state;
        return $this;
    }

    function setReference($reference) {
        $this->reference = $reference;
        return $this;
    }
   
}
