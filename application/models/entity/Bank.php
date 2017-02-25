<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Bank Branch
 *
 * @author batista
 */
class Bank {
    private $bankbranch_id;
    private $description;
    private $number;
    //
    function getBankbranch_id() {
        return $this->bankbranch_id;
    }

    function getDescription() {
        return $this->description;
    }

    function getNumber() {
        return $this->number;
    }

    function setBankbranch_id($bankbranch_id) {
        $this->bankbranch_id = $bankbranch_id;
        return $this;
    }

    function setDescription($description) {
        $this->description = $description;
        return $this;
    }

    function setNumber($number) {
        $this->number = $number;
        return $this;
    }  

}
