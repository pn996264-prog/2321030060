var danhSachVid = [
    {
        id: 1,
        ten:"3 phải 6 đừng",
        duongDanAnh:"bh1.avif",
        duongDanYoutube: "https://www.youtube.com/embed/INJuqE_34eQ?si=9istlxO3RfehnWXw",

    },
    {
        id: 2,
        ten:"Anh vẫn ở đây",
        duongDanAnh:"bh2.avif",
        duongDanYoutube:"https://www.youtube.com/embed/BrEjVCWVzCo?si=CmW3gHB8iwDE7RK9",
    },
    {
        id: 3,
        ten:"Thế giới của anh",
        duongDanAnh:"bh3.avif",
        duongDanYoutube:"https://www.youtube.com/embed/l_uzEREOKfo?si=nfThc_16yPItmoFz",
    },
    {
        id: 4,
        ten:"MRT",
        duongDanAnh:"bh4.avif",
        duongDanYoutube:"https://www.youtube.com/embed/cwlToxaWuL8?si=P9OfXC1WHj-E9IN_",
    } 
];

function chonBai(id){
    for (let i = 0; i < danhSachVid.length; i++){
        if(danhSachVid[i].id == id){
            document.getElementsByClassName("video")[0].src = danhSachVid[i].duongDanYoutube;
        }
    }
}