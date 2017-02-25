<?php
require_once 'StaffAdmis.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 * Description of Staff
 *
 * @author batista
 */
class Staff extends StaffAdmis {
    //
    private $staff_id;
    private $person_id;
    private $local_id;
    private $customer_id;
    private $company_id;
    private $jobtitle_id;
    private $department_id;
    private $firstjob;
    private $status;
    private $staff_msg;
    private $date_create;
    private $date_change;
//
    function getStaff_id() {
        return $this->staff_id;
    }

    function getPerson_id() {
        return $this->person_id;
    }

    function getLocal_id() {
        return $this->local_id;
    }

    function getCustomer_id() {
        return $this->customer_id;
    }

    function getCompany_id() {
        return $this->company_id;
    }

    function getJobtitle_id() {
        return $this->jobtitle_id;
    }

    function getDepartment_id() {
        return $this->department_id;
    }
    
    function getFirstjob() {
        return $this->firstjob;
    }

    function getStatus() {
        return $this->status;
    }
    function getStaff_msg() {
        return $this->staff_msg;
    }

    function getDate_create() {       
        return $this->date_create;
    }

    function getDate_change() {
      
        return $this->date_change;
    }

    function setStaff_id($staff_id) {
        $this->staff_id = $staff_id;
    }

    function setPerson_id($person_id) {
        $this->person_id = $person_id;
    }

    function setLocal_id($local_id) {
        $this->local_id = $local_id;
    }

    function setCustomer_id($customer_id) {
        $this->customer_id = $customer_id;
    }

    function setCompany_id($company_id) {
        $this->company_id = $company_id;
    }

    function setJobtitle_id($jobtitle_id) {
        $this->jobtitle_id = $jobtitle_id;
    }

    function setDepartment_id($department_id) {
        $this->department_id = $department_id;
    }
    
    function setFirstjob($firstjob) {
        $this->firstjob = $firstjob;
    }

    function setStatus($status) {
        $this->status = $status;
    }
    
    function setStaff_msg($staff_msg) {
        $this->staff_msg = $staff_msg;
    }

    function setDate_create($date_create) {
        $vdate_create = date_create($date_create);   
        $this->date_create = date_format($vdate_create, "Y-m-d H:m:s");   
    }

    function setDate_change($date_change) {
        $vdate_change = date_create($date_change);    
        $this->date_change = date_format($vdate_change, "Y-m-d H:m:s"); 
    }


}
