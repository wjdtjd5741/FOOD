<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
       <link rel="stylesheet" href="assets/css/j/login_main.css">
    <style>
        header {
            height: 100px;
        }

        main {
            /* border: 1px solid red; */
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 80px;
            /* 수정사항: 
            margin-top: 80px;
            추가 */
        }

       <%-- footer {
            /* border: 1px solid blue; */
            height: 100px;
            /* position: fixed; */
            bottom: 0;
            width: 100%;
        } --%>
    </style>
</head>
<body>
<%@ page import = "models.MemberDTO" %>
<%
	MemberDTO mm = (MemberDTO)request.getAttribute("mb");
	session.setAttribute("mb", mm);
%>
	
 <form method="post" action="LoginServlet">
    <header></header>
    <main>
        <div class="mainbox">
            <a class="logo" href="mainpage.jsp">레시pick!</a>
            <div class="text">
                <div>
                  <img
                        src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557062645764176/id_icon.png">
                    <input type="text" name="id" placeholder="아이디">
                </div>
                <div>
                    <img
                        src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557097999552612/password_icon.png">
                   <input type="password" name="pw" placeholder="비밀번호">
                </div>
                <%
                	String msg = request.getParameter("msg");
                	if(msg != null) {
                %>
                <div style="color: red; font-size:15px;"><%= msg %></div>
                <%
                	}
                %>
            </div>
            <div class="find">
                <a href="newsign.jsp">회원가입</a>
            </div>
            <div class="login">
                <input type="submit" value="로그인">
            </div>
        </div>
    </main>
     </form>
</body>
</html>