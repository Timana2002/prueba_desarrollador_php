<?php

include_once('../Model/employee.php');
include_once('../Connection/conexion.php');

$con = new employee();
echo $con->getAllEmployee();