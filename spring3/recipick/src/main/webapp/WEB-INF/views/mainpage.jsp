<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<style>
/* popup */
	.popup{
		position: fixed;
		top: 150px;
		left: 750px;
		z-index: 99;
		border: 3px solid white;
		border-radius: 10px;
	}
	.popuplocation{
		width: 300px;
		height: 200px;
		backgroind-color:red;
	}
	.popupbtn{
		width: 50px;
		height: 30px;
		font-size: 16px;
/* 		border-radius: 5px; */
		text-decoration: none;
		outline: none;
	}
	.popupcontents{
		width:300px;
		height:200px;	
		border-radius: 10px;
	}
	.popupcontents > img{
		width:300px;
		height:200px;
		border-radius: 10px;
	}
	.popupc{
		background-color: rgb(255, 230, 184);
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding: 0 0 0 10px;
		border-radius: 3px;
	}
	.popuptext{
		font-size: 16px;
		color: orange;
		font-weight: 900;
	}
/* mainpage */
	header{
    position: fixed;
}
main{
    /* border: 3px solid red; */
    display: flex;
    align-items: center;
    flex-direction: column;
}
nav{
    position: relative;
    z-index: 99;
}
.go_home{
    position: fixed;
    /* border: 1px solid black; */
    background-color: orange;
    width: 50px;
    height: 50px;
    bottom: 10px;
    right: 20px;
    border-radius: 10px;
}
.go_home > a{
   font-size: 16px;
   text-decoration: none;
   color: white;
   font-weight: 900;
   text-align: center;
   display: inline-block;
   width: 50px;
   height: 50px;
   line-height: 50px;
}
section{
    /* border: 2px solid blue; */
    width: 85%;
    position: relative;
}
section .main_top_img{
    /* margin-top: 115px; */
    /* border: 1px solid black; */
    width: 100%;
    height: 400px;
    position: absolute;
    transition: all 2s;
    top: 115px;
}
section > div:nth-child(n+3){
    /* border: 1px solid orange; */
    /* margin: 50px 0; */
    width: 100%;
    /* height: 300px; */
}
.main_bottom_img {
    height: 300px;
    font-size: 30px;
    display: inline-block;
    width: 100%;
    height: 400px;
    background-size: contain;
    margin-top: 50px;
    border-radius: 10px;
}
.main_top_img > img{
    position: absolute;
    width: 100%;
    height: 400px;
    background-size: cover;
    transition: all 2s;
    border-radius: 10px;
}
.main_top > .main_top_img:nth-child(n+2) img {
    opacity: 0;
}

