<?php

include_once('Controller/admin.php');
include_once('Connection/conexion.php');

$controller = new admin();

if(!isset($_REQUEST['c'])){
    $controller->index();
}
else
{
    $action = $_REQUEST['c'];
    call_user_func(array($controller,$action));
}