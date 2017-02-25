<div class="container">
    <div class="col-lg-13">
        <div class="row well" style="margin-top:0px; margin-left:0px; margin-right: 0px; margin-bottom: 0px;">
            <div class="thumbnail">
                <span class="thumbnail muted text-center" style="background-color: #0E3B8C; font-weight: bold; color: #FFFFFF;">
                    <small>
                        <strong>Administração - Cadastro de Empresa</strong>
                    </small>
                </span>
                <?php
                  // $smsg = Session::getSession('smsg');
                 ?>
                <?php if (isset($smsg)): ?>
                    <div class="form-group">
                        <div class="error col-xs-offset-1 col-xs-10">
                            <div class="<?php echo $smsg->getInfo(); ?>" style="text-align: center;">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <strong><?php echo $smsg->getMsg(); ?></strong>
                            </div>
                        </div>
                    </div>
                    <?php
                   // $this->smsg->rmSMsg();
                    //unset($_SESSION['createCompanyOkay']);
                    //Finaliza a sessão para a mensagem não ficar sendo exibida com reflesh
                    ?>
                <?php endif; ?>    
                <hr>
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading text-center"><small><strong>Empresas Cadastradas</strong></small></div>
                    <!-- Table -->
                    <table class="table">
                        <thead>
                            <tr style="text-align: left;">
                                <th>Razão Social</th>
                                <th>Nome Fantasia</th>
                                <th>Status</th>
                                <th>Data de Cadastro</th>
                                <th>Alterar</th>
                                <th>Remover</th>
                            </tr>
                        </thead>
                        <tbody>   
                            <?php
                            if ($cpny_list)
                               // print_r($cpny_list);
                                foreach ($cpny_list as $cpny) {
                                    $date = date_create($cpny->date_create);
                                    $date_new_create = date_format($date, "d-m-Y H:m:s");
                                    ?>
                                    <tr>
                                        <td><?php echo $cpny->longname; ?></td>
                                        <td><?php echo $cpny->shortname; ?></td>
                                        <td><?= $cpny->status == '1' ? "Ativo" : "Inativo"; ?></td>
                                        <td><?php echo $date_new_create; ?></td>
                                        <td><a class="delete" href="<?php echo base_url(); ?>ctrlcpny/cpnyEdit/<?php echo $cpny->company_id; ?>">Alterar</a></td>
                                        <td><a class="delete" href="<?php echo base_url(); ?>ctrlcpny/cpnyDel/<?php echo $cpny->company_id; ?>">Remover</a></td>
                                    </tr>                           
                                    <?php
                                }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</div><!-- /container -->