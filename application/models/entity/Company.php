<?php

namespace entity;

/**
 * Description of Company
 *
 * @author batista
 */
class Company extends \entity\CompanyAddr {

//
    public $company_id;
    public $addr;
    public $cnpj;
    public $ie;
    public $shortname;
    public $longname;
    public $bussiness_phone;
    public $mobil_phone;
    public $nextel_phone;
    public $nextelid;
    public $email;
    public $status;
    public $note;
    public $date_create;
    public $date_change;

    //

    public function getAddr() {
        return $this->addr;
    }

    public function setAddr($addr) {
        $this->addr = $addr;
    }

    public function getCompany_id() {
        return $this->company_id;
    }

    public function getCnpj() {
        return $this->cnpj;
    }

    public function getIe() {
        return $this->ie;
    }

    public function getShortname() {
        return $this->shortname;
    }

    public function getLongname() {
        return $this->longname;
    }

    public function getBussiness_phone() {
        return $this->bussiness_phone;
    }

    public function getMobil_phone() {
        return $this->mobil_phone;
    }

    public function getNextel_phone() {
        return $this->nextel_phone;
    }

    public function getNextelid() {
        return $this->nextelid;
    }

    public function getEmail() {
        return $this->email;
    }

    public function getStatus() {
        return $this->status;
    }

    public function getNote() {
        return $this->note;
    }

    public function setCompany_id($company_id) {
        $this->company_id = $company_id;
    }

    public function setCnpj($cnpj) {
        $this->cnpj = $cnpj;
    }

    public function setIe($ie) {
        $this->ie = $ie;
    }

    public function setShortname($shortname) {
        $this->shortname = $shortname;
    }

    public function setLongname($longname) {
        $this->longname = $longname;
    }

    public function setBussiness_phone($bussiness_phone) {
        $this->bussiness_phone = $bussiness_phone;
    }

    public function setMobil_phone($mobil_phone) {
        $this->mobil_phone = $mobil_phone;
    }

    public function setNextel_phone($nextel_phone) {
        $this->nextel_phone = $nextel_phone;
    }

    public function setNextelid($nextelid) {
        $this->nextelid = $nextelid;
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function setStatus($status) {
        $this->status = $status;
    }

    public function setNote($note) {
        $this->note = $note;
    }

    public function getDate_create() {
        return $this->date_create;
    }

    public function getDate_change() {
        return $this->date_change;
    }

    public function setDate_create($date_create) {
        $date = date_create($date_create);
        $this->date_create = date_format($date, "Y-m-d H:m:s");
    }

    public function setDate_change($date_change) {
        $date = date_create($date_change);
        $this->date_change = date_format($date, "Y-m-d H:m:s");
    }

}
