<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of PostalCode
 *
 * @author sistema
 */
class PostalCode {   
    private $postalcode;
    private $street;
    private $complement;
    private $district;
    private $city;
    private $state;
    private $country;
    private $date_create;
    private $date_change;
    
    //
    function getPostalcode() {
        return $this->postalcode;
    }

    function getStreet() {
        return $this->street;
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

    function getCountry() {
        return $this->country;
    }
    
    function getDate_create() {
        return $this->date_create;
    }

    function getDate_change() {
        return $this->date_change;
    }
    
    //
    
    function setPostalcode($postalcode) {
        $this->postalcode = $postalcode;
    }

    function setStreet($street) {
        $this->street = $street;
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

    function setCountry($country) {
        $this->country = $country;
    }
    
    function setDate_create($date_create) {
        $date = date_create($date_create);
        $this->date_create = date_format($date, "Y-m-d H:m:s");     
    }

    function setDate_change($date_change) {
        $date = date_create($date_change);  
        $this->date_change = date_format($date, "Y-m-d H:m:s");    
    }
   
}
