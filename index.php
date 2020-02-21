<?php


session_start();

include_once 'modelo/bd.inc.php';
include_once 'vista/header.inc.php';
include_once 'controlador/controller.inc.php';
include_once 'vista/show_view.php';
include_once 'vista/footer.inc.php';


actualizar_sesion();
show_header();
show_content();
show_footer();
?>