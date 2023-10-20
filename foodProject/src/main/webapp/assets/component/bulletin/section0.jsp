<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bulletin.BulletinDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	BulletinDTO bDTO = (BulletinDTO)request.getAttribute("bDTO");
%>
    <div class="table_all">
        <table>
            <thead>
                <tr>
                    <th class="num">번호</th>
                    <th class="img">이미지</th>
                    <th class="title">제목</th>
                    <th class="date">날짜</th>
                    <th class="writer">작성자</th>
                    <th class="look">조회수</th>
                </tr>
            </thead>
            <tbody>

                <tr class="lines">
                    <td class="tb_num_color">1</td>
                    <td><img
                            src="<%= bDTO.getImg() %>">
                    </td>
                    <td><%= bDTO.getTitle() %></td>
                    <td><%= bDTO.getDate() %></td>
                    <td><%= bDTO.getWriter() %></td>
                    <td><%= bDTO.getView() %></td>
                </tr>
                <%-- 5개 까지 --%>

            </tbody>
        </table>
    </div>
</body>
</html>