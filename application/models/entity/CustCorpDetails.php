<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CustCorpDetails
 *
 * @author sistema
 */
class CustCorpDetails {
    //
    private $customer_id;
    private $occupation;
    private $cnpj;
    private $ie;
    private $corporate;
    private $aliasname;
    private $gender;
    private $contact_corp;
    private $business_phone;
    private $mobil_phone;
    private $nextel_phone;
    private $fax_phone;
    private $email;
    private $webpager;
    //
    function getCustomer_id() {
        return $this->customer_id;
    }

    function getOccupation() {
        return $this->occupation;
    }

    function getCnpj() {
        return $this->cnpj;
    }

    function getIe() {
        return $this->ie;
    }

    function getCorporate() {
        return $this->corporate;
    }

    function getAliasname() {
        return $this->aliasname;
    }

    function getGender() {
        return $this->gender;
    }

    function getContact_corp() {
        return $this->contact_corp;
    }

    function getBusiness_phone() {
        return $this->business_phone;
    }

    function getMobil_phone() {
        return $this->mobil_phone;
    }

    function getNextel_phone() {
        return $this->nextel_phone;
    }

    function getFax_phone() {
        return $this->fax_phone;
    }

    function getEmail() {
        return $this->email;
    }

    function getWebpager() {
        return $this->webpager;
    }

    function setCustomer_id($customer_id) {
        $this->customer_id = $customer_id;
    }

    function setOccupation($occupation) {
        $this->occupation = $occupation;
    }

    function setCnpj($cnpj) {
        $this->cnpj = $cnpj;
    }

    function setIe($ie) {
        $this->ie = $ie;
    }

    function setCorporate($corporate) {
        $this->corporate = $corporate;
    }

    function setAliasname($aliasname) {
        $this->aliasname = $aliasname;
    }

    function setGender($gender) {
        $this->gender = $gender;
    }

    function setContact_corp($contact_corp) {
        $this->contact_corp = $contact_corp;
    }

    function setBusiness_phone($business_phone) {
        $this->business_phone = $business_phone;
    }

    function setMobil_phone($mobil_phone) {
        $this->mobil_phone = $mobil_phone;
    }

    function setNextel_phone($nextel_phone) {
        $this->nextel_phone = $nextel_phone;
    }

    function setFax_phone($fax_phone) {
        $this->fax_phone = $fax_phone;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setWebpager($webpager) {
        $this->webpager = $webpager;
    }

}
