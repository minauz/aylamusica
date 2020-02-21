<?php

define("config", json_decode(file_get_contents("configuracion.json"), true));

function connection()
{
    $host = config["bd_server"];
    $username = config["bd_usuario"];
    $passwd = config["bd_contrasena"];
    $dbname = config["bd_nombre"];

    $conn = new mysqli($host, $username, $passwd, $dbname);
    if ($conn->connect_error) {
        return null;
    } else {
        return $conn;
    }
}

/*
*	Muestra el contenido de la parte central de la página
*	E: Se necesita el dato a buscar proveniente de SQL
*	S:
*	SQL: SELECT titulo,artista,ruta_imagen FROM cancion WHERE titulo OR artista LIKE $input_buscar
*/

function consultar_cancion($buscar)
{
    $conn = connection();
    try {
        $stmt = $conn->prepare("SELECT titulo,artista,ruta_imagen FROM cancion WHERE titulo LIKE %?% OR artista LIKE %?%");
        $stmt->bind_param("s", $buscar);
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        return $result;
    } catch (Exception $e) {
        return $e->getCode();
    }
}

?>