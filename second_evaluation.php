<?php

$myArray = array(1,2,2,4,5,6,7,8,8,8);

$arr = array_count_values($myArray);

arsort($arr);

$ocurrencia = reset($arr);
$consecutivos = key($arr);

echo "Número de repeticiones: ".$ocurrencia."<br>";
echo "Número que se repite: ". $consecutivos;