.go_btn{
    line-height: 30px;
    border: 1px solid rgba(0, 0, 0, 0.1);
    background-color: rgba(0, 0, 0, 0.425);
    border-radius: 40px;
    position: absolute;
    width: 50px;
    height: 30px;
    top: 470px;
    left: 90px;
    z-index: 98;
    font-size: 11px;
    padding-left: 15px;
    color: white;
    font-weight: bold;
}
.back_btn{
    line-height: 30px;
    border: 1px solid rgba(0, 0, 0, 0.1);
    background-color: rgba(0, 0, 0, 0.425);
    border-radius: 40px;
    position: absolute;
    width: 50px;
    height: 30px;
    top: 470px;
    left: 20px;
    z-index: 98;
    font-size: 11px;
    padding-left: 15px;
    /* line-height: 30px; */
    color: white;
    font-weight: bold;
}
/* mainpage1 */
* {
    margin: 0px;
}
.main{
    margin-top: 500px;
}
.main2 {
    /* border: 1px solid red; */
    height: 500px;
    position: relative;
}
.h2 {
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    top: 10%;
}
.food{
    display: flex;
    position: absolute;
    justify-content: center;
    width: 100%;
    height: 400px;
    align-items: flex-end;
}
/* px�씠�븘�땶 %瑜� �씠�슜�빐�븿 */
.img{
    gap: 25px;
    display: flex;
    width: 100%;
    height: 230px;
    /* margin: 15px; */
    background: rgba(255, 174, 44, 0.45);
    border-radius: 10px;
}
/* px�씠�븘�땶 %瑜� �씠�슜�빐�븿 */
.img_div >img{
   border-radius: 5px;
    background-size: cover;
    /* margin:40%; */
    width: 100%;
    height: 160px;
    /* margin-left: 10px; */
    
}
/* px�씠�븘�땶 %瑜� �씠�슜�빐�븿 */
.img_div{
    cursor: pointer;
    flex-grow: 1;
    /* padding-left:3%; */
    margin-top:24px ;
    width: 20%;
    display: inline-block;
    height: 200px;
}
/* 媛뺤떊�쁺 �닔�젙�셿 */
.foodName{
    text-align: center;
    height: 40px;
    line-height: 40px;
    font-size: 17px;
    color: black;
    font-weight: 500;
}
/* 媛뺤떊�쁺 �닔�젙�셿 */
.butt1{
    font-size: 30px;
    background-color: orange;
    border-radius: 50%;
    color: white;
    /* border: 1px solid orangered; */
    position: absolute;
    right: -2%;
    bottom: 90px;
    width: 50px;
    height: 50px;
   
}
/* 媛뺤떊�쁺 �닔�젙�셿 */
.rigth{
    color: white;
    font-size: 16px;
    text-align: center;
    line-height: 50px;
    font-weight: bold;
    cursor: pointer;
    padding: 0 0 5px 3px;
}
.left{
   color: white;
    font-size: 16px;
    text-align: center;
    line-height: 50px;
    font-weight: bold;
    cursor: pointer;
    padding: 0 3px 5px 0;
}
.butt2{
    color: white;
    font-size: 30px;
    /* border: 1px solid orangered; */
    border-radius:50% ;
    /* border: 1px solid rgb(19, 3, 19); */
    background-color: orange;
    position: absolute;
    left: -2.5%;
    bottom: 90px;
    width: 50px;
    height: 50px;
}
/* mainpage2 */
.a11 {
    /* border: 1px solid red; */
    /* height: 1000px; */
    margin-bottom: 50px;
    position: relative;
}
.a11_2 {
    /* border: 1px solid green; */
    width: 100%;
    /* height: 800px; */
    /* position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%); */
}
.big_img1 img {
    width: 100%; 
    height: 350px; 
}
.big_img2 img {
    width: 100%; 
    height: 350px; 
}

.small_img1 img,.small_img1_1 img {
    width: 100%;
    /* margin-bottom: 200px; */
}

.small_img1 img,.small_img1_1 img, .small_img2 img {
    height: 170px;
}
.hashtags {
    font-size: 18px;
    display: inline-block;
    margin-left: 2%;
    margin-top: 20px;
    cursor: pointer;
}
.recommend_name {
    font-size: 22px;
    margin-left: 2%;
    margin-top: 10px;
    font-weight: bold;
}
.big_img1 {
    background-color: rgba(255, 174, 44, 0.45);
    /* border:1px solid red; */
    width: 48%; 
    height: 450px;
    display: inline-block;
    
    margin-right: -3.1%; 
}
.bot_img{
	position: relative;
}
.bot_text{
	color:  rgb(231, 130, 18);
	font-size: 45px;
	z-index: 99;
	position: absolute;
	top: 60px;
	left: 20px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 700;
}
.small_img1,.small_img1_1 {
    margin-left: 3%;
    /* border:1px solid red; */
    width: 22%;
    height: 200px;
    display: inline-block;
    /* margin-bottom: 300px; */
    vertical-align: top;
}

.small_name1 {
    margin-top: 8px;
    margin-left: 5px;
    font-size: 16px;
    /* margin-bottom: 200px; */
    font-weight: 600;
}
.small_img2 {
    margin-top: 50px;
    margin-right: 2%; 
    /* border:1px solid red; */
    width: 23%;
    height: 150px;
    display: inline-block;
}
.small_img2 > img {
    width: 100%;
}
.big_img2 {
    background-color: rgba(255, 174, 44, 0.45);
    margin-left: 53%;
    /* border:1px solid red; */
    width: 47.2%;
    height: 450px;
    display: inline-block;
    margin-top: -600px; 
    vertical-align: bottom;
    
}
.small_img1 {
    margin-left: 8%;
}
.recipick {
    /* border: 1px solid black; */
    margin-top: 50px;
    margin-bottom: 130px;
    padding-top: 20px;
    width: 100%;
    height: 720px;
    background: gainsboro;
    border-radius: 10px;
}
.recipick > div{
	border-radius: 5px;
}
.recipick > div > img{
	border-radius: 5px;
}
h2 {
    font-size: 25px;
    margin-top: 30px;
    text-align: center;
}

