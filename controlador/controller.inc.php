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
                if (isset($_GET['admin'])) {
                    switch ($_GET['admin']) {
                        case 'login':
                        case 'logout':
                            show_loging();
                            break;
                    }
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
            } else if (isset($_POST['hacer_login'])) {
                if (login_valido($_POST['input_login'])) {
                    show_administracion();
                } else {
                    show_loging();
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


?>