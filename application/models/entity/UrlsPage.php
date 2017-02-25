<?php


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UrlsPage
 *
 * @author sistema
 */
class UrlsPage {
    private $url_id;
    private $app_name;
    private $page;
    private $note;
    private $date_create;
    private $date_change;
    //
    function setUrlsPage(){
        $date = date_create($this->date_create);    
        $this->date_create = date_format($date, "d-m-Y H:m:s");
    }
    //
    function getUrl_id() {
        return $this->url_id;
    }

    function getApp_name() {
        return $this->app_name;
    }

    function getPage() {
        return $this->page;
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

    //
    
    function setUrl_id($url_id) {
        $this->url_id = $url_id;
    }

    function setApp_name($app_name) {
        $this->app_name = $app_name;
    }

    function setPage($page) {
        $this->page = $page;
    }

    function setNote($note) {
        $this->note = $note;
    }
    
    function setDate_create($date_create) {
        $vdate_create = date_create($date_create);   
        $this->date_create = date_format($vdate_create, "Y-m-d H:m:s");   
    }

    function setDate_change($date_change) {
        $vdate_change = date_create($date_change);    
        $this->date_change = date_format($vdate_change, "Y-m-d H:m:s");
    }

}
