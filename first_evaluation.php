<?php

$n = 6;


if(!$n == 0){

    for($i = 1; $i <= $n; $i++){

        for($j = 0; $j <= $n; $j++){
            
            if($i-1 == $j OR $j == $n-$i){
            
                echo "X";
            }
            else
            {
                echo "_";
            }
            
        }
    
        echo "<br>";
    
    
    }

}
else
{
    echo "ERROR";
}





