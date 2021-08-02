<?php 
    $son = 100;
    $i = 0;
    $count = 0;
    while ($i <= $son) {
        $i++;
        $count = 0;
       while($son % $i == 0){
        $count++;
       }
       if($count == 2){
        echo  $i;
       }
    }
 ?>