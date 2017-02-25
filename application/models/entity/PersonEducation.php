<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'PersonBank.php';

/**
 * Description of StaffEducation
 *
 * @author batista
 */
class PersonEducation extends PersonBank {

    private $education_id;
    private $year_completion;
    private $othereducation;

    //

    function getEducation_id() {
        return $this->education_id;
    }

    function getYear_completion() {
        return $this->year_completion;
    }

    function getOthereducation() {
        return $this->othereducation;
    }

    function setEducation_id($education_id) {
        $this->education_id = $education_id;
    }

    function setYear_completion($year_completion) {
        $this->year_completion = $year_completion;
    }

    function setOthereducation($othereducation) {
        $this->othereducation = $othereducation;
    }

    /**
     * Method to set data View, to PersonEducation
     * @param type $personeducation
     */
    function setPersonEducation($personeducation) {
        $this->education_id = $personeducation->getEducation_id();
        //
        $this->year_completion = $personeducation->getYear_completion();
        $this->othereducation = $personeducation->getOthereducation();
    }

}
