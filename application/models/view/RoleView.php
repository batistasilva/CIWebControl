<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of RoleView
 *
 * @author sistema
 */
class RoleView {
    //
    private $role_id;
    private $url_id;
    private $url_name;
    private $app_name;
    //
    function getRole_id() {
        return $this->role_id;
    }

    function getUrl_id() {
        return $this->url_id;
    }

    function getUrl_name() {
        return $this->url_name;
    }

    function getApp_name() {
        return $this->app_name;
    }

    function setRole_id($role_id) {
        $this->role_id = $role_id;
    }

    function setUrl_id($url_id) {
        $this->url_id = $url_id;
    }

    function setUrl_name($url_name) {
        $this->url_name = $url_name;
    }

    function setApp_name($app_name) {
        $this->app_name = $app_name;
    } 
    
}
