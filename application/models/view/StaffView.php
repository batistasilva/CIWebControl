<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'util/Tools.php';

/**
 * Description of StaffView
 *
 * @author sistema
 */
class StaffView {

    //
    private $staff_id;
    private $company_name;
    private $local_name;
    private $customer_name;
    private $name;
    private $surname;
    private $date_birth;
    private $photo;
    private $photo_wh;
    private $jobtitle;
    //
    private $acronym; //to type account bank
    private $bank_name; //to bank_id
    private $operation; //Operation for Caixa Bank
    private $agency; // to account agency 
    private $account;
    private $account_holder; //for name from account owner    
    //
    private $date_admis;
    private $salary;
    private $transp_ticket;
    private $transptkqt1;
    private $transptkvl1;
    private $transptkqt2;
    private $transptkvl2;
    private $transptkqt3;
    private $transptkvl3;
    private $workload;
    private $starttime;
    private $endtime;
    private $resignation_date;
    private $status;
    //
    private $zipcode;
    private $address;
    private $complement;
    private $addr_number;
    private $district;
    private $city;
    private $state;
    private $reference;
    //
    private $email;
    private $home_phone;
    private $mobil_phone;
    private $nextel_phone;
    private $nextel_id;
    private $contact_phone;
    private $contact_mobil;
    private $contact_name;

    //
    function getStaff_id() {
        return $this->staff_id;
    }

    function getName() {
        return $this->name . ' ' . $this->surname;
    }

    function getSurname() {
        return $this->surname;
    }

    function getPhoto() {
        //
        $image_path = URL . $this->photo;
        //
        return $image_path;
    }

    function getPhoto_wh() {
        return $this->photo_wh;
    }

    function getJobtitle() {
        return $this->jobtitle;
    }

    function getDate_admis() {
        return $this->date_admis;
    }

    function getHome_phone() {
        return $this->home_phone;
    }

    function getStatus() {
        return $this->status;
    }

//
    function getCompany_name() {
        return $this->company_name;
    }

    function getLocal_name() {
        return $this->local_name;
    }

    function getCustomer_name() {
        return $this->customer_name;
    }

    function getDate_birth() {
        return $this->date_birth;
    }

    function getAcronym() {
        return $this->acronym;
    }

