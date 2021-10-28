<?php
session_start();
include'db.php';
if(isset($_POST["submit"]) && $_POST["username"] != "" && $_POST["password"] != "" ){
    $username = $_POST["username"];
    $password = $_POST["password"];
    $password = md5($password);

$sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";

$user = mysqli_query($conn,$sql);
    if(mysqli_num_rows($user) > 0 ){
        echo "bạn đã đăng nhập thành công";
    }else{
        echo "bạn nhập sai user hoặc password";
    }
}else{
    header("location:dangnhap.html");
}


?>