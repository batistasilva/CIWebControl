<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CustIndDetails
 *
 * @author sistema
 */
class CustIndDetails {
   // 
   private $customer_id;
   private $occupation;
   private $cpf;
   private $rg;
   private $longname;
   private $shortname;
   private $gender;
   private $home_phone;
   private $mobil_home;
   private $nextel_phone;
   private $fax_phone;
   private $email;
   private $webpager;
   //
   function getCustomer_id() {
       return $this->customer_id;
   }

   function getOccupation() {
       return $this->occupation;
   }

   function getCpf() {
       return $this->cpf;
   }

   function getRg() {
       return $this->rg;
   }

   function getLongname() {
       return $this->longname;
   }

   function getShortname() {
       return $this->shortname;
   }

   function getGender() {
       return $this->gender;
   }

   function getHome_phone() {
       return $this->home_phone;
   }

   function getMobil_home() {
       return $this->mobil_home;
   }

   function getNextel_phone() {
       return $this->nextel_phone;
   }

   function getFax_phone() {
       return $this->fax_phone;
   }

   function getEmail() {
       return $this->email;
   }

   function getWebpager() {
       return $this->webpager;
   }
   function setCustomer_id($customer_id) {
       $this->customer_id = $customer_id;
   }

   function setOccupation($occupation) {
       $this->occupation = $occupation;
   }

   function setCpf($cpf) {
       $this->cpf = $cpf;
   }

   function setRg($rg) {
       $this->rg = $rg;
   }

   function setLongname($longname) {
       $this->longname = $longname;
   }

   function setShortname($shortname) {
       $this->shortname = $shortname;
   }

   function setGender($gender) {
       $this->gender = $gender;
   }

   function setHome_phone($home_phone) {
       $this->home_phone = $home_phone;
   }

   function setMobil_home($mobil_home) {
       $this->mobil_home = $mobil_home;
   }

   function setNextel_phone($nextel_phone) {
       $this->nextel_phone = $nextel_phone;
   }

   function setFax_phone($fax_phone) {
       $this->fax_phone = $fax_phone;
   }

   function setEmail($email) {
       $this->email = $email;
   }

   function setWebpager($webpager) {
       $this->webpager = $webpager;
   }

}
