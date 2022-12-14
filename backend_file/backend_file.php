<?php

$db = mysqli_connect('localhost','root','','users');
if (!$db){
    echo "Data Base Connection Faild";
}



$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM login WHERE username = '".$username."' AND password = '".$password."' ";

$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);

if($count == 1){
    echo json_decode("Error");
}else {
    $insert = "INSERT INTO login(username,password)VALUE('".$username."','".$password."')";

    $query = mysqli_query($db,$insert);
    if ($query) {
        echo json_encode("Success");
    }
}


?>