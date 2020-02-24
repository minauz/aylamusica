<?php
/*
 * Muestra la pantalla de inicio de la web
 * E:
 * S:
 * SQL:
 */

function show_inicio()
{
    echo '
<div class="text-center">
    <img src="vista/imagenes/imagen_inicio.png">
    <form class="my-4 form-inline justify-content-center" action="index.php" method="POST" role="form">
        <label for="buscar">Buscar: </label>
        <input class="form-control form-control-sm ml-3 w-25" type="text" id="input_buscar" name="input_buscar"
               placeholder="Nombre de cancion / Artista" required>
        <button type="submit" class="ml-2" name="buscar_cancion">Buscar cancion</button>
    </form>
</div>
    ';
}

function show_lista_canciones()
{
    $canciones_encontradas = consultar_cancion($_POST["input_buscar"]);
    echo '
        <div id="canciones" class="container text-center">
            <h2 class="ml-2">Canciones buscadas con "', $_POST['input_buscar'], '". </h2>
        ';
    if ($canciones_encontradas->num_rows == 0) {
        echo '
            <p>Ningun resultado.</p>';
    } else {
        if ($canciones_encontradas->num_rows > 0) {
            echo '
                <ul>';
            while ($row = $canciones_encontradas->fetch_assoc()) {
                echo '
                    <li class="li_cancion mx-3">
                        <a href="index.php?cmd=mostrar_cancion&id_cancion=' . $row['cancion_id'] . '">
                            <img class="miniatura_cancion" src="' . $row['ruta_imagen'] . '">
                            <span>' . $row["titulo"] . ' - ' . $row["artista"] . '</span>
                        </a>
                    </li>
                ';
            }
            echo '
                </ul>
            ';
        }
        echo '
        </div>';
    }
}

function show_cancion()
{
    $cancion = getCancion($_GET['id_cancion']);
    $parrafos = getParrafos($_GET['id_cancion']);

    echo '
    <div id="cancion" class="text-center container">
        <img src="' . $cancion['ruta_imagen'] . '">
        <h2>' . $cancion['titulo'] . '</h2>
        <h3>' . $cancion['artista'] . '</h3>
    ';
    echo '
        <ol>
            ';
    while ($row = $parrafos->fetch_assoc()) {
        echo '
            <li class="li_parrafo">' . $row['texto_parrafo'] . ' </li>
            ';
    }
    echo '
        </ol>
    </div>
    ';

}

function show_error()
{
    echo '
    <h1 class="text-center">No hay conexion con la base de datos </h1>';
}

function show_msg($msg)
{
    echo "<script type='text/javascript'>alert('" . $msg . "');</script>";
}

?>