    function getBank_name() {
        return $this->bank_name;
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

    function getSalary() {
        return $this->salary;
    }

    function getTransp_ticket() {
        return $this->transp_ticket;
    }

    function getTransptkqt1() {
        return $this->transptkqt1;
    }

    function getTransptkvl1() {
        return $this->transptkvl1;
    }

    function getTransptkqt2() {
        return $this->transptkqt2;
    }

    function getTransptkvl2() {
        return $this->transptkvl2;
    }

    function getTransptkqt3() {
        return $this->transptkqt3;
    }

    function getTransptkvl3() {
        return $this->transptkvl3;
    }

    function getWorkload() {
        return $this->workload;
    }

    function getStarttime() {
        return $this->starttime;
    }

    function getEndtime() {
        return $this->endtime;
    }

    function getResignation_date() {
        return $this->resignation_date;
    }

    function getZipcode() {
        return $this->zipcode;
    }

    function getAddress() {
        return $this->address;
    }

    function getComplement() {
        return $this->complement;
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

    function getEmail() {
        return $this->email;
    }

    function getMobil_phone() {
        return $this->mobil_phone;
    }

    function getNextel_phone() {
        return $this->nextel_phone;
    }

    function getNextel_id() {
        return $this->nextel_id;
    }

    function getContact_phone() {
        return $this->contact_phone;
    }

    function getContact_mobil() {
        return $this->contact_mobil;
    }

    function getContact_name() {
        return $this->contact_name;
    }

//
    function setStaff_id($staff_id) {
        $this->staff_id = $staff_id;
    }

    function setName($name) {
        $this->name = $name;
    }

    function setSurname($surname) {
        $this->surname = $surname;
    }

    function setPhoto($photo) {
        $this->photo = $photo;
    }

    function setPhoto_wh($photo_wh) {
        $this->photo_wh = $photo_wh;
    }

    function setJobtitle($jobtitle) {
        $this->jobtitle = $jobtitle;
    }

    function setDate_admis($date_admis) {
        $this->date_admis = $date_admis;
    }

    function setHome_phone($home_phone) {
        $this->home_phone = $home_phone;
    }

    function setStatus($status) {
        $this->status = $status;
    }

    function setCompany_name($company_name) {
        $this->company_name = $company_name;
    }

    function setLocal_name($local_name) {
        $this->local_name = $local_name;
    }

    function setCustomer_name($customer_name) {
        $this->customer_name = $customer_name;
    }

    function setDate_birth($date_birth) {
        $this->date_birth = $date_birth;
    }

    function setAcronym($acronym) {
        $this->acronym = $acronym;
    }

    function setBank_name($bank_name) {
        $this->bank_name = $bank_name;
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

    function setSalary($salary) {
        $this->salary = $salary;
    }

    function setTransp_ticket($transp_ticket) {
        $this->transp_ticket = $transp_ticket;
    }

    function setTransptkqt1($transptkqt1) {
        $this->transptkqt1 = $transptkqt1;
    }

    function setTransptkvl1($transptkvl1) {
        $this->transptkvl1 = $transptkvl1;
    }

    function setTransptkqt2($transptkqt2) {
        $this->transptkqt2 = $transptkqt2;
    }

    function setTransptkvl2($transptkvl2) {
        $this->transptkvl2 = $transptkvl2;
    }

    function setTransptkqt3($transptkqt3) {
        $this->transptkqt3 = $transptkqt3;
    }

    function setTransptkvl3($transptkvl3) {
        $this->transptkvl3 = $transptkvl3;
    }

    function setWorkload($workload) {
        $this->workload = $workload;
    }

    function setStarttime($starttime) {
        $this->starttime = $starttime;
    }

    function setEndtime($endtime) {
        $this->endtime = $endtime;
    }

    function setResignation_date($resignation_date) {
        $this->resignation_date = $resignation_date;
    }

    function setZipcode($zipcode) {
        $this->zipcode = $zipcode;
    }

    function setAddress($address) {
        $this->address = $address;
    }

    function setComplement($complement) {
        $this->complement = $complement;
    }

    function setAddr_number($addr_number) {
        $this->addr_number = $addr_number;
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

    function setEmail($email) {
        $this->email = $email;
    }

    function setMobil_phone($mobil_phone) {
        $this->mobil_phone = $mobil_phone;
    }

    function setNextel_phone($nextel_phone) {
        $this->nextel_phone = $nextel_phone;
    }

    function setNextel_id($nextel_id) {
        $this->nextel_id = $nextel_id;
    }

    function setContact_phone($contact_phone) {
        $this->contact_phone = $contact_phone;
    }

    function setContact_mobil($contact_mobil) {
        $this->contact_mobil = $contact_mobil;
    }

    function setContact_name($contact_name) {
        $this->contact_name = $contact_name;
    }

    function setDataToView() {
        $tools = new Tools();
        //
        if ($this->date_admis !== '0000-00-00') {
            $date = date_create($this->date_admis);
            $this->date_admis = date_format($date, "d-m-Y");
        }

        if ($this->resignation_date !== '0000-00-00') {
            $date = date_create($this->resignation_date);
            $this->resignation_date = date_format($date, "d-m-Y");
        }

        if ($this->date_birth !== '0000-00-00') {
            $date = date_create($this->date_birth);
            $this->date_birth = date_format($date, "d-m-Y");
        }

        $this->home_phone    = $tools->format_data($this->home_phone, 'phone');
        $this->mobil_phone   = $tools->format_data($this->mobil_phone, 'mobil');
        $this->nextel_phone  = $tools->format_data($this->nextel_phone, 'phone');
        $this->contact_phone = $tools->format_data($this->contact_phone, 'phone');
        $this->contact_mobil = $tools->format_data($this->contact_mobil, 'mobil');

        //
        $this->salary = $tools->format_data($this->salary, 'money2');
        //

        if ($this->transptkvl1 !== '0.00') {
            $this->transptkvl1 = $tools->format_data($this->transptkvl1, 'money');
        }

        if ($this->transptkvl2 !== '0.00') {
            $this->transptkvl2 = $tools->format_data($this->transptkvl2, 'money');
        }

        if ($this->transptkvl3 !== '0.00') {
            $this->transptkvl3 = $tools->format_data($this->transptkvl3, 'money');
        }

        if ($this->starttime !== '00:00') {
            $this->starttime = date('H:i', strtotime($this->starttime));
        }

        if ($this->endtime !== '00:00') {
            $this->endtime = date('H:i', strtotime($this->endtime));
        }

        if ($this->photo !== NULL) {
            $imagesize = getimagesize($this->photo);
            $this->photo_wh = $imagesize[3];
        }
    }

}
