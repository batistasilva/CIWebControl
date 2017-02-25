<?php
require_once 'UrlsPage.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Roles
 *
 * @author sistema
 */
class Roles extends UrlsPage {
   private $role_id;
   private $url_id;
   private $role_name;
   private $allow_access;
   private $role;
   private $status;
   private $date_create;
   private $date_change;
   //
   
   function getRole_id() {
       return $this->role_id;
   }

   function getUrl_id() {
       return $this->url_id;
   }

   function getRole_name() {
       return $this->role_name;
   }

   function getAllow_access() {
       return $this->allow_access;
   }

   function getDate_create() {
       return $this->date_create;
   }

   function getDate_change() {
       return $this->date_change;
   }

   function getRole() {
       return $this->role;
   }

   function getStatus() {
       return $this->status;
   }   
   
   function setRole_id($role_id) {
       $this->role_id = $role_id;
   }

   function setUrl_id($url_id) {
       $this->url_id = $url_id;
   }

   function setRole_name($role_name) {
       $this->role_name = $role_name;
   }

   function setAllow_access($allow_access) {
       $this->allow_access = $allow_access;
   }

   function setRole($role) {
       $this->role = $role;
   }

    function setDate_create($date_create) {
        $vdate_create = date_create($date_create);   
        $this->date_create = date_format($vdate_create, "Y-m-d H:m:s");   
    }

    function setDate_change($date_change) {
        $vdate_change = date_create($date_change);    
        $this->date_change = date_format($vdate_change, "Y-m-d H:m:s");
    }
   
    function setStatus($status) {
        $this->status = $status;
    }
   
    
}