</style>
<body>
<%
	// popupBox 쿠키 있으면 그 값을 저장
	String popupBox = "on";
	Cookie[] css = request.getCookies();
	if(css != null){
		for(Cookie c : css){
			if(c.getName().equals("popupBox"))
				popupBox = c.getValue();
		}
	}
%>
	<main>
		<nav>
		<!-- popupBox의 값이 초기에 설정된 값일때만 팝업 보여줌 -->
 		<%
			if(popupBox.equals("on")){
		%>
			<div class="popup" > 
				<div class="popuplocation">
					<div class="popupcontents">
						<img src="https://cdn.pixabay.com/photo/2023/10/04/14/15/man-8293794_640.jpg">
					</div>	
				</div>
				<div class="popupc">
					<div class="popuptext">
					<input class="ckbox" type="checkbox" name="ck" value="1" >
					하루동안 보지 않기
					</div>
					<input class="popupbtn" type="button" value="닫기">
				</div>
			</div>
		<%
		} else{
		%>
			<div class="popupbtn" style="display:none"></div>
		<%
		}
		%>
			<%-- <%@ include file="mobile_console.jsp"%> --%>
			<div class="go_home">
				<a href="#">▲</a>
			</div>
		</nav>

		<section>
			<div class="go_btn">next &gt;</div>
			<div class="back_btn">&lt; prev</div>
			<div class="main_top">
			
			<!-- Recipick 서블릿에서 받아온 객체의 값을 출력 -->
<%-- 				<% 
					for(int i = 0 ;i<mpDTO.getTopImg().size() ;i++){
				%>	
					<div class="main_top_img">
					<img
						src="<%= mpDTO.getTopImg().get(i) %>">
					</div>
				<%
					}
				%>
--%>				
			</div>
			<div class="main">
				<div class="main2">
					<div class="h2">
						<h2>인기 레시피</h2>
					</div>
					<div class="food">
						<!-- %수정 완료 -->
						<div class="butt1">
							<div class="rigth">▶</div>
						</div>
						<div class="butt2">
							<div class="left">◀</div>
						</div>
						<div class="img">
						<c:forEach var="img" items="${recom_img}">
							<div class="img_div">
								<img class="favorite" src="resources/assets/imgs/${img.mainpic }.jpg" >
								<div class="foodName">${img.recipe_title }</div>
							</div>
							<div class="main_reciid" style="display: none">${img.recipe_id}</div>
						</c:forEach>
<%-- 						<% 
							for(int i = 0 ; i<mpDTO.getFavor().size() ;i++){
						%>
							<div class="img_div">
								<img class="favorite" src="<%= mpDTO.getFavor().get(i).get(0)%>" >
							<div class="foodName"><%= mpDTO.getFavor().get(i).get(1) %></div>
							</div>
						<%		
							}
						%>
--%>						
						</div>
					</div>
				</div>
			</div>
			</div>
			</div>
			</div>
			<div class="a11">
				<div class="a11_2">
					<h2>추천 레시피</h2>
					<div class="recipick">
						<div class="big_img1">
						
							<img src="<%-- <%= mpDTO.getRecom().get(0).get(0) %> --%>">
 							<% 
// 							String str = ""+mpDTO.getRecom().get(0).get(2);
// 							String[] hashs = str.split(",");
// 							for(int i = 0 ; i<hashs.length ;i++){
							%>
							<div class="hashtags">#A<%-- <%= hashs[i] %> --%></div>
							<% 	
// 							}
							%>
							<div class="recommend_name">aaa<%-- <%= mpDTO.getRecom().get(0).get(1) %> --%></div>

						</div>
						<div class="small_img1">
