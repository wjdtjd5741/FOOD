<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="models.WritesDTO"%>
<%@page import="java.util.List" %>
<%@ page import="component.RecipickLib" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	WritesDTO bDTO = (WritesDTO) request.getAttribute("bDTO");
	WritesDTO sin = (WritesDTO) session.getAttribute("write");
	System.out.println(sin);
	List<WritesDTO> bull = (List)request.getAttribute("bullList");
	 
	RecipickLib rLib = new RecipickLib();
	rLib.setDate(bull.get(0).getDate());
	System.out.println(rLib.getDate());
	System.out.println(rLib.getDateYYMMDD());
// 	System.out.println(bull.get(0).getTitle());
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
				<div><%=1 %></div>
				<div><%=bull.get(0).getTitle() %></div>
				<div><%=rLib.getDateYYMMDD() %></div>
				<div><%=bull.get(0).getWriter() %></div>
				<div><%=bull.get(0).getView() %></div>
				
			</div>

		</div>
	</div>
</body>
</html>