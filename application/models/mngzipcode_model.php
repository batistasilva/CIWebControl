<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//require_once 'PostalCode.php';
use entity\Postalcode as EPostal;

/**
 * Description of mngzipcode_model
 *
 * @author sistema
 */
class Mngzipcode_Model extends CI_Model {
    function __construct() {
        parent::__construct();
        $this->zipcode = new EPostal();
        //$this->smsg = new SMsg();
        //$this->msg = new Msg(NULL, NULL, NULL, NULL, NULL, NULL);
    }  
}
