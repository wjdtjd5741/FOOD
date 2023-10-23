<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/h/newsign_main.css">
    <style>
        /* *{
            margin: 0;
            font-size: 0;
        } */
        header {
            /* border: 1px solid red; */
            height: 20vh;
        }
        main {
            /* border: 1px solid black; */
            display: flex;
            align-items: center;
            flex-direction: column;
        }
        /* main div{
            border: 1px solid salmon;
            height: 300px;
            width: 500px;
        }  */
        <%-- footer {
            /* border: 1px solid blue; */
            /* width: 100%; */
            height: 20vh; 
        } --%>
    </style>
</head>
<body>
<body>
	<header></header>
    <main>
        <section>
            <h1>레시pick!</h1>
            <div class="all_3">
                <div class="text">
                    <div class="id">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557062645764176/id_icon.png">
                       <input type="text" value="아이디">
                    </div>
                    <div class="password">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557097999552612/password_icon.png">
                      <input type="text" value="비밀번호"> 
                    </div>
                    <div class="email">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557086582653039/email_icon.png">
                       <input type="text" value="이메일">
                    </div>
                </div>
                <div class="essential">
                    <div>아이디: 필수 정보입니다.</div>
                    <div>비밀번호: 필수 정보입니다.</div>
                    <div>이메일:</div>
                </div>
                <div class="text">
                    <div class="name">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557062645764176/id_icon.png">
                       <input type="text" value="이름"> 
                    </div>
                    <div class="birth">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557204870414336/birth_icon.PNG">
                        <input type="text" value="생년월일 8자리">
                    </div>
                </div>
                <div class="gender">
                    <div class="gender_2">남자</div>
                    <div class="gender_2">여자</div>
                </div>
                <div class="text">
                    <div class="phone">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557116009881650/phone_icon.PNG">
                      <input type="text" value="전화번호">
                    </div>
                </div>
                <div class="essential">
                    <div>이름: 필수 정보입니다.</div>
                    <div>생년월일 8자리: 필수 정보입니다.</div>
                    <div>성별: 필수 정보입니다.</div>
                </div>
                <div class="join">
					<a href="login.jsp">회원가입</a>
				</div>
                <!-- href="login.html" -->
            </div>
        </section>
    </main>
        <script>
        newsign_inputbox();
        pick_gender();
        submit_newsign();

        function newsign_inputbox() {
            let input_text = document.querySelectorAll(".text > div");
            let show_text = document.querySelectorAll(".essential > div");
            for (let i = 0; i < input_text.length; i++) {
                input_text[i].addEventListener("focusin", function () {
                    if(input_text[i].querySelector("input").style.fontWeight != "900"){
                        input_text[i].querySelector("input").value = "";
                        input_text[i].querySelector("input").style.color = "orange";
                        input_text[i].querySelector("input").style.fontWeight = "900";
                        input_text[i].style.border = "2px solid orange";
                    }
                });
                input_text[i].addEventListener("focusout", function () {
                    if (input_text[i].querySelector("input").value == "") {
                        input_text[i].querySelector("input").value = show_text[i].innerText.split(":", 1);
                        input_text[i].querySelector("input").style.color = "rgb(128, 128, 128, 0.7)";
                        input_text[i].querySelector("input").style.fontWeight = "300";
                        if (i == 2)
                            input_text[i].style.border = "1.5px solid gray";
                        if (i != 2) {
                            show_text[i].style.display = "block";
                        }
                    } else {
                        input_text[i].style.border = "1.5px solid gray";
                        show_text[i].style.display = "none";
                    }
                });
            }
        }

        function pick_gender(){
            let gender_list = document.querySelectorAll(".gender > div");
            let boole = [];
            boole.length = gender_list.length;
            console.log(boole[0]);
            for(let i = 0 ; i<gender_list.length ;i++){
                gender_list[i].addEventListener("mouseover",function(){
                    gender_list[i].style.backgroundColor = "orange";
                    gender_list[i].style.color = "white";
                });
                gender_list[i].addEventListener("mouseout",function(){
                    if(boole[i] != "true"){
                        gender_list[i].style.backgroundColor = "white";
                        gender_list[i].style.color = "orange";
                    }
                });
                gender_list[i].addEventListener("click",function(){
                    if(boole[i] != "true"){
                        gender_list[i].style.backgroundColor = "orange";
                        gender_list[i].style.color = "white";
                        gender_list[i].style.borderRadius = "6px";
                        boole[i] = "true";
                    } else {
                        gender_list[i].style.backgroundColor = "white";
                        gender_list[i].style.color = "orange";
                        boole[i] = "false";
                    }
                });
            }
        }
    
        function submit_newsign(){
            document.querySelector(".join").addEventListener("click",function(){
                let ano;
                let ck_list = document.querySelectorAll(".essential > div");
                for(let i = 0 ; i<ck_list.length ;i++){
                    if(ck_list[i].style.color == "orange"){
                        console.log(i);
                    }
                }
            });
        }
    </script>
</body>
</html>