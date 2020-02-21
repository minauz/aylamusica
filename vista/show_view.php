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
        <div id="canciones">
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
                        <a href="index.php?cmd=cancion">
                            <img class="foto_cancion" src="' . $row['ruta_imagen'] . '">
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