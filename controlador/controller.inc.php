<?php
/*
*	Muestra el contenido de la parte central de la página
*	E:
*	S:
*	SQL:
*/
function show_content()
{
    if (connection() != null) {
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            if (!isset($_GET['cmd'])) {
                if (isset($_GET['login'])) {
                    show_login();
                } else
                    show_inicio();
            } else {
                switch ($_GET['cmd']) {
                    case 'inicio':
                        show_inicio();
                        break;
                    case 'mostrar_cancion':
                        show_cancion();
                        break;
                }
            }
        } else {
            // Peticiones a traves de POST
            if (isset($_POST['buscar_cancion'])) {
                show_inicio();
                show_lista_canciones();
            }else if (isset($_POST['hacer_login'])) {
                if (login_valido()) {
                    show_administracion();
                }else {
                    show_login();
                }
            }
        }
    } else {
        show_error();
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