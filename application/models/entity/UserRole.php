<?php
require_once 'Roles.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UserRole
 *
 * @author batista
 */
class UserRole extends Roles {
    private $user_role_id;
    private $role_id;
    private $allow_access;
    private $note;
    private $date_create;
    private $date_change;

    function getUser_role_id() {
        return $this->user_role_id;
    }

    function getRole_id() {
        return $this->role_id;
    }

    function getAllow_access() {
        return $this->allow_access;
    }

    function getNote() {
        return $this->note;
    }

    function getDate_create() {
        return $this->date_create;
    }

    function getDate_change() {
        return $this->date_change;
    }

    function setUser_role_id($user_role_id) {
        $this->user_role_id = $user_role_id;
    }

    function setRole_id($role_id) {
        $this->role_id = $role_id;
    }

    function setAllow_access($allow_access) {
        $this->allow_access = $allow_access;
    }

    function setNote($note) {
        $this->note = $note;
    }
    
    function setDate_create($date_create) {
        $this->date_create = $date_create;
    }

    function setDate_change($date_change) {
        $this->date_change = $date_change;
    }

}
