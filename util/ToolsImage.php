<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'Tools.php';
require_once 'util/Imagem.php';

/**
 * Description of ToolsImage
 *
 * @author sistema
 */
class ToolsImage extends Model {

    public function UploadImage($home_path) {
        $tools = new Tools();
        //
        $result = FALSE;
        //
        //
############ Configuration ##############
        $max_image_size = 500; //Maximum image size (height and width)
        $destination_folder = $home_path;

        // $destination_folder = 'uploads/images/'; //upload directory ends with / (slash)
        $jpeg_quality = 90; //jpeg quality
##########################################
//continue only if $_POST is set and it is a Ajax request
        if (isset($_POST) && isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

            // check $_FILES['ImageFile'] not empty
            if (!isset($_FILES['image_file']) || !is_uploaded_file($_FILES['image_file']['tmp_name'])) {
                die('Image file is Missing!'); // output error when above checks fail.
            }

            //uploaded file info we need to proceed
            $image_name = $tools->feel_str2($_FILES['image_file']['name']); //file name
            $image_size = $_FILES['image_file']['size']; //file size
            $image_temp = $_FILES['image_file']['tmp_name']; //file temp

            $image_size_info = getimagesize($image_temp); //get image size

            if ($image_size_info) {
                $image_width = $image_size_info[0];      //image width
                $image_height = $image_size_info[1];      //image height
                $image_type = $image_size_info['mime']; //image type
            } else {
                die("Make sure image file is valid!");
            }

            //switch statement below checks allowed image type 
            //as well as creates new image from given file 
            switch ($image_type) {
                case 'image/png':
                    $image_res = imagecreatefrompng($image_temp);
                    break;
                case 'image/gif':
                    $image_res = imagecreatefromgif($image_temp);
                    break;
                case 'image/jpeg': case 'image/pjpeg':
                    $image_res = imagecreatefromjpeg($image_temp);
                    break;
                default:
                    $image_res = false;
            }

            $path_file_img = $destination_folder . $image_name;

            if (file_exists($path_file_img))
                unlink($path_file_img); //remove it!!
                
//       
            if (!file_exists($destination_folder)) {
                //Create directory if not exist!
                $this->createPath($destination_folder);
            }

            if ($image_res) {
                //
                //$image = New Imagem();
                //Get file extension and name to construct new file name 
                $image_info = pathinfo($image_name);
                $image_extension = strtolower($image_info["extension"]); //image extension
                $image_name_only = strtolower($image_info["filename"]); //file name only, no extension
                //create a random name for new image (Eg: fileName_293749.jpg) ;
                $new_file_name = $image_name_only . '.' . $image_extension;

                //folder path to save resized images and thumbnails
                $image_save_folder = $destination_folder . $new_file_name;
                //call normal_resize_image() function to proportionally resize image
                if ($this->normal_resize_image($image_res, $image_save_folder, $image_type, $max_image_size, $image_width, $image_height, $jpeg_quality)) {
                    //call crop_image_square() function to create square thumbnails
                    //
                    /* We have succesfully resized and created thumbnail image
                      We can now output image to user's browser or store information in the database */
                    echo '<div align="center">';
                    echo '<br />';
                    echo '<img src="' . URL . $image_save_folder . '" alt="Resized Image">';
                    echo '</div>';
                    //                    
                }

                imagedestroy($image_res); //freeup memory
                //
                $result = TRUE;
            }
        }
        //
        return $result;
    }

    public function UpdateImagem($person_id) {
        //
        $toolsimg = new ToolsImage();

        $person = $this->getStaffPhoto($person_id);

        $image = $person->imagepath;

        $image_path = URL . $image;
        //
        // $imagesize = getimagesize($image_path);
        //
        //
        $targ_w = 226;
        $targ_h = 280;
        $jpeg_quality = 90;
        $range_x = $_POST['x1'];
        $range_y = $_POST['y1'];
        $range_w = $_POST['w'];
        $range_h = $_POST['h'];
        //

        $img_r = imagecreatefromjpeg($image_path);
        $dst_r = ImageCreateTrueColor($targ_w, $targ_h);

        imagecopyresampled($dst_r, $img_r, 0, 0, $range_x, $range_y, $targ_w, $targ_h, $range_w, $range_h);

        header('Content-type: image/jpeg');
        imagejpeg($dst_r, $image, $jpeg_quality);
        //
    //
    }

