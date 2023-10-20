<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="mainpage.MainPageDTO" %>
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
<body>
<%
if(request.getAttribute("mainpage") == null){
	System.out.print(request.getRequestURI());
	RequestDispatcher dis = request.getRequestDispatcher("Recipick");
	dis.forward(request, response);
}
	MainPageDTO mpDTO = (MainPageDTO)request.getAttribute("mainpage");
	System.out.print(mpDTO.getRecom().get(0).get(2));

%>
	<%@ include file="header.jsp"%>
	<main>
		<nav>
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
							<div class="rigth">▷</div>
						</div>
						<div class="butt2">
							<div class="left">◁</div>
						</div>
						<div class="img">
						<%
							for(int i = 0 ; i<mpDTO.getFavor().size() ;i++){
						%>
							<div class="img_div">
								<img class="favorite" src="<%= mpDTO.getFavor().get(i).get(0)%>" >
							<div class="foodName"><%= mpDTO.getFavor().get(i).get(1) %></div>
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
							str = str.substring(1,str.length()-1);
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
						<%--
							<img
								src="https://cdn.discordapp.com/attachments/1148541415828246548/1149239197144723456/salmon-518032_1280.jpg">
							<div class="small_name1">연어 스테이크 & 샐러드</div>
						--%>
						</div>
						<div class="small_img1_1">
						<%--
							<img
								src="https://img.freepik.com/premium-photo/traditional-food-chicken-soup-with-ginseng_1205-8406.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
							<div class="small_name1">누룽지 삼계탕</div>
						--%>
						</div>
						<div class="small_img2">
						<%--
							<img
								src="https://img.freepik.com/premium-photo/korean-instant-noodle-and-tteokbokki-in-korean-spicy-sauce-rabokki-korean-food-style_1339-143780.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
							<div class="small_name1">라볶이</div>
						--%>
						</div>
						<div class="small_img2">
						<%--
							<img
								src="https://img.freepik.com/premium-photo/korean-instant-noodles-with-fried-chicken-or-fried-chicken-ramyeon_1339-175174.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
							<div class="small_name1">치킨 라면</div>
						--%>
						</div>
						<div class="big_img2">
						<%-- 
							<img
								src="https://cdn.discordapp.com/attachments/1148541415828246548/1149236901425987715/side-view-grilled-lamb-liver-with-potato-and-greens.jpg">
							<div class="hashtags">#닭똥집</div>
							<div class="hashtags">#마늘</div>
							<div class="hashtags">#술안주</div>
							<div class="recommend_name"></div>
						--%> 
						</div>
					</div>
				</div>
				<div class="bot_img">
				<img class="main_bottom_img"
					src="<%= mpDTO.getBottomImg() %>">
				</div>
		</section>
	</main>
	<%@ include file="footer.jsp"%>
	<script>
 	    let hashtags = document.querySelectorAll(".hashtags")
	    for(let i = 0 ; i<hashtags.length ;i++){
	        hashtags[i].addEventListener("click",function(){
	            let text = hashtags[i].innerText.substring(1);
	            window.location.href = "searchHash?data=" + text;

/* 	            let xhr = new XMLHttpRequest();
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