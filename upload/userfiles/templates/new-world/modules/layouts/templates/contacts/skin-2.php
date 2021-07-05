<?php

/*

type: layout

name: Contact Information

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

<section class="section-22 <?php print $layout_classes; ?> edit safe-mode nodrop" field="layout-contacts-skin-2-<?php print $params['id'] ?>" rel="module">
    <div class="container">
        <div class="row">
            <div class="col-xl-10 mx-auto">
                <div class="row">
                    <div class="col-xl-6 text-center text-lg-left m-b-40 allow-drop">
                        <h2 class="hr">Por que entrar em contato conosco?</h2>
                        <p>A Bistore Builder é um sistema de gerenciamento de conteúdo, construtor de websites e E-commerce.
                             É baseado na linguagem de programação PHP e no framework de aplicação web Laravel 8, usando arrastar e soltar e permitindo aos usuários criar conteúdo rapidamente, enquanto agendam e gerenciam múltiplas exibições.</p>
                        <br/>
                        <br/>

                        <div class="element">
                            <module type="btn" template="bootstrap" button_style="btn-primary" button_text="Contact Us"/>
                        </div>
                    </div>

                    <div class="col-xl-5 offset-xl-1">
                        <div class="row">
                            <div class="col-12 cloneable">
                                <div class="shadow-md box">
                                    <div class="icon-holder">
                                        <i class="mw-icon mw-micon-Building safe-element"></i>
                                    </div>
                                    <div class="text-holder allow-drop">
                                        <p><strong>Endereço</strong></p>
                                        <p>Rua Castelo Branco, nº 002, Jardim das Flores</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 cloneable">
                                <div class="shadow-md box">
                                    <div class="icon-holder">
                                        <i class="mw-icon mw-micon-Smartphone-3 safe-element"></i>
                                    </div>
                                    <div class="text-holder allow-drop">
                                        <p><strong>Telefone</strong></p>
                                        <p>99 99999 0909 ( Comercial ) 99 99999 0909 ( Vendas)</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 cloneable">
                                <div class="shadow-md box">
                                    <div class="icon-holder">
                                        <i class="mw-icon mw-micon-Email safe-element"></i>
                                    </div>
                                    <div class="text-holder allow-drop">
                                        <p><strong>Outras maneiras de nos contatar</strong></p>
                                        <p>Email: info@seuemail.com</p>
                                    </div>

                                    <div class="socials-holder">
                                        <module type="social_links" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

