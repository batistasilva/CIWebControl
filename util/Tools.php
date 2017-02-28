<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require_once 'StaffPersonUtil.php';
require_once 'models/Local.php';

class Tools extends Model {
    /*     * *
     * Function to clean special char to 
     * string to come from fields.
     */

    function clean_input($data) {
        //
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        //    
        return $data;
    }

    /* *
     * Function to clean special char and
     * change slasches to - in  
     * string to come from fields.
     */
    function clean_input_date($data) {
        //
        $data = trim($data);
        $data = str_replace('/', '-', $data);
        $data = htmlspecialchars($data);
        //
        return $data;
    }

    /* *
     * Function to clean special char and
     * change slasches to - in  
     * string to come from fields.
     */
    function clean_input_url($data) {
        //
        $data = trim($data);
        $data = htmlspecialchars($data);
        //
        return $data;
    }    
    
    
    /*     *
     * Function to clean entry to '.' and '-'
     * and '(' and ')' and '/' or '\' to field number.
     */

    function clean_int_input($data) {
        //
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        $data = str_ireplace('.', '', $data);
        $data = str_ireplace('-', '', $data);
        $data = str_ireplace('(', '', $data);
        $data = str_ireplace(')', '', $data);
        $data = str_ireplace('/', '', $data);
        $data = str_ireplace("\'", '', $data);
        //
        return $data;
    }

    function format_data($str, $type) {
        setlocale(LC_MONETARY, "pt_BR");

        //remove space in string
        $string = ereg_replace("[^0-9]", "", $str);

        switch ($type) {
            case 'phone':
                if (strlen($str) > 2) {
                    //echo '<br/>Formating PHONE...<br/>';
                    $string = '(' . substr($string, 0, 2) . ')' .
                            substr($string, 2, 4) . '-' .
                            substr($string, 6, 4);
                } else {
                    //return empty
                    $string = ''; //
                }

                break;
            case 'mobil':
                if (strlen($str) > 2) {
                    //echo '<br/>Formating MOBIL...<br/>';
                    $string = '(' . substr($string, 0, 2) . ')' .
                            substr($string, 2, 5) . '-' .
                            substr($string, 7, 4);
                } else {
                    //return empty
                    $string = ''; //
                }

                break;
            case 'zip':
                // echo '<br/>Formating ZIP...<br/>';
                $string = substr($string, 0, 5) . '-' .
                        substr($string, 5, 3);
                break;
            case 'cpf':
                //echo '<br/>Formating CPF...<br/>';
                $string = substr($string, 0, 3) . '.' .
                        substr($string, 3, 3) . '.' .
                        substr($string, 6, 3) . '-' .
                        substr($string, 9, 2);
                break;
            case 'cnh':
                //echo '<br/>Formating CNH...<br/>';
                if (strlen($string) > 2) {
                    $string = substr($string, 0, 3) . '.' .
                            substr($string, 3, 3) . '.' .
                            substr($string, 6, 3) . '.' .
                            substr($string, 9, 3);
                } else {
                    //return empty
                    $string = ''; //
                }

                break;
            case 'crsm':
                if (strlen($string) > 2) {
                    //echo '<br/>Formating CRSM...<br/>';
                    $string = substr($string, 0, 3) . '.' .
                            substr($string, 3, 3) . '.' .
                            substr($string, 6, 3) . '.' .
                            substr($string, 9, 3);
                } else {
                    //return empty
                    $string = ''; //
                }
                break;
            case 'cnpj':
                //echo '<br/>Formating CNPJ...<br/>';
                $string = substr($string, 0, 2) . '.' .
                        substr($string, 2, 3) . '.' .
                        substr($string, 5, 3) . '/' .
                        substr($string, 8, 4) . '-' .
                        substr($string, 12, 2);
                break;
            case 'rg':
                if (strlen($string) > 2) {
                    // echo '<br/>Formating RG...<br/>';
                    $string = substr($string, 0, 2) . '.' .
                            substr($string, 2, 3) . '.' .
                            substr($string, 5, 3) . '-' .
                            substr($string, 8, 1);
                } else {
                    //return empty
                    $string = ''; //  
                }

                break;
            case 'ie':
                if (strlen($string) > 2) {
                    //echo '<br/>Formating IE...<br/>';
                    $string = substr($string, 0, 3) . '.' .
                            substr($string, 3, 3) . '.' .
                            substr($string, 6, 3) . '.' .
                            substr($string, 9, 3);
                } else {
                    //return empty
                    $string = ''; //    
                }

                break;
            case 'money':
                $string = str_replace('.', ',', money_format("%i", $str));
                break;
            case 'money2':
                $string = str_replace('.', ',', money_format("R$ %i", $str));
                break;
        }
        //
        return $string;
    }

    /**
     * To set undescore where
     * it has space
     * @param type $data
     * @return type
     */
    function feel_str($data) {
        //
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        $data = str_ireplace(' ', '_', $data);
        //
        return $data;
    }

