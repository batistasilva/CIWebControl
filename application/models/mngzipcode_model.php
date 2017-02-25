<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'PostalCode.php';
/**
 * Description of mngzipcode_model
 *
 * @author sistema
 */
class MngZipCode_Model extends Model {
    function __construct() {
        parent::__construct();
        $this->zipcode = new PostalCode();
        $this->smsg = new SMsg();
        $this->msg = new Msg(NULL, NULL, NULL, NULL, NULL, NULL);
    }
    
    /*
     * Methodo to search zipcode to local database
     * from the state_sp.
     */
    public function getZipCode($vzipcode) {
        $addrcust = $this->db->SingleObj('SELECT id, street, complement, district, city, state FROM state_sp '
                . 'WHERE postalcode = :postalcode', array(':postalcode' => $vzipcode));
        //
        return $addrcust;
    }

    /*
     * Method to add a new cep to state_sp 
     * when a new zipcode was found in correio.
     */
    public function addZipCode($postal) {
       // $postalc = new PostalCode();
       // $postalc = $postal;
        
       // $date = date_create($postal->getDate_create());
       // $date_new_create = date_format($date, "Y-m-d H:m:s");
        //print "<pre>";
        //print_r($obj);
        //print "</pre>";
        //exit();
        /*         * *
         * Add new address to state_sp
         */
        $result = $this->db->insert('state_sp', array(
            'postalcode' => $postal->getPostalcode(),
            'street' => $postal->getStreet(),
            'complement' => $postal->getComplement(),            
            'district' => $postal->getDistrict(),
            'city' => $postal->getCity(),
            'state' => $postal->getState(),
            'country' => $postal->getCountry(),
            'date_create' => $postal->getDate_create()
        ));
        //
        return $result;
    }    
}
