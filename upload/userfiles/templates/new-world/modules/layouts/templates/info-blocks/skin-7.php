<?php

/*

type: layout

name: Info Block

position: 7

*/

?>

<?php
if (!$classes['padding_top']) {
    $classes['padding_top'] = 'p-t-0';
}
if (!$classes['padding_bottom']) {
    $classes['padding_bottom'] = 'p-b-0';
}

$layout_classes = ' ' . $classes['padding_top'] . ' ' . $classes['padding_bottom'] . ' ';
?>

<section class="section-16 <?php print $layout_classes; ?> fx-particles edit safe-mode nodrop" field="layout-info-blocks-skin-7-<?php print $params['id'] ?>" rel="module">
    <div class="container-fluid">
        <div class="row flexbox-container">
            <div class="col-12 col-lg-6 col-xl-7 left-side text-center text-lg-left">
                <div class="info-holder shadow-sm allow-drop" <?php if(is_live_edit()): ?>no-<?php endif;?>data-aos="fade-up">
                    <h2 class="hr">Faça o design e codifique</h2>
                    <p>A Bitstore Builder é um sistema de gerenciamento de conteúdo de código aberto e construtor de websites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel 8, usando arrastar e soltar e permitindo que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam
                         exibições múltiplas.</p>
                    <div class="element">
                        <br />
                        <module type="btn" button_text="More about this" button_style="8"/>
                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-6 col-xl-5 img-holder" style="background-image: url('<?php print template_url(); ?>assets/img/img-2.png');"></div>
        </div>
    </div>
</section>