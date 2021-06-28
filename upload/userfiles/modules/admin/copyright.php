<?php if(mw()->ui->powered_by_link_enabled() and mw()->ui->service_links_enabled()){ ?>
<div class="row copyright mt-3">
    <div class="col-12">
        <!-- p class=" text-muted text-center small ">  <?php //echo    mw()->ui->powered_by_link() ; ?>   Version:  <?php //echo MW_VERSION; ?> </p -->
        <p class=" text-muted text-center small ">  <?php echo    mw()->ui->bitstore_powered_by_link() ; ?>   Versão:  <?php echo BT_VERSION; ?> </p>
    </div>
</div>
<?php  } ?>