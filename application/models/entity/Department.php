<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Occupation
 *
 * @author batista
 */
class Department {
    private $department_id;
    private $shortname;
    private $longname;
    private $date_create;
    private $date_change;
    //
    function getDepartment_id() {
        return $this->department_id;
    }

    function getShortname() {
        return $this->shortname;
    }

    function getLongname() {
        return $this->longname;
    }

    function getDate_create() {
        return $this->date_create;
    }

    function getDate_change() {
        return $this->date_change;
    }

    function setDepartment_id($department_id) {
        $this->department_id = $department_id;
        return $this;
    }

    function setShortname($shortname) {
        $this->shortname = $shortname;
        return $this;
    }

    function setLongname($longname) {
        $this->longname = $longname;
        return $this;
    }

    function setDate_create($date_create) {
        $this->date_create = $date_create;
        return $this;
    }

    function setDate_change($date_change) {
        $this->date_change = $date_change;
        return $this;
    }


}
