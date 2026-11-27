<?php
    include('connect.php');
    if(isset($_POST['tenDangNhap']) && isset($_POST['matKhau'])){
        $tenDangNhap = $_POST['tenDangNhap'];
        $matKhau = $_POST['matKhau'];

        $sql = "SELECT * FROM `nguoi_dung` WHERE `ten_dang_nhap` = '$tenDangNhap' and `mat_khau`= '$matKhau'";
        $ketQua = mysqli_query($conn, $sql);
        
        if(mysqli_num_rows($ketQua) > 0){
            //echo "Đăng nhập thành công";
            session_start();
            $_SESSION['dangNhapThanhCong'] = "sucses";
            header('location: index.php');
        } else {
            echo "Tên đăng nhập hoặc mật khẩu không chính xác";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
</head>
<body>
    <h1>Đăng nhập</h1>
    <form action="dangnhap.php" method="POST">
        <div>
            <p>Tên đăng nhập</p>
            <input name="tenDangNhap" type="text">
        </div>
        <div>
            <p>Mật khẩu</p>
            <input name="matKhau" type="password">
        </div>
        <div>
           <button>Đăng nhập</button>
        </div>
    </form>
</body>
</html>