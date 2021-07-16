<?php
  if (!(isset($_GET['a']) && isset($_GET['b']) && isset($_GET['c']))) {
    echo "a, b, c sonlarini kiriting...";
  } else {
    $a = $_GET['a'];
    $b = $_GET['b'];
    $c = $_GET['c'];

    $min = $a;

    if ($min > $b) {
      $min = $b;
    }
    
    if ($min > $c) {
      $min = $c;
    }

    echo "$a, $b, $c sonlarini eng kichigi: $min";
  }
?>