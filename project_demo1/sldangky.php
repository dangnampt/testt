<?php
session_start();
include'db.php';
if(isset($_POST['submit']) && $_POST['username'] != '' && $_POST['email'] != '' && $_POST['password'] != '' && $_POST['repassword'] != ''){
// thực hiện sử lý khi người dùng bấm nút đăng ký và điền đầy đủ thông tin
$username = $_POST["username"];
$email = $_POST["email"];
$password = $_POST["password"];
$repassword = $_POST["repassword"];
$lever = 1;
if($password != $repassword) {
    $_SESSION["thongbao"] = "password nhập lại không giống password";
    header("location:dangky.php");
}
    $sql = "SELECT * FROM users where username ='$username'";
    $old = mysqli_query($conn,$sql);
    $password = md5($password);
    if(mysqli_num_rows($old) > 0 ){
    $_SESSION["thongbao"] = "tên username đã tồn tại !";
        header("location:dangky.php");
    }
    $sql =" INSERT INTO users (username,email,password,lever) value ('$username','$email','$password','$lever') ";
    mysqli_query($conn,$sql);
    echo "đẵ đăng ký thành công";
}else{
    $_SESSION["thongbao"] = "vui lòng nhập đầy đủ thông tin .";
    header("location:dangky.php");
    }

?>