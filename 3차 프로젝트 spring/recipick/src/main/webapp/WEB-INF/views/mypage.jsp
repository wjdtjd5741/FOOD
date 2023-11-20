<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </style>
</head>
<body>

	<div class="all_0">
		<div class="all_1">
			 <div class="left_right">
                <div class="left">
					<div class = "logo"><a href="mainpage.jsp">레시pick!</a></div>
				<div class = "hi">
					안녕하세요
<%-- 				<%= mm.getName() %> --%>
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

		function load_contents(i) {
			xhr.open("GET", `mypagesection?page=\${i}`);
			xhr.send();
			console.log(1)
		}
		function show_contents() {
			window.addEventListener("load", function() {
				console.log(1)
				let i = 0;
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
	</script>
	<script type="text/javascript" src="assets/js/mypage_clickEvent.js"></script>
	<script type="text/javascript" src="assets/js/btns_hover.js"></script>