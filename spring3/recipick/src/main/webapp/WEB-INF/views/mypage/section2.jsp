<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
* {
    margin: 0;
    font-size: 0;
}

.all_0 {
    /* border: 1px solid red; */

    display: flex;
    justify-content: center;
}

.all_1 {
    /* border: 1px solid green; */
    /* display: flex; */
    width: 90%;
}

.box hr {
    width: 80%;
}

.write_box {
	margin-left : 10%;
    height: 600px;
    width: 80%;
    margin-top: 13%;
    border: 3px solid rgb(230, 142, 34);
    padding-left: 4%;
    padding-top: 15px;
    padding-bottom: 15px;
    border-radius: 10px;
}

.write_box>div {
    font-size: 20px;
    display: inline-block;
}

.box {
    margin-left: 20%;
    display: inline-block;
    /* border: 1px solid red; */
    width: 60%;
    height: 600px;
}

.write_title {
	font-weight: bold;
/*    margin-left: 3%;*/
    font-size: 25px;
    margin-top: 20px;

}

.write_name,
.write_date {
    margin-left: 10%;
    font-size: 18px;
}

.write_date {
    margin-top: 10px;
    margin-bottom: 10px;
}

.write_name {
    margin-top: 30px;
}

.order_all {
    display: flex;
    margin-left: 36%;
    width: 70%;
    margin-top: 40px;
    font-size: 10px;
}

.order {
    width: 30px;
    height: 25px;
    border: none;
    font-size: 15px;
    background-color: rgb(220, 218, 218);
    cursor: pointer;
}

@media(max-width:800px) {
    .write_box>div {
        font-size: 15px;

    }
}
</style>
<body>
	<div class="box">
		<div class="write_box">
			<div class="write_title">내가 쓴 글</div><br>
			<c:forEach var="recipe" items="${data.list}">
			<fmt:formatDate value="${recipe.recipe_date}" pattern="yyyy-MM-dd" var="formattedDate" />
				<a class="recipe_detail" href="gorecipe?reciid=${recipe.recipe_id}">
		            <div class="write_name">
		          	  ${recipe.recipe_title }
					<%--  나만의 햄마요덮밥 만들기 ! --%>
					<!-- 작성글 4개까지 -->
		            </div><br>
		            <div class="write_date">${formattedDate}</div><br>
	       	    </a>
	             <hr class="write_hr">
            </c:forEach>
           
            <div class="bottom">
			<div class="order_all">
<%
			Map data = (Map) request.getAttribute("data");
			System.out.println("data : " + data);
			int total = (Integer) data.get("total");
			int pageNum = (Integer) data.get("pageNum");
			// 한번에 보여줄 목록 개수
			int countPerPage = (Integer) data.get("countPerPage");
			
			// 한번에 보여줄 페이지의 개수
			int groupCount = 4;
			
			int totalPaging = (int) Math.ceil( (double)total / countPerPage );
			
			// 현재 페이지가 몇번째 그룹에 있는지
			int position = (int) Math.ceil( (double)pageNum / groupCount );
			
			int beginPaging = ( (position-1) * groupCount) + 1;
			int endPaging = position * groupCount;
			
			System.out.println("endPaging : " + endPaging);
			System.out.println("totalPaging : " + totalPaging);
			System.out.println("beginPaging : " + beginPaging);
			
			if(endPaging > totalPaging) {
				endPaging = totalPaging;
			}
		
			
			if(beginPaging == 1) {
				out.println("<");
			} else {
				out.println("<a href='mypage?pageNum=" + (beginPaging-1) + "'>[이전]</a>");
			}
			
			for(int i=beginPaging; i <= endPaging; i++) {
				if(i == pageNum) {
					out.println("<a href='mypage?pageNum=" + i +"'><strong>["+ i +"]</strong></a>");
				} else {
					out.println("<a href='mypage?pageNum=" + i +"'>["+ i + "]</a>");
				}
			}
				
			if(endPaging == totalPaging) {
				out.println(">");
			} else {
				out.println("<a href='mypage?pageNum=" + (endPaging + 1) + "'>></a>");
			}
%>

		</div>
				<%-- 
                    <div class="order">◁</div>
                    <div class="order">1</div>
                    <div class="order">▷</div>
                --%>
			</div>
		</div>
	</div>
</body>
</html>