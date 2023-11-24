<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
footer{
    /* border: 1px solid green; */
    /* height: 200px; */
    width: 100%;
}
@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body {
    margin: 0;
    height: 100%;
}
.footer {
    /* border: 1px solid red; */
    width: 100%;
    background-color: rgb(230, 126, 34);
    color: white;
    height: 200px;
}

.footer_box {
    /* border: 1px solid black; */
    margin-top: 30px;
    margin-left: 60px;
    padding-top: 20px;
}
.footer_box div:nth-child(n+2){
    font-size: 16px;
}

.logo {
    /* border: 1px solid blue; */
    color: white;
    font-size: 40px;
    font-weight: 700;
    text-decoration: none;
    font-family: 'yg-jalnan';
    margin-bottom: 20px;
}

@media (max-width: 700px) {
    .footer{
        height: 150px;
    }
    .logo{
        font-size: 35px;
    }
    .footer_box div:nth-child(n+2){
        font-size: 12px;
    }
}
</style>
<footer class="footer">
    <div class="footer_box">
        <div class="logo">레시pick!</div>
        <div>(주) 레시pick!</div>
        <div>충청남도 천안시 동남구 대흥로 215,7층</div>
        <div>Copyright ⓒ recipick! co.,Ltd All Rights Reserved.</div>
    </div>
</footer>