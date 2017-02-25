<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'PersonDoc.php';

/**
 * Description of StaffPersonal
 *
 * @author batista
 */
class Person extends PersonDoc {

    //
    private $person_id;
    private $name;
    private $surname;
    private $birthdate;
    private $gender;
    private $naturality;
    private $naturality_state;
    private $nationality;
    private $country_city_state;
    private $bloodperson;
    private $colorperson;
    private $marital_state;
    private $specialnbearer;
    private $imagepath;
    private $fathername;
    private $mothername;
    private $wifesname;
    private $date_create;

    function setPerson($person) {
        $this->person_id = $person->getPerson_id();
        $this->name = $person->getName();
        $this->surname = $person->getSurname();
        //
        if ($person->getBirthdate() !== '0000-00-00') {
            $vbirthdate = date_create($person->getBirthdate());
            $birthdate = date_format($vbirthdate, "d-m-Y");
            $this->birthdate = $birthdate;
        }
        //
        $this->gender = $person->getGender();
        $this->naturality = $person->getNaturality();
        $this->naturality_state = $person->getNaturality_state();
        $this->nationality = $person->getNationality();
        $this->country_city_state = $person->getCountry_city_state();
        $this->bloodperson = $person->getBloodperson();
        $this->colorperson = $person->getColorperson();
        $this->marital_state = $person->getMarital_state();
        $this->specialnbearer = $person->getSpecialnbearer();
        $this->imagepath = $person->getImagepath();
        $this->fathername = $person->getFathername();
        $this->mothername = $person->getMothername();
        $this->wifesname = $person->getWifesname();
    }

    //
    function getPerson_id() {
        return $this->person_id;
    }

    function getName() {
        return $this->name;
    }

    function getSurname() {
        return $this->surname;
    }

    function getBirthdate() {
        return $this->birthdate;
    }

    function getGender() {
        return $this->gender;
    }

    function getNaturality() {
        return $this->naturality;
    }

    function getNaturality_state() {
        return $this->naturality_state;
    }

    function getNationality() {
        return $this->nationality;
    }

    function getCountry_city_state() {
        return $this->country_city_state;
    }

    function getBloodperson() {
        return $this->bloodperson;
    }

    function getColorperson() {
        return $this->colorperson;
    }

    function getMarital_state() {
        return $this->marital_state;
    }

    function getSpecialnbearer() {
        return $this->specialnbearer;
    }

    function getImagepath() {
        return $this->imagepath;
    }

    function getFathername() {
        return $this->fathername;
    }

    function getMothername() {
        return $this->mothername;
    }

    function getWifesname() {
        return $this->wifesname;
    }

    function getDate_create() {
        return $this->date_create;
    }
    
    function setPerson_id($person_id) {
        $this->person_id = $person_id;
    }

    function setName($name) {
        $this->name = $name;
    }

    function setSurname($surname) {
        $this->surname = $surname;
    }

    function setBirthdate($birthdate) {
        $vbirthdate = date_create($birthdate);
        $this->birthdate = date_format($vbirthdate, "Y-m-d");
    }

    function setGender($gender) {
        $this->gender = $gender;
    }

    function setNaturality($naturality) {
        $this->naturality = $naturality;
    }

    function setNaturality_state($naturality_state) {
        $this->naturality_state = $naturality_state;
    }

    function setNationality($nationality) {
        $this->nationality = $nationality;
    }

    function setCountry_city_state($country_city_state) {
        $this->country_city_state = $country_city_state;
    }

    function setBloodperson($bloodperson) {
        $this->bloodperson = $bloodperson;
    }

    function setColorperson($colorperson) {
        $this->colorperson = $colorperson;
    }

    function setMarital_state($marital_state) {
        $this->marital_state = $marital_state;
    }

    function setSpecialnbearer($specialnbearer) {
        $this->specialnbearer = $specialnbearer;
    }

    function setImagepath($imagepath) {
        $this->imagepath = $imagepath;
    }

    function setFathername($fathername) {
        $this->fathername = $fathername;
    }

    function setMothername($mothername) {
        $this->mothername = $mothername;
    }

    function setWifesname($wifesname) {
        $this->wifesname = $wifesname;
    }
    
    function setDate_create($date_create) {
        $vdatecreate = date_create($date_create);       
        $this->date_create = date_format($vdatecreate, "Y-m-d H:m:s"); 
    }

}
