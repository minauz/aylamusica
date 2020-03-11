<?php
/*
*	Muestra el encabezado
*	E:
*	S:
*	SQL:
*/
function show_header()
{
    echo '
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="vista/css/estilo.css">
    <link rel="icon" type="image/png" href="vista/imagenes/imagen_inicio.png">
    <title>Aylamusica</title>
</head>

<body class="mx-3">
<nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="index.php?cmd=inicio">Inicio</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
</nav>
<h1 class="text-center"><a href="index.php?cmd=inicio">Aylamusica</a></h1>';
} ?>