<!DOCTYPE html><!-- doctype do HTML5 -->
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->

<html lang="pt-BR" class="no-js">
    <!-- A classe 'no-js' é reconhecida pelo javascript modernizr, permitindo 
    que browsers antigos reconheçam corretamente nossas tags -->
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><!-- Importante para habilitar os recursos de Responsividade em conjunto com o CSS -->
        <meta name="keywords" content="HTML5,javascript">
        <title><?= (isset($this->title)) ? $this->title : 'OSSB Solutions Business'; ?></title>
        <meta name="viewport" content="width=1200">
        <meta property="og:title" content="ossb.com.br/webctrl/">
        <meta property="og:image" content="http://www.ossb.com.br/public/btan/ico/favicon.png">
        <meta property="og:site_name" content="ossb.com.br/webctrl/">
        <meta property="og:description" content="OSSB Solutions Business">
        <meta content="A OSSB Solutions Business é uma das Lider em Automação e Integração de Sistemas no Brasil. 
              Somos conhecidos por ter os melhores preços e serviços." name="description"> 

        <!-- Java Script -->
        <script src="<?php echo base_url(); ?>assets/btan/js/jquery-1.11.2.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url(); ?>assets/btan/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="<?php echo base_url(); ?>assets/btan/js/my-custom.js" type="text/javascript"></script>
        <script src="<?php echo base_url(); ?>assets/btan/js/modernizr-latest-v2.8.3.js" type="text/javascript"></script>   
        <script src="<?php echo base_url(); ?>assets/btan/js/underscore.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="<?php echo base_url(); ?>assets/btan/js/ie10-viewport-bug-workaround.js"></script>
        <script src="<?php echo base_url(); ?>views/mngstaff/modal/js/jquery.Jcrop.js" type="text/javascript"></script>
        <link href="<?php echo base_url(); ?>views/mngstaff/modal/css/jquery.Jcrop.css" rel="stylesheet" type="text/css"/>

        <!-- Le styles -->
        <link href="<?php echo base_url(); ?>assets/btan/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url(); ?>assets/btan/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url(); ?>assets/btan/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url(); ?>assets/btan/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url(); ?>assets/btan/css/my-main.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url(); ?>assets/btan/css/normalize.css" rel="stylesheet" type="text/css"/>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/btan/ico/favicon.ico">

        <style>
            /* Line 1072 */
            *
            {
                box-sizing: border-box;
            }

            /* Line 3388 */
            .collapse
            {
                display: none;
            }

            /* Line 4085 */
            .navbar-collapse
            {
                padding-right: 15px;
                padding-left: 15px;
                overflow-x: visible;
                border-top-width: 1px;
                border-top-style: solid;
                border-top-color: transparent;
                box-shadow: 0px 1px 0px rgba(66, 70, 190, 0.1) inset;
            }

            /* Line 4098 */
            .navbar-collapse
            {
                width: auto;
                border-top-width: 0px;
                border-top-style: none;
                box-shadow: none;
            }

            /* Line 4104 */
            .navbar-collapse.collapse
            {
                display: block;
                height: auto;
                padding-bottom: 0px;
                overflow-x: visible;
                overflow-y: visible;
            }

            /* Line 4539 */
            .navbar-inverse .navbar-collapse, .navbar-inverse .navbar-form
            {
                border-top-color: #101010;
                border-right-color-value: #101010;
                border-bottom-color: #101010;
                border-left-color-value: #101010;
            }

            /* Line 5 */
            *
            {
                box-sizing: border-box;
            }

            /* Line 5 */
            .collapse
            {
                display: none;
            }

            /* Line 5 */


            /* Line 5 */
            .navbar-collapse
            {
                width: auto;
                border-top-width: 0px;
                border-top-style: none;
                box-shadow: none;
            }

            /* Line 5 */
            .navbar-collapse.collapse
            {
                display: block;
                height: auto;
                padding-bottom: 0px;
                overflow-x: visible;
                overflow-y: visible;
            }

            /* Line 5 */
            .navbar-inverse .navbar-collapse, .navbar-inverse .navbar-form
            {
                border-top-color: #101010;
                border-right-color-value: #101010;
                border-bottom-color: #101010;
                border-left-color-value: #101010;
            }

            h2
            {
                color: #e74c3c;
            }
            .dropdown-li {
                display:inline-block !important;
                margin-left: 0px;
            }
            .dropdown-menu
            {
                position: absolute;
                top: 100%;
                left: 0px;
                z-index: 1000;
                display: none;
                float: left;
                min-width: 140px;
                padding-top: 5px;
                padding-right: 0px;
                padding-bottom: 5px;
                padding-left: 0px;
                margin-top: 2px;
                margin-right: 0px;
                margin-bottom: 0px;
                margin-left: 0px;
                font-size: 14px;
                text-align: left;
                list-style-type: none;
                list-style-image: none;
                list-style-position: outside;
                background-color: #ffffff;
                background-clip: padding-box;
                border-top-width: 1px;
                border-right-width-value: 1px;
                border-bottom-width: 1px;
                border-left-width-value: 1px;
                border-top-style: solid;
                border-right-style-value: solid;
                border-bottom-style: solid;
                border-left-style-value: solid;
                border-top-color: rgba(0, 0, 0, 0.15);
                border-right-color-value: rgba(0, 0, 0, 0.15);
                border-bottom-color: rgba(0, 0, 0, 0.15);
                border-left-color-value: rgba(0, 0, 0, 0.15);
                border-image-source: none;
                border-image-slice: 100% 100% 100% 100%;
                border-image-width: 1 1 1 1;
                border-image-outset: 0 0 0 0;
                border-image-repeat: stretch stretch;
                border-top-left-radius: 4px;
                border-top-right-radius: 4px;
                border-bottom-right-radius: 4px;
                border-bottom-left-radius: 4px;
                box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.176);
            }

            .dropdown-link {
                display:inline-block !important; 
                padding-right:4px !important;
            }
            .dropdown-caret {
                display:inline-block !important; 
                padding-left:4px !important;
            }

            .nav > li:hover {
                background-color: #0E3B8C; /*hover background color*/
            }

            .nav > li:hover > a {
                color: white; /*hover text color*/
            }

            .nav > li:hover > ul > a {
                color: #0E3B8C; /*dropdown item text color*/
            }

            .glyphicon-gnome-home-24x24 {
                background-image: url("/assets/images/24x24/gnome-fs-home-24x24.png");
                background-position: left;
                height: 24px;
                width: 24px;
            }   
            .glyphicon-company-24x24 {
                background-image: url("/assets/images/24x24/company-24x24.png");
                background-position: left;
                height: 24px;
                width: 24px;
            }

            .glyphicon-customer-24x24 {
                background-image: url("/assets/images/24x24/customer-24x24.png");
                background-position: left;
                height: 24px;
                width: 24px;
            }

            .glyphicon-Group-Folder-24x24 {
                background-image: url("/assets/images/24x24/Group-Folder-24x24.png");
                background-position: left;
                height: 24px;
                width: 24px;
            }

            .glyphicon-mail-24x24 {
                background-image: url("/assets/images/24x24/mail-24x24.png");
                background-position: left;
                height: 24px;
                width: 24px;
            }     
            .glyphicon-system-config-24x24 {
                background-image: url("/assets/images/24x24/system-config-24x24.png");
                background-position: left;
                height: 24px;
                width: 24px;
            }

        </style>
    </head>
    <body>
        <?php /*Session::init();*/ ?>
        <!--[if lt IE 7]>
             <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please 
        <a href="http://browsehappy.com/">upgrade your browser</a> or 
        <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        <div class="container">
            <div id="header" >
                <div class="row">

                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" style="padding-top: 1px; padding-bottom: 1px; margin-right: 13px;">

                    </div>
                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-top: 1px; padding-bottom: 1px;" style='position:relative;'>

                        <?php if (isset($_SESSION['user_ar'])): ?>
                            <div class="form-group btn btn-warning btn-acessar-conta" style='position:absolute; top:10px; left:626px;'>
                                <label>Usuário: </label>
                                <input type="text" readonly="true" autofocus="false" value="<?php echo $_SESSION['user_ar']['username']; ?>" class="text-center btn-default" style="text-transform: uppercase;">
                                <a href="<?php echo URL; ?>webctrl/dashboard/logout" class="btn btn-link caps strong btn-acessar-conta strong" style="font-weight: bold;">Sair</a>
                            </div>
                        <?php endif; ?>    
                    </div> 
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <nav class="navbar navbar-inverse" style="margin-bottom: 2px;">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menu-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="collapse navbar-collapse">
                                <ul class="nav navbar-nav">   
                                    <li>
                                        <a class="navbar-brand" href="<?php echo base_url(); ?>main">
                                            <span class="glyphicon glyphicon-gnome-home-24x24" style="margin-top: 5px;" aria-hidden="true"></span>  Principal...
                                        </a>
                                    </li>

                                    <li class="dropdown">
                                        <a class="dropdown-link navbar-brand" href="<?php echo base_url(); ?>ctrlcpny" title="Área de Cadastro, Manutenção e Pesquisa de Empresas...">
                                            <span class="glyphicon glyphicon-company-24x24" style="margin-top: 5px;" aria-hidden="true"></span>  Empresas...
                                        </a>
                                        <a class="dropdown-caret dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?php echo base_url(); ?>ctrlcpny/addcpny" title="Permite Adicionar uma nova Empresa...">
                                                    <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Adicionar...
                                                </a>
                                            </li>
                                        </ul>                                        
                                    </li>

                                    <li class="dropdown">
                                        <a class="dropdown-link navbar-brand" title="Área de Cadastro, Manutenção e Pesquisas de Clientes..." href="<?php echo base_url(); ?>mngcust">
                                            <span class="glyphicon glyphicon-customer-24x24" style="margin-top: 5px;" aria-hidden="true"></span>  Clientes...
                                        </a>
                                        <a class="dropdown-caret dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?php echo base_url(); ?>mngcust/addcust" title="Permite Adicionar um novo Cliente...">
                                                    <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Adicionar...
                                                </a>
                                            </li>
                                        </ul> 
                                    </li>

                                    <li class="dropdown">
                                        <a class="dropdown-link navbar-brand" title="Área de Cadastro, Manutenção e Pesquisas de Colaboradores..." href="<?php echo base_url(); ?>mngstaff">
                                            <span class="glyphicon glyphicon-Group-Folder-24x24" style="margin-top: 5px;" aria-hidden="true"></span>  Colabora...

                                        </a>
                                        <a class="dropdown-caret dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?php echo base_url(); ?>mngstaff/addstaff" title="Permite Cadastrar novo Colaborador...">
                                                    <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Adicionar...
                                                </a>
                                            </li>
                                            <li><a href="<?php echo base_url(); ?>mngstaff/searchstaff" title="Pesquisa de Colaborador por Filtros...">
                                                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span> Pesquisa...
                                                </a>
                                            </li>                                            
                                        </ul>                                        
                                    </li>

                                    <li class="dropdown">
                                        <a class="dropdown-link navbar-brand" href="#" title="Administração do Sistema, Cadastro de Usuários e Configurações...">
                                            <span class="glyphicon glyphicon-system-config-24x24" style="margin-top: 5px;" aria-hidden="true"></span> Administra...
                                        </a>
                                        <a class="dropdown-caret dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?php echo base_url(); ?>mngurls/addurl" title="Permite Cadastrar Nova Aplicação para o Sistema...">
                                                    <span class="glyphicon glyphicon-user" style="color: #3c763d;" aria-hidden="true"></span> Cadasto de Aplicação...
                                                </a>
                                            </li>  

                                            <li><a href="<?php echo base_url(); ?>menuadm/mgrp" title="Permite Cadastrar Grupos de Permissões para Acessar o Sistema...">
                                                    <span class="glyphicon glyphicon-user" style="color: #3c763d;" aria-hidden="true"></span> Cadastro de Grupos...
                                                </a>
                                            </li> 
                                            <li><a href="<?php echo base_url(); ?>mnguser/adduser" title="Permite Adicionar Novo Usuário para acessar o Sistema..">
                                                    <span class="glyphicon glyphicon-user" style="color: #3c763d;" aria-hidden="true"></span> Cadastro de Usuários...
                                                </a>
                                            </li>                                             
                                        </ul>                                        
                                    </li>

                                    <li>
                                        <a class="navbar-brand" href="#">
                                            <span class="glyphicon glyphicon-mail-24x24" style="margin-top: 5px;" aria-hidden="true"></span> Contato...                                        
                                        </a>
                                    </li> 
                                </ul>                    
                            </div>
                        </nav> 
                    </div>
                </div>
            </div>  
        </div>


