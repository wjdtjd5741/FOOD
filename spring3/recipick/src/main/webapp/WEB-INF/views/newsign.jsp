<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
*{
    margin: 0;
    font-size: 0;
}

.error2, .error1 {
	margin-top: 3%;
	font-size: 18px;
	color : red;
	font-weight: bold;
	text-align: center;
}
@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.text{
    /* border: 1px solid red; */
    margin: 15px 0;
}
.text > div {
    border: 1px solid rgb(128, 128, 128, 0.7);
    border-radius: 5px;
    width: 350px;
    height: 45px;
    margin: 7px 10px;
    /* margin-left: 70px; */
}

.phone img, .birth img, .name img, .email img, .id img, .password img {
    margin-top: 10px;
    margin-left: 10px;
    width: 25px;
    height: 25px;
    /* display: inline-block; */
}
#submit{
    margin-left: 10px;
    width: 350px;
    height: 45px;
    background-color: rgb(230, 142, 34);
    color: white;
    font-size: 18px;
    border-radius: 5px;
    margin-top: 10px;
    text-align: center;
    line-height: 45px;
    margin-bottom: 10px;
    /* a占쎄묶域뱄옙 �빊遺쏙옙 */
    display: inline-block;
    text-decoration: none;
    cursor: pointer;
    border: 1px solid orange;
}
.inputbox {
    /* display: inline-block; */
    border: none;
    font-size: 15px;
    line-height: 30px;
    margin-left: 10px;
    width: 300px;
    height: 42px;
    vertical-align:top;
    color: rgb(128, 128, 128, 0.7);
    font-weight: 300;
}
input:focus{
    outline: none;
}
.logo {
    color: rgb(230, 126, 34);
    font-size: 35px;
    font-weight: 700;
    display: inline-block;
    text-decoration: none;
    font-family: 'yg-jalnan';
    margin-left: 28%;
    margin-bottom: 10px;
}

.all_3 {
    /* border: 1px solid green; */
    /* margin-top: 40px; */
}

.essential > div{
    font-size: 12px;
    margin-left: 10px;
    color: rgb(230, 142, 34);
    text-decoration: underline;
    font-weight: 900;
    display: none;
}
.gender {
    width: 350px;
    height: 45px;
    margin-left: 10px;
    border-radius: 5px;
    background-color: rgb(249, 226, 183);
}
.gender_2 {
    display: inline-block;
   margin-left: 30px;
   margin-top: 5px;
   width: 130px;
   height: 35px;
   background-color: white;
   border-radius: 5px;
   color:rgb(230, 142, 34);
   font-weight: bold;
   font-size: 16px;
   text-align: center;
   line-height: 35px;
}
.radiogen {
    display: none;
}
.radiogen + span {
    background-color:white;
    text-align: center;
    cursor: pointer;
    font-size: 16px;
    display: inline-block;
    width: 130px;
    height: 35px;
}
 
.radiogen:checked + span {
    background-color:rgb(230, 142, 34);
    color: #ffffff;
}
/* js�몴占� 占쎌맄占쎈립 css �빊遺쏙옙 */
.essential > div{
    /* display: none; */
}

.login > a {
	font-weight: bold;
	text-decoration: none;
	color: gray;
	margin-left: 57%;
	font-size: 15px;
}
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
</style>    
    
<body>
<form action="newsignsubmit" method="get">
	<header></header>
    <main>
  <!--   <script>
    alert("로그아웃 되었습니다.")
    </script> -->
        <section>
            <a class="logo" href="main">레시pick!</a>
            <div class="all_3">
                <div class="text">
                    <div class="id">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557062645764176/id_icon.png">
                       <input class="inputbox" type="text" name="uname" placeholder="아이디"> 
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
                       <input class="inputbox" type="text" name="rname" placeholder="이름">
                    </div>
                    <div class="birth">
                        <img
							src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557204870414336/birth_icon.PNG">
                        <input class="inputbox" type="text" name="birth" placeholder="생년월일 8자리">
                    </div>
                </div>
                <div class="gender">
                
					<label class="gender_2">
					    <input class="radiogen" type="radio" name="gender" value="남자">
					    <span>남자</span>
					</label>
					 
					<label class="gender_2">
					    <input class="radiogen" type="radio" name="gender" value="여자">
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
                 <div class="error2"> ${error2 } </div>
                 <div class="error1"> ${error1 } </div>
                <div class="join">
					<input id="submit" type="submit" value="회원가입">
				</div>
			<div class="login">
                <a href="login">로그인 페이지로 이동</a>
            </div>
          
                <!-- href="login.html" -->
            </div>
        </section>
    </main>
  </form>
</body>
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