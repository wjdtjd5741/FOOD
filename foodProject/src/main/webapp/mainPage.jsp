<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="models.MainPageDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/h/media/mainpage_sec2.css">
<link rel="stylesheet" href="assets/css/s/mainpage_sec1.css">
<link rel="stylesheet" href="assets/css/mainpage.css">
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/css/mobile_console.css">
<link rel="stylesheet" href="assets/css/h/mainpage_sec2.css">
</head>
<style>
	.popup{
		position: fixed;
		top: 150px;
		left: 750px;
		z-index: 99;
		border: 3px solid white;
		border-radius: 5px;
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
	}
	.popupcontents > img{
		width:300px;
		height:200px;
	}
	.popupc{
		background-color: rgb(255, 230, 184);
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding: 0 0 0 10px;
	}
	.popuptext{
		font-size: 16px;
		color: orange;
		font-weight: 900;
	}
</style>
<body>
<%
if(request.getAttribute("mainpage") == null){
	//System.out.print(request.getRequestURI());
	RequestDispatcher dis = request.getRequestDispatcher("Recipick");
	dis.forward(request, response);
}
	
	MainPageDTO mpDTO = (MainPageDTO)request.getAttribute("mainpage");
	
	String popupBox = "on";
	Cookie[] css = request.getCookies();
	if(css != null){
		for(Cookie c : css){
			if(c.getName().equals("popupBox"))
				popupBox = c.getValue();
		}
	}
	System.out.print(""+mpDTO.getRecom().get(5).get(2));
%>
	<%@ include file="header.jsp"%>
	<main>
		<nav>
		
		<%
			if(popupBox.equals("on")){
		%>
		<!-- style="display:none" -->
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
		
			<%@ include file="mobile_console.jsp"%>
			<div class="go_home">
				<a href="#">▲</a>
			</div>
		</nav>
		<section>
			
			<div class="go_btn">next &gt;</div>
			<div class="back_btn">&lt; prev</div>
			<div class="main_top">
				<%
					for(int i = 0 ;i<mpDTO.getTopImg().size() ;i++){
				%>	
					<div class="main_top_img">
					<img
						src="<%= mpDTO.getTopImg().get(i) %>">
					</div>
				<%
					}
				%>
			</div>

			<!-- 강신영 -->
			<!-- 인기레시피 부분 슬라이드 버튼 추가 필요-->
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
						<%
							for(int i = 0 ; i<mpDTO.getFavor().size() ;i++){
						%>
							<div class="img_div">
								<img class="favorite" src="<%= mpDTO.getFavor().get(i).get(0)%>" >
							<div class="foodName"><%= mpDTO.getFavor().get(i).get(1) %></div>
							</div>
						<%		
							}
						%>
						</div>
					</div>
				</div>
			</div>
			</div>
			</div>
			</div>

			<!-- 김호연 -->
			<!-- all 전체 테두리, all_2 작은 테두리, 큰 사진 p1, p4, 작은 사진 p2, p3 -->
			<div class="a11">
				<div class="a11_2">
					<h2>추천 레시피</h2>
					<div class="recipick">
						<div class="big_img1">
							<img src="<%= mpDTO.getRecom().get(0).get(0) %>">
							<%
							String str = ""+mpDTO.getRecom().get(0).get(2);
							String[] hashs = str.split(",");
							for(int i = 0 ; i<hashs.length ;i++){
							%>
							<div class="hashtags">#<%= hashs[i] %></div>
							<% 	
							}
							%>
							<div class="recommend_name"><%= mpDTO.getRecom().get(0).get(1) %></div>

						</div>
						<div class="small_img1">
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
						 
						</div>
					</div>
				</div>
				<div class="bot_img">
				<img class="main_bottom_img" src="<%= mpDTO.getBottomImg() %>">
				<div class="bot_text">Make yourself, Recipick</div>
				</div>
		</section>
	</main>
	<%@ include file="footer.jsp"%>
	<script>
	// 1. window
	// 2. div display
	
	popbox()
	function popbox(){
	 	document.querySelector(".popupbtn").addEventListener("click",function(){
			if(!document.querySelector(".ckbox").checked){
				document.querySelector(".popup").style.visibility = "hidden";
			} else
				window.location.href = "Recipick?ck=1";
		})		
	}

	
	logout()
		function logout(){
			document.querySelector(".logout").addEventListener("click",function(){
				alert("로그아웃되었습니다");
				window.location.href = "Logout";
			})
		}
	
 	    let hashtags = document.querySelectorAll(".hashtags")
	    for(let i = 0 ; i<hashtags.length ;i++){
	        hashtags[i].addEventListener("click",function(){
	            let text = hashtags[i].innerText.substring(1);
	            window.location.href = "searchHash?data=" + text;

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
	</script>
    <script type="text/javascript" src="assets/js/header_contents.js"></script>
    <script type="text/javascript" src="assets/js/mobile_pop.js"></script>	
	<script type="text/javascript" src="assets/js/search_event.js"></script>
</body>
</html>