<%--						
							<img
								src="<%= mpDTO.getRecom().get(1).get(0) %>">
							<div class="small_name1"><%= mpDTO.getRecom().get(1).get(1) %></div>
						</div>
						<div class="small_img1_1">
							<img
								src="<%= mpDTO.getRecom().get(2).get(0) %>">
							<div class="small_name1"><%= mpDTO.getRecom().get(2).get(1) %></div>
						</div>
						<div class="small_img2">
							<img
								src="<%= mpDTO.getRecom().get(3).get(0) %>">
							<div class="small_name1"><%= mpDTO.getRecom().get(3).get(1) %></div>
						</div>
						<div class="small_img2">
						
							<img
								src="<%= mpDTO.getRecom().get(4).get(0) %>">
							<div class="small_name1"><%= mpDTO.getRecom().get(4).get(1) %></div>
						
						</div>
						<div class="big_img2">
						
							<img src="<%= mpDTO.getRecom().get(5).get(0) %>">
							<%
							String strA = ""+mpDTO.getRecom().get(5).get(2);
							String[] hashsA = strA.split(",");
							for(int i = 0 ; i<hashsA.length ;i++){
							%>
							<div class="hashtags">#<%= hashsA[i] %></div>
							<% 	
							}
							%>
							<div class="recommend_name"><%= mpDTO.getRecom().get(5).get(1) %></div>
--%>						 
						</div>
					</div>
				</div>
				<div class="bot_img">
				<img class="main_bottom_img" src="https://bing.com/th?id=OSGI.45664F972E5964996401559E75734050&h=168&w=268&c=1&p=0">
<%--				
				<img class="main_bottom_img" src="<%= mpDTO.getBottomImg() %>">
--%>				
				<div class="bot_text">Make yourself, Recipick</div>
				</div>
		</section>
	</main>
	<script>
	// 1. window
	// 2. div display
	go_recipepage();
    function go_recipepage(){
    	let menus = document.querySelectorAll(".img_div")
    	let ids = document.querySelectorAll(".main_reciid")
    	console.log(menus)
    	for(let i = 0 ; i<menus.length ;i++){
    		menus[i].addEventListener("click", function(){
        		window.location.href = "gorecipe?reciid="+ids[i].innerText;
    		})
    	}
    }

	popbox()
	function popbox(){
	 	document.querySelector(".popupbtn").addEventListener("click",function(){
			if(!document.querySelector(".ckbox").checked){
				document.querySelector(".popup").style.visibility = "hidden";
			} else
				window.location.href = "main?ck=1";
		})		
	} 

 	logout()
		function logout(){
			document.querySelector(".logout").addEventListener("click",function(){
				alert("로그아웃되었습니다");
				window.location.href = "logout";
			})
		}
	/* mainpage에 있는 해시태그 클릭시 searchHash 서블릿으로 이동 */
 	    let hashtags = document.querySelectorAll(".hashtags")
	    for(let i = 0 ; i<hashtags.length ;i++){
	        hashtags[i].addEventListener("click",function(){
	            let text = hashtags[i].innerText.substring(1);
	            window.location.href = "searchHash?data=" + text+"&order=0";
			/* 	let xhr = new XMLHttpRequest();
	            console.log(text)
	            xhr.open("GET", "searchHash?data="+text);
	            xhr.send(); */
	        })
	    }
 	    
 	   document.querySelector(".main_top").addEventListener("mouseover", function () {
           clearInterval(play)
       })
       document.querySelector(".main_top").addEventListener("mouseout", function () {
           play = setInterval(carousel_opacity, 2000)
       })

       document.querySelector(".go_btn").addEventListener("click", function () {
           clearInterval(play)
           let imgs = document.querySelectorAll(".main_top_img > img")
           imgs[i].style.opacity = "0"
           imgs[(i + 1) % imgs.length].style.opacity = "1";
           i++
           if (i == imgs.length)
               i = 0;
       })
       document.querySelector(".back_btn").addEventListener("click", function () {
           clearInterval(play)
           let imgs = document.querySelectorAll(".main_top_img > img")
           if (i == 0) {
               imgs[i].style.opacity = "0"
               // console.log(i)
               i = imgs.length - 1;
               console.log(imgs[i])
               imgs[i].style.opacity = "1";
               // console.log(i)
           } else {
               console.log("sdf", i)
               imgs[i + 1].style.opacity = "0"
               imgs[i].style.opacity = "1";
           }
           i--;
       })
/* 
       let play = setInterval(carousel_opacity, 2000)
       let i = 0;
       function carousel_opacity() {
           let imgs = document.querySelectorAll(".main_top_img > img")
           imgs[i].style.opacity = "0"
           imgs[(i + 1) % imgs.length].style.opacity = "1";
           i++
           if (i == imgs.length)
               i = 0;
       }
 */	
 </script>
    
<!--     <script type="text/javascript" src="assets/js/mobile_pop.js"></script>	 -->
		