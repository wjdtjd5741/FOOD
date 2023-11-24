<%@page import="org.apache.commons.collections.bag.SynchronizedSortedBag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cs = request.getCookies();
	String[] values = {"",""};
	for(Cookie c : cs){
		if(c.getName().equals("latest_contents1"))
			values[0] = c.getValue();
		if(c.getName().equals("latest_contents2"))
			values[1] = c.getValue();
	}
	System.out.println(values[0]);
	System.out.println(values[1]);
%>  
<nav>
    <div class="btn_nav">▶</div>
    <div class="nav_contents">
        <a href="mainpage.html" class="nav_name">레시pick!</a>
        <div class="nav_today">최근본 레시피</div>
        <div class="nav_recom_box">
            <img class="nav_recom"
				src="https://media.istockphoto.com/id/1408811835/ko/%EC%82%AC%EC%A7%84/%EC%8B%9D%EB%A3%8C%ED%92%88%EC%9C%BC%EB%A1%9C-%EC%9E%A5%EB%B0%94%EA%B5%AC%EB%8B%88%EC%9D%98-3d-%EB%A0%8C%EB%8D%94%EB%A7%81.webp?b=1&s=612x612&w=0&k=20&c=lpoeSaiyIZF4nss08z8daz1zV8tJqsPEZcsXBmI56Cw=">
        	<div class="reciid" style="display: none"><%= values[0] %></div>
        </div>
		<div class="nav_recom_box">
	        <img class="nav_recom"
	            src="https://media.istockphoto.com/id/1408811835/ko/%EC%82%AC%EC%A7%84/%EC%8B%9D%EB%A3%8C%ED%92%88%EC%9C%BC%EB%A1%9C-%EC%9E%A5%EB%B0%94%EA%B5%AC%EB%8B%88%EC%9D%98-3d-%EB%A0%8C%EB%8D%94%EB%A7%81.webp?b=1&s=612x612&w=0&k=20&c=lpoeSaiyIZF4nss08z8daz1zV8tJqsPEZcsXBmI56Cw=">
	        <div class="reciid" style="display: none"><%= values[1] %></div>		
		</div>
        <div id="nav_location">
            <a href="#">▲</a>
            <a href="#gofooter">▼</a>
        </div>
    </div>
</nav>
<script>
	recent_page()
	function recent_page(){
		let navbox = document.querySelectorAll(".nav_recom_box")
		console.log(navbox)
		for(let i = 0 ; i<navbox.length ;i++){
			navbox[i].addEventListener("click", function(){
				let reciid = document.querySelectorAll(".reciid")
				window.location.href="gorecipe?reciid="+reciid[i].innerText
			})
		}
	}
	
</script>