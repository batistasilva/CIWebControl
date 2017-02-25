<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'util/Tools.php';

/**
 * Description of StaffContact
 *
 * @author batista
 */
class PersonContact {
    //
    private $email;
    private $home_phone;
    private $mobil_phone;
    private $nextel_phone;
    private $nextel_id;
    private $contact_phone;
    private $contact_mobil;
    private $contact_name;
    private $contact_msg;
    //
    function getEmail() {
        return $this->email;
    }

    function getHome_phone() {
        return $this->home_phone;
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

    function getContact_msg() {
        return $this->contact_msg;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setHome_phone($home_phone) {
        $this->home_phone = $home_phone;
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

    function setContact_msg($contact_msg) {
        $this->contact_msg = $contact_msg;
    }

    //
    function setPersonContact($personcontact) {
        $tools = new Tools();
        //
        $this->email = $personcontact->getEmail();

        if (strlen($personcontact->getHome_phone()) > 2) {
            $this->home_phone = $tools->format_data($personcontact->getHome_phone(), 'phone');
        }

        if (strlen($personcontact->getMobil_phone()) > 2) {
            $this->mobil_phone = $tools->format_data($personcontact->getMobil_phone(), 'mobil');
        }

        if (strlen($personcontact->getNextel_phone()) > 2) {
            $this->nextel_phone = $tools->format_data($personcontact->getNextel_phone(), 'phone');
        }
        //
        $this->nextel_id = $personcontact->getNextel_id();
        //
        if (strlen($personcontact->getContact_phone()) > 2) {
            $this->contact_phone =  $tools->format_data($personcontact->getContact_phone(), 'phone');
        }
        //
        if (strlen($personcontact->getContact_mobil()) > 2) {
            $this->contact_mobil = $tools->format_data($personcontact->getContact_mobil(), 'mobil');
        }
        //
        $this->contact_name = $personcontact->getContact_name();
        $this->contact_msg  = $personcontact->getContact_msg();
        //
    }

}
