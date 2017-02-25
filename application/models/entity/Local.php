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
class Local {
    //
    private $local_id;
    private $shortname;
    private $longname;
    private $acronym;
    
    //
    function getAcronym() {
        return $this->acronym;
    }    
    
    function getLocal_id() {
        return $this->local_id;
    }

    function getShortname() {
        return $this->shortname;
    }

    function getLongname() {
        return $this->longname;
    }

    function setAcronym($acronym) {
        $this->acronym = $acronym;
    }
        
    function setLocal_id($local_id) {
        $this->local_id = $local_id;
    }

    function setShortname($shortname) {
        $this->shortname = $shortname;
    }

    function setLongname($longname) {
        $this->longname = $longname;
    }

}
