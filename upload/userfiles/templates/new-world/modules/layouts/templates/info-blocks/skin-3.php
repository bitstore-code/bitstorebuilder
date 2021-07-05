<?php

/*

type: layout

name: Info Block

position: 3

*/

?>

<?php
if (!$classes['padding_top']) {
    $classes['padding_top'] = 'p-t-30';
}
if (!$classes['padding_bottom']) {
    $classes['padding_bottom'] = 'p-b-30';
}

$layout_classes = ' ' . $classes['padding_top'] . ' ' . $classes['padding_bottom'] . ' ';
?>

<section class="section <?php print $layout_classes; ?> edit safe-mode nodrop" field="layout-info-blocks-skin-3-<?php print $params['id'] ?>" rel="module">
    <div class="container">
        <div class="row">
            <div class="col-xl-10 mx-auto">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="text-center text-lg-left">
                            <div class="m-b-20">
                                <img src="<?php print template_url(); ?>assets/img/img-5.png" alt=""/>
                            </div>

                            <div class=" m-b-20">
                                <div class="allow-drop">
                                    <h2 class="m-b-30">É a nova geração</h2>
                                    <p>A Bitstore Builder é um sistema de gerenciamento de conteúdo, construtor de websites e E-commerce. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel 8</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="text-center text-lg-left">
                            <div class="m-b-20">
                                <img src="<?php print template_url(); ?>assets/img/img-6.png" alt=""/>
                            </div>

                            <div class=" m-b-20">
                                <div class="allow-drop">
                                    <h2 class="m-b-30">Design único</h2>
                                    <p>A Bitstore Builder é um sistema de gerenciamento de conteúdo, construtor de websites e E-commerce. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel 8</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
