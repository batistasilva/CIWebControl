<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Msg
 *
 * @author batista
 */
class Msg {

    private $msg;
    private $msgSuccess;
    private $msgWarn;
    private $msgError;
    private $type;
    private $statusError;  
   //
   function __construct($msg, $msgSuccess, $msgWarn, $msgError, $type, $statusError) {
       $this->msg = $msg;
       $this->msgSuccess = $msgSuccess;
       $this->msgWarn = $msgWarn;
       $this->msgError = $msgError;
       $this->type = $type;
       $this->statusError = $statusError;
   }

    function getMsgSuccess() {
        $this->msgSuccess = "<div class='alert alert-block alert-success fade in'>"
                    . "<button type='button' class='close' data-dismiss='alert'>×</button>"
                    . "<h4 class='alert-heading'>.$this->msg.</h4></div>";
        return $this->msgSuccess;
    }

    function getMsgWarn() {
        $this->msgWarn = "<div class='alert alert-block alert-warning fade in'>"
                    . "<button type='button' class='close' data-dismiss='alert'>×</button>"
                    . "<h4 class='alert-heading'>.$this->msg.</h4></div>";        
        return $this->msgWarn;
    }

    function getMsgError() {
         $this->msgError = "<div class='alert alert-block alert-danger fade in'>"
                    . "<button type='button' class='close' data-dismiss='alert'>×</button>"
                    . "<h4 class='alert-heading'>.$this->msg.</h4></div>";       
        return $this->msgError;
    }

    function setMsgSuccess($msgSuccess) {
        $this->msgSuccess = $msgSuccess;
        return $this;
    }

    function setMsgWarn($msgWarn) {
        $this->msgWarn = $msgWarn;
        return $this;
    }

    function setMsgError($msgError) {
        $this->msgError = $msgError;
        return $this;
    }
    
    /**
     * Ger Error Message from system
     * @return type
     */
    public function getMsg() {
        return $this->msg;
    }

    /**
     * Get Type Message from System
     * @return type
     */
    public function getType() {
        return $this->type;
    }

    /**
     * Get Statu of erro from system
     * a boolean True or False
     * @return type
     */
    public function getStatusError() {
        return $this->statusError;
    }

    public function setMsg($msg) {
        $this->msg = $msg;
        return $this;
    }

    public function setType($type) {
        $this->type = $type;
        return $this;
    }

    public function setStatusError($statusError) {
        $this->statusError = $statusError;
        return $this;
    }

}
