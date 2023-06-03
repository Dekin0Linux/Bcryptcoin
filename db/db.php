<?php
//
//    $server = 'localhost:3306';
//    $username = 'bcryptco_user';
//    $password = 'Linux@1995';
//    $dbname = 'bcryptco_db';

    $server = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'bcoin';

    $conn = mysqli_connect($server,$username,$password,$dbname);
    
if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}else{
//    echo "connected";
}

?>