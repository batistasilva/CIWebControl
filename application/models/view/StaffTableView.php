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
class StaffTableView {

    private $staff_id;
    private $name;
    private $surname;
    private $longname;
    private $date_admis;
    private $shortname;
    private $home_phone;
    private $status;

    //
    function getStaff_id() {
        return $this->staff_id;
    }

    function getName() {
        return $this->name .' '. $this->surname;
    }
    
    function getSurname() {
        return $this->surname;
    }

    function getLongname() {
        return $this->longname;
    }

    function getDate_admis() {
        $date = date_create($this->date_admis);
        $date_admis = date_format($date, "d-m-Y");
        return $date_admis;
    }

    function getShortname() {
        return $this->shortname;
    }

    function getHome_phone() {
        $tools = new Tools();
        return $tools->format_data($this->home_phone,'phone');
    }

    function getStatus() {
        return $this->status;
    }

    function setStaff_id($staff_id) {
        $this->staff_id = $staff_id;
    }

    function setName($name) {
        $this->name = $name;
    }
    
    function setSurname($surname) {
        $this->surname = $surname;
    }

    function setLongname($longname) {
        $this->longname = $longname;
    }

    function setDate_admis($date_admis) {
        $date = date_create($staff->getDate_admis);
        $date_admis = date_format($date, "d-m-Y");
        $this->date_admis = $date_admis;
    }

    function setShortname($shortname) {
        $this->shortname = $shortname;
    }

    function setHome_phone($home_phone) {
        $this->home_phone = $home_phone;
    }

    function setStatus($status) {
        $this->status = $status;
    }

}
