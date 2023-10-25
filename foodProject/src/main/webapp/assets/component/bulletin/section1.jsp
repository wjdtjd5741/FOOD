<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="models.WritesDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
WritesDTO bDTO = (WritesDTO)request.getAttribute("bDTO");
%>
    <div class="sec1_bigbox">
        <div class="sec1_head_box">
            <div>번호</div>
            <div>제목</div>
            <div>날짜</div>
            <div>작성자</div>
            <div>조회수</div>
        </div>
        <div class="abox">
            <div class="sec1_bbox">
                <div>10</div>
                <div><%= bDTO.getTitle() %></div>
                <div><%= bDTO.getDate() %></div>
                <div><%= bDTO.getWriter() %></div>
                <div><%= bDTO.getView() %></div>
            </div>
            
        </div>
    </div>
</body>
</html>