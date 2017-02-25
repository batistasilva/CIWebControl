<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CustType
 *
 * @author batista
 */
class CustType {

    private $custtype_id;
    private $shortname;
    private $longname;
    private $date_create;
    private $date_change;
    //
    function getDate_create() {
        return $this->date_create;
    }

    function getDate_change() {
        return $this->date_change;
    }
    
    function getCusttype_id() {
        return $this->custtype_id;
    }

    function getShortname() {
        return $this->shortname;
    }

    function getLongname() {
        return $this->longname;
    }

    function setCusttype_id($custtype_id) {
        $this->custtype_id = $custtype_id;
    }

    function setShortname($shortname) {
        $this->shortname = $shortname;
    }

    function setLongname($longname) {
        $this->longname = $longname;
    }
    
    function setDate_create($date_create) {
        $this->date_create = $date_create;
    }

    function setDate_change($date_change) {
        $this->date_change = $date_change;
    }

  
}
