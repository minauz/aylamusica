<?php
/*
*	Muestra el contenido de la parte central de la página
*	E:
*	S:
*	SQL:
*/
function show_content()
{
    if ($_SERVER['REQUEST_METHOD'] == 'GET') {
        if (!isset($_GET['cmd'])) {
            show_inicio();
        }else {
            switch ($_GET['cmd']) {
                case 'inicio':
                    show_inicio();
            }
        }
    }else {
        // Peticiones a traves de POST
        if (isset($_POST['buscar_cancion'])) {
            if (cancion_existe()) {
                show_inicio();
                show_resultado_canciones();
            }
        }
    }
}

/*
* Realiza algunas acciones según esté la sesión abierta o no
*
* E:
* S:
* SQL:
*/
function actualizar_sesion()
{
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        if (isset($_POST['login'])) {
            if (login_ok()) {
                $_SESSION['user'] = $_POST['pass_user'];
            }
        }
    } else {
        if (isset($_GET['cmd'])) {
            if ($_GET['cmd'] == 'logout') {
                unset($_SESSION);
                session_destroy();
            }
        }
    }
}
?>