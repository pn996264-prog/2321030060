-- câu lệnh tạo database 
-- create database + tên db;

create database if not exists wnetflix;

-- nguoi_dung
   id int; --key
   ten_dang_nhap varchar(50);
   mat_khau varchar(30);
   email varchar(50);
   so_dien_thoai varchar(10);
   dao_dien_id int;
-- phim
   id int; --key
   ten_phim varchar(100);
   thoi_luong int;
   gioi_thieu varchar(255);
   dao_dien_id int;
-- phim_dien_vien
   id int; --key
   phim_id int;
   dien_vien_id int;
-- phim_the_loai
   id int; --key
   phim_id int;
   the_loai_id int;
-- dao_dien
   id int; --key
   ten_dao_dien varchar(50);
-- the_loai
   id int; --key
   ten_the_loai varchar(100);
-- dien_vien
   id int; --key
   ten_dien_vien varchar(50);
-- quoc_gia
   id int; --key
   ten_quoc_gia varchar(50);







-- Câu lệnh tạo database
-- create database + tên db

-- create database if not exists wnetflix;

-- nguoi_dung
create table if not exists nguoi_dung (
    id int auto_increment primary key,
    ten_dang_nhap varchar(50) not null,
    mat_khau varchar(30) not null,
    email varchar(50) not null,
    so_dien_thoai varchar(10) not null
);

-- phim
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);

-- phim_dien_vien
create table if not exists phim_dien_vien (
    id int auto_increment primary key,
    phim_id int not null,
    dien_vien_id int not null
);

-- phim_the_loai
create table if not exists phim_the_loai (
    id int auto_increment primary key,
    phim_id int not null,
    the_loai_id int not null
);
-- dao_dien
create table if not exists dao_dien (
    id int auto_increment primary key,
    ten_dao_dien varchar(50)
);
-- dien_vien
create table if not exists dien_vien (
    id int auto_increment primary key,
    ten_dien_vien varchar(50)
);

-- the_loai
create table if not exists the_loai (
    id int auto_increment primary key,
    ten_the_loai varchar(100)
);

-- quoc_gia
create table if not exists quoc_gia (
    id int auto_increment primary key,
    ten_quoc_gia varchar(50)
);





-- nguoi_dung
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('hphuong', 'p123', 'hphuong123@gmail.com', '0123456789');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('pthuy', 't456', 'pt456@gmail.com', '0246813579');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('tmaii', 'm789', 'tm789@gmail.com', '0135792468');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('hleo', 'h135', 'hl135@gmail.com', '0987654321');

-- dao_dien
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Lý Hải');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Đặng Thái Huyền');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Huỳnh Lập');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Trấn Thành');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Toni Dương Bảo Anh');

-- dien_vien
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('Quách Ngọc Ngoan');
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('Steven Nguyễn');
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('Cody Nam Võ');
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('Tín Nguyễn');
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('Tuấn Trần');

-- the_loai
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('hài');    
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('chính kịch');    
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('tình cảm');    
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('kinh dị');    
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('hành động');

-- quoc_gia
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('Việt Nam');
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('Thái Lan');
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('Nhật Bản');
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('Hàn Quốc');
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('Trung Quốc');

-- phim
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Trại Buôn Người', 120, 2026, 'hành động', 5);
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Thỏ Ơi', 120, 2026, 'chính kịch', 4);
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Nghỉ hè sợ nghỉ hưu', '120', '2026', 'hài', '3');
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Lật Mặt 7', '120', '2024', 'tình cảm', '1');
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Mưa Đỏ', '120', '2025', 'chính kịch-lịch sử-chiến tranh', '2');       

-- phim_the_loai
SELECT * FROM phim p
join phim_the_loai ptl
on p.id = ptl.phim_id
join the_loai tl
on ptl.the_loai_id = tl.id
where p.id = 5;

-- phim_dien_vien
SELECT * FROM phim p        
join phim_dien_vien pdv
on p.id = pdv.phim_id
join dien_vien dv
on pdv.dien_vien_id = dv.id
where p.id = 5; 



