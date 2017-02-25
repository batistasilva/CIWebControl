<?php
require_once 'CustomerComm.php';
require_once 'util/Tools.php';

/**
 * Description of Customer
 *
 * @author batista
 */
class Customer extends CustomerComm {//Commercial
    //
    private $customer_id;
    private $company_id;       //Class Company
    private $custtype_id;   //Class CustType
    private $occupation_id;
    private $cnpj;
    private $ie;
    private $corpname;
    private $aliasname;
    private $gender;
    private $condtcust;  //Condiction of Customer = financial situation good or bad
    private $nature_indcorp;
    private $status;
    private $date_create;
    private $date_change;
    private $date_inactive;
    private $note;
    //
    /**
     * Set Customer data object and format
     * to Customer.
     * @param type $customer
     */
    function setCustomer($customer){
        $util = new Tools();
        
        if(isset($customer)){
            $this->customer_id = $customer->getCustomer_id();
            $this->company_id  = $customer->getCompany_id();
            $this->custtype_id = $customer->getCusttype_id();
            $this->occupation_id = $customer->getOccupation_id();
            $this->cnpj        = $util->format_data($customer->getCnpj(), 'cnpj');    
            $this->ie          = $customer->getIe();
            $this->corpname    = $customer->getCorpname();
            $this->aliasname   = $customer->getAliasname();
            $this->gender      = $customer->getGender();
            $this->condtcust   = $customer->getCondtcust();
            $this->nature_indcorp = $customer->getNature_indcorp();
            $this->status      = $customer->getStatus();
            $this->note        = $customer->getNote();
        }
        //
    }
       
    //
    function getCustomer_id() {
        return $this->customer_id;
    }

    function getCompany_id() {
        return $this->company_id;
    }

    function getCusttype_id() {
        return $this->custtype_id;
    }

    function getOccupation_id() {
        return $this->occupation_id;
    }

    function getCnpj() {
        return $this->cnpj;
    }

    function getIe() {
        return $this->ie;
    }

    function getCorpname() {
        return $this->corpname;
    }

    function getAliasname() {
        return $this->aliasname;
    }

    function getGender() {
        return $this->gender;
    }

    function getCondtcust() {
        return $this->condtcust;
    }

    function getNature_indcorp() {
        return $this->nature_indcorp;
    }

    function getStatus() {
        return $this->status;
    }

    function getDate_create() {
        return $this->date_create;
    }

    function getDate_change() {
        return $this->date_change;
    }

    function getDate_inactive() {
        return $this->date_inactive;
    }

    function getNote() {
        return $this->note;
    }
    
    function setCustomer_id($customer_id) {
        $this->customer_id = $customer_id;
    }

    function setCompany_id($company_id) {
        $this->company_id = $company_id;
    }

    function setCusttype_id($custtype_id) {
        $this->custtype_id = $custtype_id;
    }

    function setOccupation_id($occupation_id) {
        $this->occupation_id = $occupation_id;
    }

    function setCnpj($cnpj) {
        $this->cnpj = $cnpj;
    }

    function setIe($ie) {
        $this->ie = $ie;
    }

    function setCorpname($corpname) {
        $this->corpname = $corpname;
    }

    function setAliasname($aliasname) {
        $this->aliasname = $aliasname;
    }

    function setGender($gender) {
        $this->gender = $gender;
    }

    function setCondtcust($condtcust) {
        $this->condtcust = $condtcust;
    }

    function setNature_indcorp($nature_indcorp) {
        $this->nature_indcorp = $nature_indcorp;
    }

    function setStatus($status) {
        $this->status = $status;
    }

    function setDate_create($date_create) {
        $date = date_create($date_create);
        $this->date_create = date_format($date, "Y-m-d H:m:s");     
    }

    function setDate_change($date_change) {
        $date = date_create($date_change);  
        $this->date_change = date_format($date, "Y-m-d H:m:s");    
    }

    function setDate_inactive($date_inactive) {
        $date = date_create($date_inactive);        
        $this->date_inactive = date_format($date, "Y-m-d"); 
    }
    
    function setNote($note) {
        $this->note = $note;
    }
 
    
}
