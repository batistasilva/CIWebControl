<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace entity;
/**
 * Description of SMsg
 * Method to set and unset Session 
 * Message to system.
 * Params: var, msg.
 * @author sistema
 */
class Sessionmsg {
    
    public $msg;
    
    public function getMsg() {
        return $this->msg;
    }

    public function setMsg($msg) {
        $this->msg = $msg;
    }

   
}
