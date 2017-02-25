<?php

namespace entity;

/**
 * Description of Company
 *
 * @author batista
 */
class Company extends \entity\CompanyAddr {
//
    private $company_id;
    private $addr;
    private $cnpj;
    private $ie;
    private $shortname;
    private $longname;
    private $bussiness_phone;
    private $mobil_phone;
    private $nextel_phone;
    private $nextelid;
    private $email;
    private $status;
    private $note;
    private $date_create;
    private $date_change;
  
    
    //
    
    function getAddr() {
        return $this->addr;
    }

    function setAddr($addr) {
        $this->addr = $addr;
    }
        
    function getCompany_id() {
        return $this->company_id;
    }

    function getCnpj() {
        return $this->cnpj;
    }

    function getIe() {
        return $this->ie;
    }

    function getShortname() {
        return $this->shortname;
    }

    function getLongname() {
        return $this->longname;
    }

    function getBussiness_phone() {
        return $this->bussiness_phone;
    }

    function getMobil_phone() {
        return $this->mobil_phone;
    }

    function getNextel_phone() {
        return $this->nextel_phone;
    }

    function getNextelid() {
        return $this->nextelid;
    }

    function getEmail() {
        return $this->email;
    }

    function getStatus() {
        return $this->status;
    }

    function getNote() {
        return $this->note;
    }

    function setCompany_id($company_id) {
        $this->company_id = $company_id;
    }

    function setCnpj($cnpj) {
        $this->cnpj = $cnpj;
    }

    function setIe($ie) {
        $this->ie = $ie;
    }

    function setShortname($shortname) {
        $this->shortname = $shortname;
    }

    function setLongname($longname) {
        $this->longname = $longname;
    }

    function setBussiness_phone($bussiness_phone) {
        $this->bussiness_phone = $bussiness_phone;
    }

    function setMobil_phone($mobil_phone) {
        $this->mobil_phone = $mobil_phone;
    }

    function setNextel_phone($nextel_phone) {
        $this->nextel_phone = $nextel_phone;
    }

    function setNextelid($nextelid) {
        $this->nextelid = $nextelid;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setStatus($status) {
        $this->status = $status;
    }

    function setNote($note) {
        $this->note = $note;
    }
        
    public function getDate_create() {
        $date_create = date_create($this->date_create);
        $date_create = date_format($date_create, "d-m-Y");
        return $this->date_create;
    }

    public function getDate_change() {
        $date_change = date_create($this->date_change);
        $date_change = date_format($date_change, "d-m-Y");
        return $this->date_change;
    }

}
