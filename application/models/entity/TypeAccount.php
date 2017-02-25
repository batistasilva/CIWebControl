<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Typeaccount
 *
 * @author batista
 */
class Typeaccount {
    private $typeaccount_id;
    private $description;
    private $acronym;

    //
    function getTypeaccount_id() {
        return $this->typeaccount_id;
    }

    function getDescription() {
        return $this->description;
    }

    function getAcronym() {
        return $this->acronym;
    }

    function setTypeaccount_id($typeaccount_id) {
        $this->typeaccount_id = $typeaccount_id;
        return $this;
    }

    function setDescription($description) {
        $this->description = $description;
        return $this;
    }

    function setAcronym($acronym) {
        $this->acronym = $acronym;
        return $this;
    }

  
}
