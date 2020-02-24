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
        $conn->set_charset('utf8mb4');
        mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
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
        $stmt = $conn->prepare("SELECT cancion_id,titulo, artista, ruta_imagen FROM cancion WHERE titulo LIKE CONCAT('%', ?, '%') OR artista LIKE CONCAT('%', ?, '%');");
        $stmt->bind_param("ss", $buscar, $buscar);
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        return $result;
    } catch (Exception $e) {
        return $e->getCode();
    }
}

/*
*	Muestra el contenido de la parte central de la página
*	E: Se necesita el dato a buscar proveniente de SQL
*	S:
*	SQL: SELECT titulo,artista,ruta_imagen FROM cancion WHERE titulo OR artista LIKE $input_buscar
*/

function getParrafos($id_cancion)
{
    $conn = connection();
    try {
        $stmt = $conn->prepare("SELECT cancion.titulo,cancion.artista,parrafo.texto_parrafo FROM cancion JOIN parrafo ON cancion.cancion_id= ? AND parrafo.cancion_id= ?;");
        $stmt->bind_param("ii", $id_cancion, $id_cancion);
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        return $result;
    } catch (Exception $e) {
        return $e->getCode();
    }
}

function getCancion($id_cancion)
{
    $conn = connection();
    try {
        $stmt = $conn->prepare("SELECT * FROM cancion WHERE cancion_id= ?;");
        $stmt->bind_param("i", $id_cancion);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();
        $stmt->close();
        return $row;
    } catch (Exception $e) {
        return $e->getCode();
    }
}

?>