<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 */
require_once 'PersonAddr.php';
require_once 'util/Tools.php';

/**
 * Description of StaffDoc
 *
 * @author batista
 */
class PersonDoc extends PersonAddr {

    private $rg; //           RG 
    private $rg_organissuer; // RG ORGAN ISSUER
    private $rg_dateofchip; // RG DATE OF CHIP
    private $crsm;         //CERTIFICATE MILITAR
    private $cpf;          //CPF 
    private $ctps;         //CTPS
    private $ctpsserie;
    private $ctps_dateofissuer; //CTPS DATE OF ISSUER
    private $pispasep;
    private $yearlastcontrib; //DATE OF LAST UNIO DUES
    private $birthormary_certif; //CERTIFICATE OF BIRTH OR MARRY
    private $cnh;
    private $cnh_cat;
    private $cnh_dateofexpire;
    private $titlevote;
    private $titlevote_sec;
    private $titlevote_zone;

    //
    function getRg() {
        return $this->rg;
    }

    function getRg_organissuer() {
        return $this->rg_organissuer;
    }

    function getRg_dateofchip() {
        return $this->rg_dateofchip;
    }

    function getCrsm() {
        return $this->crsm;
    }

    function getCpf() {
        return $this->cpf;
    }

    function getCtps() {
        return $this->ctps;
    }

    function getCtpsserie() {
        return $this->ctpsserie;
    }

    function getCtps_dateofissuer() {
        return $this->ctps_dateofissuer;
    }

    function getPispasep() {
        return $this->pispasep;
    }

    function getYearlastcontrib() {
        return $this->yearlastcontrib;
    }

    /**
     * For education conclude
     * @return type
     */
    function getBirthormary_certif() {
        return $this->birthormary_certif;
    }

    function getCnh() {
        return $this->cnh;
    }

    function getCnh_cat() {
        return $this->cnh_cat;
    }

    function getCnh_dateofexpire() {
        return $this->cnh_dateofexpire;
    }

    function getTitlevote() {
        return $this->titlevote;
    }

    function getTitlevote_sec() {
        return $this->titlevote_sec;
    }

    function getTitlevote_zone() {
        return $this->titlevote_zone;
    }

    function setRg($rg) {
        $this->rg = $rg;
    }

    function setRg_organissuer($rg_organissuer) {
        $this->rg_organissuer = $rg_organissuer;
    }

    function setRg_dateofchip($rg_dateofchip) {
        $vdateofchip = date_create($rg_dateofchip);
        $this->rg_dateofchip = date_format($vdateofchip, "Y-m-d");
    }

    function setCrsm($crsm) {
        $this->crsm = $crsm;
    }

    function setCpf($cpf) {
        $this->cpf = $cpf;
    }

    function setCtps($ctps) {
        $this->ctps = $ctps;
    }

    function setCtpsserie($ctpsserie) {
        $this->ctpsserie = $ctpsserie;
    }

    function setCtps_dateofissuer($ctps_dateofissuer) {
        $vctps_date = date_create($ctps_dateofissuer);
        $this->ctps_dateofissuer = date_format($vctps_date, "Y-m-d");
    }

    function setPispasep($pispasep) {
        $this->pispasep = $pispasep;
    }

    function setYearlastcontrib($yearlastcontrib) {
        $vdatelcontrib = date_create($yearlastcontrib);
        $this->yearlastcontrib = date_format($vdatelcontrib, "Y");
    }

    function setBirthormary_certif($birthormary_certif) {
        $this->birthormary_certif = $birthormary_certif;
    }

    function setCnh($cnh) {
        $this->cnh = $cnh;
    }

    function setCnh_cat($cnh_cat) {
        $this->cnh_cat = $cnh_cat;
    }

    function setCnh_dateofexpire($cnh_dateofexpire) {
        if (strlen($cnh_dateofexpire) > 4) {
            $vdatecnhex = date_create($cnh_dateofexpire);
            $this->cnh_dateofexpire = date_format($vdatecnhex, "Y-m-d");
        } else {
             $this->cnh_dateofexpire = $cnh_dateofexpire;
        }
    }

    function setTitlevote($titlevote) {
        $this->titlevote = $titlevote;
    }

    function setTitlevote_sec($titlevote_sec) {
        $this->titlevote_sec = $titlevote_sec;
    }

    function setTitlevote_zone($titlevote_zone) {
        $this->titlevote_zone = $titlevote_zone;
    }

    /**
     * Metho to set data to PersonDoc
     * @param type $persondoc
     */
    function setPersonDoc($persondoc) {
        $tools = new Tools();
        //
        $this->rg = $persondoc->getRg();

        $this->rg_organissuer = $persondoc->getRg_organissuer();

        if ($persondoc->getRg_dateofchip() !== '0000-00-00') {
            $vdateofchip = date_create($persondoc->getRg_dateofchip());
            $dateofchip = date_format($vdateofchip, "d-m-Y");
            $this->rg_dateofchip = $dateofchip;
        }

        //       
        $this->crsm = $tools->format_data($persondoc->getCrsm(), 'crsm');
        $this->cpf = $tools->format_data($persondoc->getCpf(), 'cpf');
        $this->ctps = $persondoc->getCtps();
        $this->ctpsserie = $persondoc->getCtpsserie();

        if ($persondoc->getCtps_dateofissuer() !== '0000-00-00') {
            $vctps_date = date_create($persondoc->getCtps_dateofissuer());
            $ctps_date = date_format($vctps_date, "d-m-Y");
            $this->ctps_dateofissuer = $ctps_date;
        }

        $this->pispasep = $persondoc->getPispasep();

        if ($persondoc->getYearlastcontrib() !== '0000') {
            //
            $vdatelcontrib = date_create($persondoc->getYearlastcontrib());
            $datelcontrib = date_format($vdatelcontrib, "Y");
            $this->yearlastcontrib = $datelcontrib;
        }

        $this->birthormary_certif = $persondoc->getBirthormary_certif();

        $this->cnh = $tools->format_data($persondoc->getCnh(), 'cnh');
        $this->cnh_cat = $persondoc->getCnh_cat();

        if ($persondoc->getCnh_dateofexpire() !== '0000-00-00') {
            $vdatecnhex = date_create($persondoc->getCnh_dateofexpire());
            $datecnhex = date_format($vdatecnhex, "d-m-Y");
            $this->cnh_dateofexpire = $datecnhex;
        }

        $this->titlevote = $persondoc->getTitlevote();
        $this->titlevote_sec = $persondoc->getTitlevote_sec();
        $this->titlevote_zone = $persondoc->getTitlevote_zone();
    }

}
