<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'PersonContact.php';
require_once 'util/Tools.php';

/**
 * Description of StaffRef
 *
 * @author batista
 */
class PersonRef extends PersonContact {

    private $refname;
    private $refaddress;
    private $refphone;
    private $refemail;

    //

    function getRefname() {
        return $this->refname;
    }

    function getRefaddress() {
        return $this->refaddress;
    }

    function getRefphone() {
        return $this->refphone;
    }

    function getRefemail() {
        return $this->refemail;
    }

    function setRefname($refname) {
        $this->refname = $refname;
    }

    function setRefaddress($refaddress) {
        $this->refaddress = $refaddress;
    }

    function setRefphone($refphone) {
        $this->refphone = $refphone;
    }

    function setRefemail($refemail) {
        $this->refemail = $refemail;
    }

    /**
     * Method to set data to PersonRef
     * @param type $personref
     */
    function setPersonRef($personref) {
        $tools = new Tools();
        //
        $this->refname = $personref->getRefname();
        $this->refaddress = $personref->getRefaddress();
        //
        if (strlen($personref->getRefphone()) > 2) {
            $this->refphone = $tools->format_data($personref->getRefphone(),'phone');
        }
        //
        $this->refemail = $personref->getRefemail();
    }

}
