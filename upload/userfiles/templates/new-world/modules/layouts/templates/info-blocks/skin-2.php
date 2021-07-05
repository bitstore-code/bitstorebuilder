<?php

/*

type: layout

name: Info Block

position: 2

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

<section class="section <?php print $layout_classes; ?> edit safe-mode nodrop" field="layout-info-blocks-skin-2-<?php print $params['id'] ?>" rel="module">
    <div class="container">
        <div class="row">
            <div class="col-xl-10 mx-auto">
                <div class="row">
                    <div class="order-2 order-xl-2 text-center text-sm-center text-lg-left col-md-10 mx-auto col-lg-6 m-b-20 d-flex flex-column justify-content-center align-items-center">
                        <div class="allow-drop">
                            <h2 class="m-b-30">Arrastar e soltar, sistema de gerenciamento de conteúdo moderno</h2>
                            <p>A Bitstore Builder é um sistema de gerenciamento de conteúdo, construtor de websites e E-commerce. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel 8, usando arrastar e soltar e permitindo aos usuários criar conteúdo rapidamente, enquanto agendam e gerenciam múltiplos
                                 exibe.</p>
                            <div class="element m-t-50 text-center text-lg-right">
                                <module type="btn" template="bootstrap" button_style="btn-primary" text="Read More"/>
                            </div>
                        </div>
                    </div>

                    <div class="order-1 order-xl-1 text-left text-sm-center text-xl-left col-lg-6 m-b-20">
                        <img src="<?php print template_url(); ?>assets/img/img-4.png" alt=""/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>