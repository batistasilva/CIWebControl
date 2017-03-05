<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace entity;
/**
 * Description of Msg
 *
 * @author batista
 */
class Msg {

    public $msg;
    public $msgSuccess;
    public $msgWarn;
    public $msgError;
    public $type;
    public $status;  
   //

    public function setMsgSuccess($msgSuccess) {
        $this->msgSuccess = $msgSuccess;
        return $this;
    }

    public function setMsgWarn($msgWarn) {
        $this->msgWarn = $msgWarn;
        return $this;
    }

    public function setMsgError($msgError) {
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
     * Get Status from system error
     * how a boolean to True or False
     * @return type
     */
    public function getStatus() {
        return $this->status;
    }

    public function setMsg($msg) {
        $this->msg = $msg;
        return $this;
    }

    public function setType($type) {
        $this->type = $type;
        return $this;
    }

    public function setStatus($status) {
        $this->status = $status;
        return $this;
    }

    
    public function getMsgSuccess() {
        $this->msgSuccess = "<div class='alert alert-block fade in  text-center' style='font: bold; background-color: #C1F0BA; color:#FFFFFF;'>"
                    . "<button type='button' class='close' data-dismiss='alert'>×</button>"
                    . "<h4 class='alert-heading' style='font-weight: 500; color:#008000;'>$this->msgSuccess</h4></div>";
        return $this->msgSuccess;
    }

    public function getMsgWarn() {
        $this->msgWarn = "<div class='alert alert-block alert-warning fade in  text-center'>"
                    . "<button type='button' class='close' data-dismiss='alert'>×</button>"
                    . "<h4 class='alert-heading' style='font-weight: 500; color:#FFFFFF;'>$this->msgWarn</h4></div>";        
        return $this->msgWarn;
    }

    public function getMsgError() {
         $this->msgError = "<div class='alert alert-block alert-danger fade in  text-center'>"
                    . "<button type='button' class='close' data-dismiss='alert'>×</button>"
                    . "<h4 class='alert-heading' style='font-weight: 500; color:#FF0000;'>$this->msgError</h4></div>";       
        return $this->msgError;
    }    
    
}
