<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UserView
 *
 * @author sistema
 */
class UserView extends User {

    private $photo;
    private $photo_wh;

    //
    function getPhoto() {
        return $this->photo;
    }

    function getPhoto_wh() {
        return $this->photo_wh;
    }

    function setPhoto($photo) {
        $this->photo = $photo;
    }

    function setPhoto_wh($photo_wh) {
        $this->photo_wh = $photo_wh;
    }

    //
    /**
     * Method to set photo to user
     */
    function setUserView() {
        if ($this->photo !== NULL) {
            $imagesize = getimagesize($this->photo);
            $this->photo_wh = $imagesize[3];
        }
    }

}
