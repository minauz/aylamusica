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
<div>
    <img src="../vista/imagenes/">
    <form class="my-4 form-inline justify-content-center" action="index.php" method="POST" role="form">
        <label for="buscar">Buscar: </label>
        <input class="form-control form-control-sm ml-3 w-25" type="text" id="input_buscar"
               placeholder="Nombre de cancion / Artista" required>
        <button type="submit" class="ml-2" name="boton_buscar">Buscar cancion</button>
    </form>
</div>
    ';
}

?>