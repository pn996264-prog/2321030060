<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body> 
    <?php
    //Code php viết ở đây
    echo "Hello World <br>"; 

    //Biến $tên biến = giá trị
    $hoTen = "Hoai Phuong";
    $tuoi = 21;

    //Nối chuỗi
    echo $hoTen . " " . $tuoi . " tuổi" . "<br>";

    $soThuNhat = 10;
    $soThuHai = 5;

    //+ - * / %
    $ketQua = $soThuNhat + $soThuHai;
    echo $ketQua . "<br>";

    //+=, -=, *=, /=, %=
    $soThuNhat += $soThuHai;
    echo $soThuNhat . "<br>";

    $diem = 5;
    if($diem < 4){
        echo "Trượt môn!";
    }
    else{
        echo "Qua môn!";
    }
     echo "<br>";

    $diem = 5;
    if($diem < 4){
        echo "F";
    }
    elseif($diem >= 4 && $diem < 5){
        echo "D";
    }
    elseif($diem >= 5 && $diem < 7){
        echo "C";
    }
    elseif($diem >= 7 && $diem < 8){
        echo "B";
    }
    else{
        echo "A";
    }
    echo "<br>";

    //switch case
    $color = "blue";
    switch($color){
        case "red":
            echo "<br>";
            echo "IS RED";
            break;
        case "blue":
            echo "<br>";
            echo "IS BLUE";
            break;
        default:
            echo "<br>";
            echo "no color";
            break;
    }
    echo "<br>";

    //for
    for ($i = 0; $i < 10; $i++){
        echo $i . "<br>";
    }
?>
</body>
</html>