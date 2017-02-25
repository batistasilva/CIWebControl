<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @param Pages
 */
class Main extends CI_Controller {

    public function index() {
       // $this->view->title = 'OSSB Solutions - Principal';
        //Load Temaplate
        $this->load->view('header');
        $this->load->view('index/index');
        $this->load->view('footer');
        // echo '<br/>Inside Main()';
    }

  
    /*
      public function show($slug) {
      $data['page'] = $this->Page_model->get_by_slug($slug);

      //Load Temaplate
      $this->template->load('public', 'default', 'pages/show', $data);
      }

      public function index2()
      {
      $this->view->title = 'OSSB Solutions - Principal';
      //
      $this->view->render('header');
      $this->view->render('index/index');
      $this->view->render('footer');
      } */
}
