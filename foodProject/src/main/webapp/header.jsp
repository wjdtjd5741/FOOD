<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <header>
        <div class="head_sec0">
            <a href="mainpage.jsp">레시pick!</a>
            <div class="search_bar">
                <input id="search_text" type="text" value="">
                <img
                    src="https://cdn.discordapp.com/attachments/1148557028927742005/1149214262925987880/search_icon.png">
            </div>
            <div class="login_box0">
            <%
            	Cookie[] cs = request.getCookies();
            	String id = "";
            	if(cs != null){
            	for(Cookie c : cs){
            		if(c.getName().equals("id"))
            			id = c.getValue();
            	}
            	if(id.isEmpty()){
            %>
           		<a href="login.jsp">로그인</a>
               	<a href="newsign.jsp">회원가입</a>            	
            <%
            	} else{
            %>
            	<a href="mypage.jsp"> <%= id %> 회원님</a>		
            	<a class="logout"> 로그아웃 </a>	
            <%	
/* 	      		out.print("<input class='submit' type='text'");
	      		out.print("value='"+username+"' style='display :none'>"); */
            	}
            	} else{
            %>
           		<a href="login.jsp">로그인</a>
               	<a href="newsign.jsp">회원가입</a> 		
            <%		
            	}
            %>
            <div class="logout" style="display:none"></div>
            	<%-- 
            		<a href="login.jsp">로그인</a>
                	<a href="newsign.jsp">회원가입</a>
                	or
                	<a href="mypage.jsp"> OOO 회원님</a>
            	--%>

            </div>
        </div>
        <div>
            <div class="list">
                <img
                    src="https://cdn.discordapp.com/attachments/1148541415828246548/1148541548196278372/category_icon.png">
                <div>
                    <!-- 목록 -->
                    <div>
                        <a href="bulletin.jsp">게시판</a>
                    </div>
                    <%-- 
                    <div>
                        <a href="recipepage.jsp">레시피 페이지</a>
                    </div>
                    --%>
                    <%
                    	if(!id.isEmpty()){
                    %>
                    <div>
                        <a href="mypage.jsp">마이 페이지</a>
                    </div>
                    <div>
                        <a href="newrecipepage.jsp">레시피 작성 페이지</a>
                    </div>
                    <div>
                        <a href="writepage.jsp">후기 작성 페이지</a>
                    </div>
                    <%		
                    	}
                    %>
                    

                </div>
            </div>
        </div>
    </header>