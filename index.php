<?php

header('Content-Type: text/html; charset=utf-8');
session_start();

include_once 'modelo/bd.inc.php';
include_once 'vista/header.inc.php';
include_once 'controlador/controller.inc.php';
include_once 'vista/show_view.php';
include_once 'vista/footer.inc.php';




show_header();
show_content();
show_footer();
?>