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
*	Conexión a la base de datos
*	E: buscar
*	S: conn (variable de tipo connection)
*	SQL:
*/

function consultar_cancion($texto_buscar)
{
    $conn = connection();
    try {
        $stmt = $conn->prepare("SELECT cancion_id,titulo, artista, ruta_imagen FROM cancion WHERE titulo LIKE CONCAT('%', ?, '%') OR artista LIKE CONCAT('%', ?, '%');");
        $stmt->bind_param("ss", $texto_buscar, $texto_buscar);
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        return $result;
    } catch (Exception $e) {
        return $e->getCode();
    }
}

/*
*	Obtener parrafos de una cancion
*	E: Le pasamos el id de la cancion.
*	S: $result
*	SQL: SELECT parrafo.texto_parrafo FROM cancion JOIN parrafo ON cancion.cancion_id= ? AND parrafo.cancion_id= ?;
*/

function getParrafos($id_cancion)
{
    $conn = connection();
    try {
        $stmt = $conn->prepare("SELECT parrafo.texto_parrafo FROM cancion JOIN parrafo ON cancion.cancion_id= ? AND parrafo.cancion_id= ?;");
        $stmt->bind_param("ii", $id_cancion, $id_cancion);
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        return $result;
    } catch (Exception $e) {
        return $e->getCode();
    }
}

/*
*	Nos devuelve un array con los datos de la cancion.
*	E: Le pasamos el id de la cancion.
*	S:
*	SQL: SELECT * FROM cancion WHERE cancion_id
*/

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

/*
*	Comprobar login es correcto.
*	E: 
*	S:
*	SQL: SELECT * FROM cancion WHERE cancion_id
*/

function login_valido($pass)
{
    return ($pass == config['contrasena_admin']);
}

?>