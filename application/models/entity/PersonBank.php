<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'PersonRef.php';
/**
 * Description of StaffBank
 *
 * @author batista
 */
class PersonBank extends PersonRef{

    private $typeaccount_id; //to type account bank
    private $bank_id; //to bank_id
    private $operation;//
    private $agency; // to account agency 
    private $account;
    private $account_holder; //for name from account owner

    //

    function getTypeaccount_id() {
        return $this->typeaccount_id;
    }

    function getBank_id() {
        return $this->bank_id;
    }
    
    function getOperation() {
        return $this->operation;
    }

    function getAgency() {
        return $this->agency;
    }

    function getAccount() {
        return $this->account;
    }

    function getAccount_holder() {
        return $this->account_holder;
    }

    function setTypeaccount_id($typeaccount_id) {
        $this->typeaccount_id = $typeaccount_id;
    }

    function setBank_id($bank_id) {
        $this->bank_id = $bank_id;
    }
   
    function setOperation($operation) {
        $this->operation = $operation;
    }

    function setAgency($agency) {
        $this->agency = $agency;
    }

    function setAccount($account) {
        $this->account = $account;
    }

    function setAccount_holder($account_holder) {
        $this->account_holder = $account_holder;
    }

    function setPersonBank($personbank) {
        $this->typeaccount_id = $personbank->getTypeaccount_id();
        $this->bank_id        = $personbank->getBank_id();
        $this->operation      = $personbank->getOperation();
        $this->agency         = $personbank->getAgency();
        $this->account        = $personbank->getAccount();
        $this->account_holder = $personbank->getAccount_holder();
    }


}
