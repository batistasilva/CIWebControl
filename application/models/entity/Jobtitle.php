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
class Jobtitle {
    private $jobtitle_id;
    private $shortname;
    private $longname;
    private $date_create;
    private $date_change;
    //
    function getJobtitle_id() {
        return $this->jobtitle_id;
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

    function setJobtitle_id($jobtitle_id) {
        $this->jobtitle_id = $jobtitle_id;
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
