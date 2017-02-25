<?php

require_once 'UserRole.php';

/**
 * Description of Users
 *
 * @author batista
 */
class User extends UserRole {

    private $user_id;
    private $staff_id;
    private $cust_id;
    private $cpny_id;
    private $username;
    private $password;
    private $email;
    private $userkey;
    private $note;
    private $status;
    private $date_create;
    private $date_change;
    //
    //
    //
   function getUser_id() {
        return $this->user_id;
    }

    function getStaff_id() {
        return $this->staff_id;
    }

    function getCust_id() {
        return $this->cust_id;
    }

    function getCpny_id() {
        return $this->cpny_id;
    }

    function getUsername() {
        return $this->username;
    }

    function getPassword() {
        return $this->password;
    }

    function getEmail() {
        return $this->email;
    }
    
    function getUserkey() {
        return $this->userkey;
    }

    function getNote() {
        return $this->note;
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

//

    function setUser_id($user_id) {
        $this->user_id = $user_id;
    }

    function setStaff_id($staff_id) {
        $this->staff_id = $staff_id;
    }

    function setCust_id($cust_id) {
        $this->cust_id = $cust_id;
    }

    function setCpny_id($cpny_id) {
        $this->cpny_id = $cpny_id;
    }

    function setUsername($username) {
        $this->username = $username;
    }

    function setPassword($password) {
        $this->password = $password;
    }

    function setUserkey($userkey) {
        $this->userkey = $userkey;
    }

    function setNote($note) {
        $this->note = $note;
    }

    function setStatus($status) {
        $this->status = $status;
    }

    function setDate_create($date_create) {
        $this->date_create = $date_create;
    }

    function setDate_change($date_change) {
        $this->date_change = $date_change;
    }

    function setEmail($email) {
        $this->email = $email;
    }
  
}
