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
<form action="NewsignServlet" method="get">
	<header></header>
    <main>
  <!--   <script>
    alert("로그아웃 되었습니다.")
    </script> -->
        <section>
            <a class="logo" href="mainpage.jsp">레시pick!</a>
            <div class="all_3">
                <div class="text">
                    <div class="id">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557062645764176/id_icon.png">
                       <input class="inputbox" type="text" name="id" placeholder="아이디"> 
                    </div>
                    <div class="password">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557097999552612/password_icon.png">
                      <input class="inputbox" type="password" name="pw" placeholder="비밀번호">
                    </div>
                    <div class="email">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557086582653039/email_icon.png">
                        <input class="inputbox email_1" type="text" name="email" placeholder="이메일">
                    </div>
                </div>
                <div class="essential">
                    <div>아이디: 필수 정보입니다.</div>
                    <div>비밀번호: 필수 정보입니다.</div>
                    <div class="email_2">이메일: 형식에 맞는 이메일 주소를 입력해 주세요.</div>
                </div>
                <div class="text">
                    <div class="name">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557062645764176/id_icon.png">
                       <input class="inputbox" type="text" name="name" placeholder="이름">
                    </div>
                    <div class="birth">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557204870414336/birth_icon.PNG">
                        <input class="inputbox" type="text" name="birth" placeholder="생년월일 8자리">
                    </div>
                </div>
                <div class="gender">
                
					<label class="gender_2">
					    <input class="radiogen" type="radio" name="gender" value="1">
					    <span>남자</span>
					</label>
					 
					<label class="gender_2">
					    <input class="radiogen" type="radio" name="gender" value="2">
					    <span>여자</span>
					</label>                
                </div>
                <div class="text">
                    <div class="phone">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557116009881650/phone_icon.PNG">
                       <input class="inputbox" type="text" name="phone" placeholder="연락처">
                    </div>
                </div>
                <div class="essential">
                    <div>이름: 필수 정보입니다.</div>
                    <div>생년월일 8자리: 필수 정보입니다.</div>
                    <div>연락처: 필수 정보입니다.</div>
                </div>
                <div class="join">
					<input id="submit" type="submit" value="회원가입">
				</div>
			<div class="login">
                <a href="login.jsp">로그인 페이지로 이동</a>
            </div>
                <!-- href="login.html" -->
            </div>
        </section>
    </main>
    </form>
        <script>
        emailck()
        function emailck(){
            document.querySelector(".email_1").addEventListener("focusout", function() {
                if(!document.querySelector(".email_1").value.includes("@")) {
                    document.querySelector(".email_2").style.display = "block"
                    document.querySelector("#submit").disabled = true
                } else {
                    document.querySelector(".email_2").style.display = "none"
                    document.querySelector("#submit").disabled = false
                }
            }) 
        }
        
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