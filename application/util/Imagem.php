<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Imagem
 *
 * @author sistema
 */
class Imagem {

    //
    private $name;
    private $path;
    private $statusUpload;
    private $statusSave;

    //
    function getName() {
        return $this->name;
    }

    function getPath() {
        return $this->path;
    }

    function getStatusUpload() {
        return $this->statusUpload;
    }

    function getStatusSave() {
        return $this->statusSave;
    }

    function setName($name) {
        $this->name = $name;
    }

    function setPath($path) {
        $this->path = $path;
    }

    function setStatusUpload($statusUpload) {
        $this->statusUpload = $statusUpload;
    }

    function setStatusSave($statusSave) {
        $this->statusSave = $statusSave;
    }

    /**
     * Set image to session when
     * it was uploaded or changed,
     * saved..
     * @param type $image
     */
    function setImgToSession($image) {
        Session::init();
        Session::setSession('simage', $image);
    }

    /**
     * Method to get Session Image saved
     * when it was uploaded or saved, chaged.
     */
    function getImgToSession($simage) {
        if (isset($_SESSION[$simage]))
            return $_SESSION[$simage];
    }

}
