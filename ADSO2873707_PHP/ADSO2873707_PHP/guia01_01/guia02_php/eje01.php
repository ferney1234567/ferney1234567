<?php

$num = rand(1, 100);

if ($num >= 1 && $num <= 10) {
    echo "el numero tiene una cifra";
    } elseif ($num >= 10 && $num <= 100) {
        echo "el numero tiene dos cifras";
        } else {
            echo "el numero tiene tres cifras";
}
?>
