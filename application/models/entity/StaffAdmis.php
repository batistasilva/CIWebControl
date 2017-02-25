<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'Person.php';
require_once 'util/Tools.php';

/**
 * Description of StaffAdmis
 *
 * @author batista
 */
class StaffAdmis extends Person {

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

    /**
     * Function to set data to object elements.
     * @param type $staffadmis
     */
    function setStaffAdmis($staffadmis) {
        $tools = new Tools();
        //
        if ($staffadmis->getDate_admis() !== '0000-00-00') {
            $date = date_create($staffadmis->getDate_admis());
            $this->date_admis = date_format($date, "d-m-Y");
        }
        //
        $this->salary = $tools->format_data($staffadmis->getSalary(), 'money');
        //
        $this->transp_ticket = $staffadmis->getTransp_ticket();

        if ($staffadmis->getTransptkvl1() !== '0.00') {
            $this->transptkqt1 = $staffadmis->getTransptkqt1();
            $this->transptkvl1 = $tools->format_data($staffadmis->getTransptkvl1(), 'money');
        }

        if ($staffadmis->getTransptkvl2()!== '0.00') {
            $this->transptkqt2 = $staffadmis->getTransptkqt2();
            $this->transptkvl2 = $tools->format_data($staffadmis->getTransptkvl2(), 'money');
        }

        if ($staffadmis->getTransptkvl3() !== '0.00') {
            $this->transptkqt3 = $staffadmis->getTransptkqt3();
            $this->transptkvl3 = $tools->format_data($staffadmis->getTransptkvl3(), 'money');
        }
        
        $this->workload = $staffadmis->getWorkload();

        if ($staffadmis->getStarttime() !== '00:00') {
            $this->starttime = date('H:i', strtotime($staffadmis->getStarttime()));
        }

        if ($staffadmis->getEndtime() !== '00:00') {
            $this->endtime = date('H:i', strtotime($staffadmis->getEndtime()));
        }

        if ($staffadmis->getResignation_date() !== '0000-00-00') {
            $dateresig = date_create($staffadmis->getResignation_date());
            $this->resignation_date = date_format($dateresig, "d-m-Y");
        }
    }

    //

    function getDate_admis() {
        return $this->date_admis;
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

    function setDate_admis($date_admis) {
        $date = date_create($date_admis);
        $this->date_admis = date_format($date, "Y-m-d");
    }

    function setSalary($salary) {
        $this->salary = floatval(str_replace(',', '.', $salary));
    }

    function setTransp_ticket($transp_ticket) {
        $this->transp_ticket = $transp_ticket;
    }

    function setTransptkqt1($transptkqt1) {
        $this->transptkqt1 = $transptkqt1;
    }

    function setTransptkvl1($transptkvl1) {
        $this->transptkvl1 = floatval(str_replace(',', '.', $transptkvl1));
    }

    function setTransptkqt2($transptkqt2) {
        $this->transptkqt2 = $transptkqt2;
    }

    function setTransptkvl2($transptkvl2) {
        $this->transptkvl2 = floatval(str_replace(',', '.', $transptkvl2));
    }

    function setTransptkqt3($transptkqt3) {
        $this->transptkqt3 = $transptkqt3;
    }

    function setTransptkvl3($transptkvl3) {
        $this->transptkvl3 = floatval(str_replace(',', '.', $transptkvl3));
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
       $date = date_create($resignation_date);       
       $this->resignation_date = date_format($date, "Y-m-d");        
    }

}
