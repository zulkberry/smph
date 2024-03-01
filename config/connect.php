<?php

$username = "root";
$password = "";
$host = 'localhost';

$is_connect = mysqli_connect($host, $username, $password);

if($is_connect){
    echo "horee!!";
} else{
    echo "oopss :((";
}