    /**
     * To set undescore where
     * it has space, remove accent
     * convert to lowercase.
     * @param type $data
     * @return type
     */
    function feel_str2($data) {

        $unwanted_array = array('Š' => 'S', 'š' => 's', 'Ž' => 'Z', 'ž' => 'z', 'À' => 'A', 'Á' => 'A', 'Â' => 'A', 'Ã' => 'A', 'Ä' => 'A', 'Å' => 'A', 'Æ' => 'A', 'Ç' => 'C', 'È' => 'E', 'É' => 'E',
            'Ê' => 'E', 'Ë' => 'E', 'Ì' => 'I', 'Í' => 'I', 'Î' => 'I', 'Ï' => 'I', 'Ñ' => 'N', 'Ò' => 'O', 'Ó' => 'O', 'Ô' => 'O', 'Õ' => 'O', 'Ö' => 'O', 'Ø' => 'O', 'Ù' => 'U',
            'Ú' => 'U', 'Û' => 'U', 'Ü' => 'U', 'Ý' => 'Y', 'Þ' => 'B', 'ß' => 'Ss', 'à' => 'a', 'á' => 'a', 'â' => 'a', 'ã' => 'a', 'ä' => 'a', 'å' => 'a', 'æ' => 'a', 'ç' => 'c',
            'è' => 'e', 'é' => 'e', 'ê' => 'e', 'ë' => 'e', 'ì' => 'i', 'í' => 'i', 'î' => 'i', 'ï' => 'i', 'ð' => 'o', 'ñ' => 'n', 'ò' => 'o', 'ó' => 'o', 'ô' => 'o', 'õ' => 'o',
            'ö' => 'o', 'ø' => 'o', 'ù' => 'u', 'ú' => 'u', 'û' => 'u', 'ý' => 'y', 'ý' => 'y', 'þ' => 'b', 'ÿ' => 'y');
        //
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        $data = str_ireplace(' ', '_', $data);
        $data = strtr($data, $unwanted_array);
        $data = strtolower($data);
        //
        return $data;
    }

    /**
     * Method to get StaffPID to use in staff and person to database.
     * @return type StaffPID
     */
    public function getStaffPID() {
        $staffp = new StaffPersonUtil();
        //
        $resstaff = $this->db->getNextID('SELECT getNextSeq("staff_seq") as id;');
        $staffp->setStaff_id($resstaff[0]['id']);
        //
        $resperson = $this->db->getNextID('SELECT getNextSeq("person_seq") as id;');
        $staffp->setPerson_id($resperson[0]['id']);

        //  print "<pre>";
        //  print_r($result[0]['id']);
        //  print "</pre>";
        //  exit();
        return $staffp;
    }

    
    /**
     * Method to get local_id to Acronym.
     * @param type $acronym
     * @return type
     */
    public function getLocalIDToAcronym($acronym) {
        $local = $this->db->selectObj('SELECT local_id FROM local '
                . 'WHERE acronym = :acronym', array(':acronym' => $acronym), "Local");
        return $local;
    }

    public function getLocalToID($vlocal_id) {
        $local = $this->db->selectObj('SELECT local_id, shortname, longname, acronym FROM local WHERE local_id = :local_id', array(':local_id' => $vlocal_id), "Local");
        //

        /*          print "<pre>";
          print_r($addrcust);
          print "</pre>";
          exit(); */
        //
        return $local;
    }

    /**
     * Method to get customer to customer_id.
     * @param type $customer_id
     * @return customer
     */
    public function getCustomerToID($customer_id) {
        $customer = $this->db->selectObj('SELECT aliasname FROM customer '
                . 'WHERE customer_id = :customer_id', array(':customer_id' => $customer_id), "Customer");
        return $customer;
    }

    /**
     * Method to get company to company_id.
     * @param type $company_id
     * @return company
     */
    public function getCompanyToID($company_id) {
        $company = $this->db->selectObj('SELECT shortname FROM company '
                . 'WHERE company_id = :company_id', array(':company_id' => $company_id), "Company");
        return $company;
    }

    /**
     * Get ACrony to Search Option
     * WOCJ = Without Customer and Jobtitle Selected
     * WOC  = With Customer, Company, Local, Status Selected
     * WOJ  = With JobTitle, Company, Local, Status Selected
     * WCJ  = With Customer, Jobtitle, Company, Local and Status Selected
     * @param type $customer
     * @param type $jobtitle
     * @return string
     */
    public function getOptionToQuery($customer, $jobtitle) {
        if ($customer == 'WOC' && $jobtitle == 'WOJ') {//Without Customer and Jobtitle Selected ID
            return 'WOCJ';
        } elseif ($customer !== 'WOC' && $jobtitle == 'WOJ') {//Customer Selected ID
            return 'WOC'; //With only Customer Selected ID
        } elseif ($customer == 'WOC' && $jobtitle !== 'WOJ') {//Jobtitle Selected ID
            return 'WOJ'; //With only Jobtitle Selected ID  
        } elseif ($customer !== 'WOC' && $jobtitle !== 'WOJ') {//With Customer and Jobtitle Selected ID
            return 'WCJ';
        }
    }

}