    #####  This function will proportionally resize image ##### 

    function normal_resize_image($source, $destination, $image_type, $max_size, $image_width, $image_height, $quality) {

        if ($image_width <= 0 || $image_height <= 0) {
            return false;
        } //return false if nothing to resize
        //
        //do not resize if image is smaller than max size
        if ($image_width <= $max_size && $image_height <= $max_size) {
            if ($this->save_image($source, $destination, $image_type, $quality)) {
                return true;
            }
        }

        //Construct a proportional size of new image
        $image_scale = min($max_size / $image_width, $max_size / $image_height);
        $new_width = ceil($image_scale * $image_width);
        $new_height = ceil($image_scale * $image_height);

        $new_canvas = imagecreatetruecolor($new_width, $new_height); //Create a new true color image
        //Copy and resize part of an image with resampling
        if (imagecopyresampled($new_canvas, $source, 0, 0, 0, 0, $new_width, $new_height, $image_width, $image_height)) {
            $this->save_image($new_canvas, $destination, $image_type, $quality); //save resized image
        }

        return true;
    }

##### This function corps image to create exact square, no matter what its original size! ######

    function crop_image_square($source, $destination, $image_type, $square_size, $image_width, $image_height, $quality) {
        if ($image_width <= 0 || $image_height <= 0) {
            return false;
        } //return false if nothing to resize

        if ($image_width > $image_height) {
            $y_offset = 0;
            $x_offset = ($image_width - $image_height) / 2;
            $s_size = $image_width - ($x_offset * 2);
        } else {
            $x_offset = 0;
            $y_offset = ($image_height - $image_width) / 2;
            $s_size = $image_height - ($y_offset * 2);
        }
        $new_canvas = imagecreatetruecolor($square_size, $square_size); //Create a new true color image
        //Copy and resize part of an image with resampling
        if (imagecopyresampled($new_canvas, $source, 0, 0, $x_offset, $y_offset, $square_size, $square_size, $s_size, $s_size)) {
            $this->save_image($new_canvas, $destination, $image_type, $quality);
        }

        return true;
    }

##### Saves image resource to file ##### 

    function save_image($source, $destination, $image_type, $quality) {

        switch (strtolower($image_type)) {//determine mime type
            case 'image/png':
                imagepng($source, $destination);
                return true; //save png file
                break;
            case 'image/gif':
                imagegif($source, $destination);
                return true; //save gif file
                break;
            case 'image/jpeg': case 'image/pjpeg':
                imagejpeg($source, $destination, $quality);
                return true; //save jpeg file
                break;
            default: return false;
        }
    }

    /**
     * recursively create a long directory path
     */
    function createPath($path) {
        if (is_dir($path))
            return true;
        $prev_path = substr($path, 0, strrpos($path, '/', -2) + 1);
        $return = $this->createPath($prev_path);
        return ($return && is_writable($prev_path)) ? mkdir($path, 0777, true) : false;
    }

    /**
     * Method to valid imagem type
     * allowed.
     * @param type $image_type
     * @param type $imagem_name
     */
    function getImageType($image_type, $imagem_name) {
        //switch statement below checks allowed image type 
        //as well as creates new image from given file 
        switch ($image_type) {
            case 'image/png':
                $image_res = imagecreatefrompng($imagem_name);
                break;
            case 'image/gif':
                $image_res = imagecreatefromgif($imagem_name);
                break;
            case 'image/jpeg': case 'image/pjpeg':
                $image_res = imagecreatefromjpeg($imagem_name);
                break;
            default:
                $image_res = false;
        }
        //
        return true;
    }

    /**
     * Method to get staff photo 
     * for id setted.
     * @param type $person_id
     */
    public function getStaffPhoto($person_id) {
        $person = $this->db->SingleObj('SELECT person_id, name, surname, imagepath '
                . 'FROM person '
                . 'WHERE person_id = :person_id', array(':person_id' => $person_id));

        //print "<pre>";
        //print_r($person);
        //print "</pre>";
        // exit(); 

        return $person;
    }

}
