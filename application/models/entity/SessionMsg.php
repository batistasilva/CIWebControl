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
 * Params: var, msg and app.
 * @author sistema
 */
class SMsg {

    private $app;
    private $msg;
    private $info; //warm, info, msg, error
    private $infomsg = array('info' => "alert alert-info alert-dismissable",
        'warn' => "alert alert-warning alert-dismissable",
        'okay' => "alert alert-success alert-dismissable",
        'error' => "alert alert-danger alert-dismissable");

    function getApp() {
        return $this->app;
    }

    function getMsg() {
        return $this->msg;
    }

    function getInfo() {
        return $this->info;
    }

    function setApp($app) {
        $this->app = $app;
    }

    function setMsg($msg) {
        $this->msg = $msg;
    }

    function setInfo($info) {
        $this->info = $info;
    }

    /*     * 
     * Here define name of var to write
     * session message, who is made by
     * app name and message name.
     */

    function setSMsg() {
        $smsg = new SMsg();
        //
        $smsg->setApp($this->app); //Set app name
        $smsg->setMsg($this->msg); //Set app message
        $this->info = $this->infomsg[$this->getInfo()]; //Set class message
        $smsg->setInfo($this->info);
        //print_r($nvar);
        // Set message
        //$this->session->set_flashdata('smsg', $smsg);
        $this->session->set_userdata('smsg', $smsg);
    }

    /*     * 
     * Metho for unset object
     * for session.
     * Name object should be
     * setted.
     */

    public function rmSMsg() {
        //unset($_SESSION['smsg']);
        $this->session->unset_userdata('smsg');
    }

}
