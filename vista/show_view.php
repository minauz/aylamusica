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
        <input class="form-control form-control-sm ml-3 w-25" type="text" id="input_buscar"
               placeholder="Nombre de cancion / Artista" required>
        <button type="submit" class="ml-2" name="buscar_cancion">Buscar cancion</button>
    </form>
</div>
    ';
}

function show_resultado_canciones()
{
    echo '
<div id="canciones">
    <h2 class="ml-2">Canciones</h2>
    <ul>
        <li class="li_cancion mx-3">
            <a href="cancion.html">
                <!--Cargar con los datos de la cancion pulsada una nueva pagina con la cancion-->
                <img class="foto_cancion" src="https://www.europaremix.com/img/p/10498-2442-large.jpg">
                <span>Tusa - Karol G</span>
            </a>
        </li>
        <li class="li_cancion mx-3" id="cancion_id">
            <a href="cancion.html">
                <img class="foto_cancion" src="https://www.europaremix.com/img/p/10498-2442-large.jpg">
                <span>Tusa - Karol G</span>
            </a>
        </li>
    </ul>
</div>
    ';
}

?>