<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class StaffPersonUtil{
    private $staff_id;
    private $person_id;
    //
    function getStaff_id() {
        return $this->staff_id;
    }

    function getPerson_id() {
        return $this->person_id;
    }

    function setStaff_id($staff_id) {
        $this->staff_id = $staff_id;
    }

    function setPerson_id($person_id) {
        $this->person_id = $person_id;
    }   
}