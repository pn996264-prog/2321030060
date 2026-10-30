var danhSachPhim = [
    {
        id: 1,
        duongDanAnh:"1.avif",
        duongDanYoutube: "https://www.youtube.com/embed/oObNkL80CsU?si=NdUpoQ-ohP16Z3up" 
    },
    {
        id: 2,
        duongDanAnh:"2.avif",
        duongDanYoutube:"https://www.youtube.com/embed/Q8fheR6dk6M?si=9y5gENyRzdtNJ9o1" 
    },
    {
        id: 3,
        duongDanAnh:"3.avif",
        duongDanYoutube:"https://www.youtube.com/embed/aTc-6bX-b6Q?si=SKlc6-SVvoBqrVF6",
    },
    {
        id: 4,
        duongDanAnh:"4.avif",
        duongDanYoutube:"https://www.youtube.com/embed/obO7EPcMnUc?si=t4Y3Zgy19aaPHphV", 
    },
    {
        id: 5,
        duongDanAnh:"5.avif",
        duongDanYoutube:"https://www.youtube.com/embed/PnoQazueDEE?si=dIdUseKidVGUNJVJ",
    }
];

function chonPhim(id){
    for (let i = 0; i < danhSachPhim.length; i++){
        if(danhSachPhim[i].id == id){
            document.getElementsByClassName("banner-img")[0].src = danhSachPhim[i].duongDanYoutube;
        }
    }
}