<?php


session_start();

include_once 'model/bd.inc.php';
include_once 'view/header.inc.php';
include_once 'view/footer.inc.php';
include_once 'controller/controller.inc.php';
include_once 'view/show_view.php';

actualizar_sesion();
show_header();
show_content();
?>