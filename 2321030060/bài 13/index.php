<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
        session_start();
        if(!isset($_SESSION['dangNhapThanhCong']) && !$_SESSION['dangNhapThanhCong'] == "sucses"){
            header('location: dangnhap.php');
        }
    ?>
    <nav>
        <ul>
            <li><a href="index.php?trang=taikhoan">Tài khoản</a></li>
            <li><a href="index.php?trang=phim">Phim</a></li>
            <li><a href="index.php?trang=theloai">Thể loại</a></li>
           <li><a href="index.php?trang=dangxuat">Đăng xuất</a></li>
        </ul>
    </nav>
    <?php
        if(isset($_GET['trang'])){
            switch($_GET['trang']){
                case "taikhoan":
                    include("taikhoan.php");
                    break;
                case "phim":
                    include("phim.php");
                    break;
                case "theloai":
                    include("theloai.php");
                    break;
                case "dangxuat":
                    session_destroy();
                    header('location: dangnhap.php');
                    break;
            } 
        }
    ?>
</body>
</html>