<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<style>
        @font-face {
            font-family: 'yg-jalnan';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        * {
            margin: 0;
            font-size: 0;
        }
        .logo {
            margin-top: 15%;
        }
        body {
            height: 100%;
        }
        .right {
            /* background-color: #f9fbfc; */
            /* margin-top: 10%; */
            /* margin-left: 5%; */
            /* border: 3px solid rgb(230, 142, 34); */
            width: 68%;
            height: 100%;
            /* border-radius: 2%; */
            /* border: 1px solid red; */
            display: inline-block;
        }

        .all_0 {
            width: 100%;
            height: 900px;
            /* border: 1px solid red; */
            display: flex;
            justify-content: center;
        }

        .all_1 {
            /* border: 1px solid green; */
            /* display: flex; */
            width: 100%;
            height: 100%;
        }

        .hi {
            margin-top: 30px;
            height: 40px;
            font-size: 25px;
            font-weight: bold;
            white-space: nowrap;
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .my_0 {
            margin-top: 80px;
            margin-left: 40px;
            font-size: 25px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .my_1,
        .notice {
            margin-left: 40px;
            font-size: 20px;
            margin-top: 25px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .left hr {
            width: 70%;
        }

        .right hr {
     	    margin-left: 5%;
            width: 80%;
        }

        .left {
            padding-left: 2%;
            z-index: 1;
            box-shadow: 5px 1px 8px 0px rgba(0,0,0,.06);
            display: inline-block;
            /* border: 1px solid red; */
            width: 30%;
            vertical-align: top;
            height: 100%;
        }

        /* .top_box {
            border: 3px solid rgb(230, 142, 34);
            padding-left: 4%;
            margin-left: 3%;
            padding-top: 15px;
            padding-bottom: 15px;
            border-radius: 10px;
            width: 90%;
            height: 350px;
        } */

        /* .right_bord {
            height: auto;
            width: 88%;
            margin-top: 50px;
            border: 3px solid orange;
            border-radius: 10px;
        } */

        .top_box>div {
            font-size: 20px;
            display: inline-block;
        }
        .top_bottom_box {
            border-radius: 2%;
            margin-left: 10%;
            border: 2px solid orange;
            margin-top: 13%;
            width: 80%;
            height: 650px;
        }

        /* .right {
            margin-left: 5%;
            display: inline-block;
            border: 1px solid red;
            width: 60%;
            height: 600px;
        } */

        .left_right {
            /* margin-top: 60px; */
            /* border: 1px solid red; */
            width: 100%;
            height: 100%;
        }

        .write_name,
        .write_date {
            margin-left: 10%;
            font-size: 18px;
        }

        .write_date {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .write_name {
            margin-top: 30px;
        }

        .logo a{
            font-size: 25px;
            font-family: 'yg-jalnan';
            color: orange;
            width: 23%;
            text-decoration: none;
            cursor: pointer;
        }

        @media(max-width:800px) {
            .left>div {
                font-size: 15px;
            }

            .top_box>div {
                font-size: 15px;
            }

            .hi>div {
                font-size: 18px;
            }
        }
        .all_box hr {
    width: 80%;
}

.top_box ,.bottom_box{
    margin-top: 15px;
    margin-left: 5%;
    /* border: 3px solid rgb(230, 142, 34); */
    /* padding-left: 4%; */
    /* margin-left: 3%; */
    /* padding-top: 15px; */
    /* padding-bottom: 15px; */
    border-radius: 10px;
    width: 90%;
    /* height: 300px; */
    padding: 0 15px 15px 15px;
}

.top_box>div {
    font-size: 20px;
    display: inline-block;
}

.mypage_line{
    width: 100%;
    margin-top: 15px;
}
.mypage_line > div{
    display: inline-block;
}

/* .information_id_2,
.information_password_2,
.information_birth_2,
.information_gender_2 {
    margin-left: 10%;
    width: 28%;
} */

/* .information_img {
    width: 30%;
    margin-left: 4%;
} */

/* .information_name {
    margin-bottom: 30px;
} */
.fix_uname {
	font-size: 17px;
}

.information_title {
/*	font-weight: bold;*/
    font-size: 25px;
    /* margin-bottom: 20px; */
}

.information_id,
.information_password,
.information_birth {
    /* margin-bottom: 5px; */
}

/* .information_title,
.information_id,
.information_password,
.information_birth,
.information_gender {
    margin-top: 10px;
    width: 20%;
    text-align: center;
    white-space: nowrap;
} */

.mypage_icon {
    /* margin-left: 2%; */
    width: 60px;
    height: 50px;
}
.information_name{
    /* line-height: 50px; */
    vertical-align: top;
}
.my_1, .notice, .out, .btns_hover {
    cursor: pointer;
}
.bottom_box {
    /* border: 3px solid rgb(230, 142, 34); */
    border-radius: 10px;
    width: 90%;
    margin-top: 7%;
    /* height: 180px; */
    /* padding-left: 4%; */
    /* margin-left: 3%;
    margin-top: 20px; */
    /* padding-top: 20px; */
    border-radius: 10px;
}

.bottom_box>div {
    font-size: 15px;
    display: inline-block;
}

.all_box {
    /* margin-left: 20%; */
    display: inline-block;
    /* border: 1px solid red; */
    width: 60%;
    height: 600px;
}

.information_title_2 {
/*	font-weight: bold;*/
    font-size: 25px;
    /* margin-bottom: 30px; */
}

.information_email_2,
.information_phone_2 {
    /* margin-bottom: 10px;
    margin-left: 10%; */
    width: 30%;
}

.information_phone {
    /* margin-top: 10px; */
}

.information_phone_2 {
    white-space: nowrap;
}
.text_head{
    width: 100px;
    margin-left: 5%;
    font-size: 18px;
}
.text_d{
    border: none;
    height: 20px;
    resize: none;
    vertical-align: middle;
    font-size: 15px;
}
.text_d, .text_head{
    /* font-size: 15px; */
}
.information_phone,
.information_email {
    /* width: 18%; */
    /* text-align: center; */
    white-space: nowrap;
}

.btns_hover {
    /* border: 1px solid rgb(228, 226, 226); */
    /* padding: 0.6%; */
    /* background-color: gray; */
    background-color: rgb(228, 226, 226);
    color: black;
    font-size: 14px;
    /* margin-left: 30%; */
    margin-top: 5%;
    cursor: pointer;
    float: right;
    width: 40px;
    height: 25px;
    border: none;
    text-align: center;
    border-radius: 5px;
}

.top_box div:nth-child(2) {
    /* border: 1px solid rgb(228, 226, 226); */
    /* padding: 0.6%; */
    /* background-color: rgb(228, 226, 226); */
    /* font-size: 13px; */
    /* margin-left: 66.5%; */
}

.top_box div:nth-child(6),
.top_box div:nth-child(10),
.top_box div:nth-child(15),
.top_box div:nth-child(20),
.top_box div:nth-child(25) {
    /* font-size: 13px; */
     /* white-space: nowrap; */
    /* text-align: center; */
    /* width: 30px; */
    /* margin-left: 31% */
}

.bottom_box div:nth-child(5),
.bottom_box div:nth-child(10) {
    /* font-size: 13px; */
    white-space: nowrap;
    /* text-align: center; */
    width: 5%;
    /* margin-left: 31% */
}
.out{
	margin-top: 80px;
	margin-right: 3%;
    font-size: 15px;
    float: right;
    border: none;
    cursor: pointer;
/*     width: 65px; */
    height: 30px;
    line-height: 30px;
    text-align: center;
    background-color: rgb(228, 226, 226);
    border-radius: 5px;
}

@media(max-width:800px) {
    .top_box>div {
        font-size: 15px;
    }

    .bottom_box>div {
        font-size: 13px;
    }

    .top_box div:nth-child(6),
    .top_box div:nth-child(10),
    .top_box div:nth-child(15),
    .top_box div:nth-child(20),
    .top_box div:nth-child(25),
    .bottom_box div:nth-child(5),
    .bottom_box div:nth-child(10) {
        width: 5%;
        font-size: 10px;
    }

}
* {
    margin: 0;
    font-size: 0;
}


.right_bord {
	margin-left : 10%;
    height: 600px;
    width: 80%;
    margin-top: 13%;
    border: 3px solid orange;
    border-radius: 10px;
}

.ggim {
    /* border: 1px solid orange; */
    font-weight: bold;
    margin-left: 40px;
    margin-top: 35px;
    font-size: 20px;
}

.recipe {
    margin-top: 60px;
    margin-left: 12%;
    /* margin-right: 7%; */
    width: 250px;
    height: 250px;
    /* border: 1px solid orange; */
    display: inline-block;
    font-size: 17px;
    height: 300px;
}

.recipe>div {
    font-size: 16px;
    width: 100%;
}

.recipe>img {
    width: 250px;
    height: 80%;
    background-size: contain;
}


.order {
    width: 30px;
    height: 25px;
    border: none;
    font-size: 15px;
    background-color: rgb(220, 218, 218);
    cursor: pointer;
}

@media (max-width:1070px) and (min-width:900px) {
    .all {
        display: flex;
        /* border: 1px solid red; */
    }

    .left {
        display: inline-block;
        /* border: 1px solid red; */
        width: 25%;
        vertical-align: top;
        height: 600px;
    }

    .recipe {
        margin-top: 60px;
        margin-left: 10%;
        /* margin-right: 25%; */
        width: 210px;
        height: 250px;
        /* border: 1px solid orange; */
        display: inline-block;
        font-size: 17px;
        height: 300px;
    }

    .right {

        width: 75%;
        /* border: 1px solid red; */
        display: inline-block;
    }

    .right_bord {
        height: auto;
        width: 93%;
        /* margin-left: 100px; */
        /* margin-top: 50px; */
        border: 3px solid orange;
        border-radius: 10px;
    }

    .ggim {
        /* border: 1px solid orange; */
        font-weight: bold;
        margin-left: 20px;
        margin-top: 30px;
        font-size: 20px;
    }


    .recipe>div {
        font-size: 16px;
        width: 100%;
    }

    .recipe>img {
        width: 220px;
        height: 200px;
        background-size: contain;
    }
    

    
}

@media (max-width:650px) {
    .recipe {
        margin-top: 60px;
        width: 160px;
        height: 200px;
        margin-left: 13%;
        /* border: 1px solid orange; */
        display: inline-block;
        font-size: 17px;

    }

    .recipe>div {
        font-size: 16px;
        width: 100%;
    }

    .recipe>img {
        width: 150px;
        height: 150px;
        background-size: contain;
    }

    .right {
        width: 50%;
        /* border: 1px solid red; */
        display: inline-block;
    }

    .right_bord {
        height: auto;
        width: 80%;
        margin-left: 100px;

        border: 3px solid orange;
        border-radius: 10px;
    }

    .ggim {
        /* border: 1px solid orange; */
        font-weight: bold;
        margin-left: 20px;
        margin-top: 30px;
        font-size: 20px;
    }
}

@media (max-width:900px) and (min-width:650px) {
    .all {
        display: flex;
        /* border: 1px solid red; */
    }

    .recipe {
        margin-top: 60px;
        width: 180px;
        height: 200px;
        margin-left: 7%;
        /* border: 1px solid orange; */
        display: inline-block;
        font-size: 17px;

    }

    .recipe>div {
        font-size: 16px;
        width: 100%;
    }

    .recipe>img {
        width: 100%;
        height: 150px;
        background-size: contain;
    }

    .right {

        width: 70%;
        /* border: 1px solid red; */
        display: inline-block;
    }

    .right_bord {
        height: auto;
        width: 100%;
        /* margin-left: 20px; */
        border: 3px solid orange;
        border-radius: 10px;
    }

    .ggim {
        /* border: 1px solid orange; */
        font-weight: bold;
        margin-left: 20px;
        margin-top: 30px;
        font-size: 20px;
    }

    .left {
        /* padding-top: 10%; */
        display: inline-block;
        width: 25%;
        height: 1000px;
        /* border: 1px solid red; */
    }

    /* .left>div:nth-child(5) {
        color: orange;
    }  */

    .information1 {
        white-space: nowrap;
        margin-top: 20px;
        /* margin-left: 50px; */
        margin-bottom: 20px;
        font-size: 14px;
        font-weight: bold;
        width: 100%;
        height: 40px;
    }

    .information {
        white-space: nowrap;
        margin-right: 0;
        margin-top: 20px;
        /* margin-left: 50px; */
        margin-bottom: 20px;
        font-size: 15px;
        font-weight: bold;
        width: 50%;
        height: 40px;
    }
}
* {
    margin: 0;
    font-size: 0;
}

.all_0 {
    /* border: 1px solid red; */

    display: flex;
    justify-content: center;
}

.all_1 {
    /* border: 1px solid green; */
    /* display: flex; */
    width: 90%;
}

.box hr {
    width: 80%;
}

a.recipe_detail {
	color: black;
	text-decoration: none;
}

.write_box {
	margin-left : 10%;
    height: 600px;
    width: 80%;
    margin-top: 13%;
    border: 3px solid rgb(230, 142, 34);
    padding-left: 4%;
    padding-top: 15px;
    padding-bottom: 15px;
    border-radius: 10px;
}

.write_box>div {
    font-size: 20px;
    display: inline-block;
}

.box {
    margin-left: 20%;
    display: inline-block;
    /* border: 1px solid red; */
    width: 60%;
    height: 600px;
}

.write_title {
	font-weight: bold;
    margin-left: 5%;
    font-size: 25px;
    margin-top: 3%;
    margin-bottom: 5%;

}

.write_name,
.write_date {
    margin-left: 10%;
}

.write_date {
    margin-top: 10px;
    margin-bottom: 10px;
    font-size: 15px;
}

.write_name {
	font-weight: bold;
    margin-top: 30px;
    font-size: 19px;
}

.order_all {
    margin-left: 350%;
    margin-top: 80px;
    display: flex;
    width: 100%;
    margin-top: 40%;
    font-size: 18px;
}

.order {
    width: 30px;
    height: 25px;
    border: none;
    font-size: 15px;
    background-color: rgb(220, 218, 218);
    cursor: pointer;
}

.order_all > a {
	color: black;
	text-decoration: none;
    font-size: 18px;
    margin: 2%;
}
    
strong {
    font-size: 18px;
}

@media(max-width:800px) {
    .write_box>div {
        font-size: 15px;

    }
}
    </style>
</head>
<body>

	<div class="all_0">
		<div class="all_1">
			 <div class="left_right">
                <div class="left">
					<div class = "logo"><a href="main">레시pick!</a></div>
				<div class = "hi">
					안녕하세요
					${memberdto.rname }
					님 !
				</div>
					<div class="my_0">MY</div>
                    <hr>
                    <div class="my_1">회원정보</div>
                    <div class="my_1">찜한 레시피</div>
                    <div class="my_1">나의 게시물</div>
                    <div class="my_0">고객센터</div>
                    <hr>
                    <div class="notice">공지사항</div>
                </div>
                <div class="right"></div>
			</div>
		</div>
	</div>
	<c:if test="${pagenumber == null}">
		<script>
		function return_num(){
			return 0;	
		}
		</script>
	</c:if>
	<c:if test="${pagenumber != null}">
		<script>
		function return_num(){
			return 2;	
		}
		</script>
	</c:if>
	<script>
		
	    function toggleEdit(btn) {
	        let textArea = document.querySelectorAll("textarea");
	        for(let i = 0 ;i<textArea.length ;i++){
		        if (textArea[i].disabled) {
		            textArea[i].disabled = false;
		            btn.innerHTML = "확인";
		            
		        } else {
		            textArea[i].disabled = true;
		            btn.innerHTML = "수정";
		        }
	        }
	    }
	    
		show_contents();
		exchange_contents();
		const xhr = new XMLHttpRequest();
		
		
	    // 2번 페이지를 누르면
	    // 가는 곳은 mypage로 가는데
	    // 2번 페이지를 가지고 가서
	    // jsp에 전달 해주고
	    // 아작스로 2페이지 열기
		function load_contents(i) {
			xhr.open("GET", `mypagesection?pageNum=${pagenumber}&page=\${i}`);
			xhr.send();
			console.log(1)
		}
		
		function show_contents() {
			window.addEventListener("load", function() {
				console.log(1)                                   
				let i = return_num();
				load_contents(i);
				xhr.onload = function() {
					let text = xhr.responseText;
					// console.log(text)
					let htmlDom = new DOMParser().parseFromString(text,
							"text/html");
					// console.log(htmlDom)
					document.querySelector(".right").innerHTML = htmlDom.querySelector("body > div").innerHTML;
					btns_hover()
				}
			});
		}
		
		function exchange_contents() {
			let my = document.querySelectorAll(".my_1")
			for (let i = 0; i < my.length; i++) {
				my[i].addEventListener("click", function() {
					load_contents(i);
					xhr.onload = function() {
						let text = xhr.responseText;
						// console.log(text)
						let htmlDom = new DOMParser().parseFromString(text,
								"text/html");
						// console.log("dd", htmlDom.querySelector("body > div").innerHTML)
						document.querySelector(".right").innerHTML = htmlDom.querySelector("body > div").innerHTML;
					}
				})
			}
		}
		
	    function confirmMemberOut() {
	        if (confirm("정말로 회원탈퇴 하시겠습니까?")) {
	            // 기본 동작 방지
	            event.preventDefault();
	            
	            // 회원탈퇴 페이지로 이동
	            window.location.href = 'memberout';
	        }
	    }
	    
	    
	</script>
	<script type="text/javascript" src="resources/assets/js/mypage_clickEvent.js"></script>
	<script type="text/javascript" src="resources/assets/js/btns_hover.js"></script>