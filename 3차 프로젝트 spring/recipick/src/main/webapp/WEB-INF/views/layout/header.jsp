<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
*{
    margin: 0;
    font-size: 0;
}
@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
header{
    width: 100%;
    background-color: orange;
    /* position: fixed; */
    z-index: 99;
    /* display: flex;
    align-items: center;
    flex-direction: column; */
    
}

.head_sec0{
    width: 100%;
    height: 80px;
    /* display: flex;
    justify-content: space-around; */
    /* border: 1px solid red; */
}

.head_sec0 > div, .head_sec0 > a {
    display: inline-block;
    font-size: 27px;
    color: white;
    line-height: 80px;
    font-weight: 600;
    height: 80px;
    vertical-align: top;
}
.head_sec0 > a{
    font-family: 'yg-jalnan';
    width: 10%;
    margin: 0 13% 0 2%;
    text-decoration: none;
    cursor: pointer;
    text-wrap: nowrap;
}
.head_sec0 > div:nth-child(2){
    width: 45%;
    height: 40px;
    margin: 20px 0;
    background-color: white;
    border-radius: 16px;
}
.login_box0{
    /* background-color: green; */
    width: 27%;
}
.login_box0 > a{
    float: right;
    margin-top: 20px;
}
.search_bar > input {
    display: inline-block;
    width: 70%;
    vertical-align: top;
    height: 40px;
    border-radius: 16px;
    border: none;
    background-color: transparent;
    font-size: 16px;
    color: orange;
    /* padding-left: 10px; */
    font-weight: 900;
    padding-left: 10px;
}
input:focus{
    outline: none;
}
.search_bar > img {
    display: inline-block;
    /* border: 1px solid red; */
    float: right;
    width: 40px;
    height: 40px;
    border-radius: 16px;
    cursor: pointer;
}
.head_sec0 > div:nth-child(3) > a{
    /* display: inline-block; */
    font-size: 16px;
    /* border: 1px solid green; */
    text-decoration: none;
    color: white;
}
.head_sec0 > div:nth-child(3) > a:nth-child(1){
    margin-left: 10%;
}


header > div:nth-child(2) {
    width: 100%;
    height: 40px;
    background-color: rgb(255, 230, 184)
}
.list{
    display: inline-block;
    /* border: 1px solid black; */
    width: 30px;
    height: 30px;
    margin: 2px 2px 2px 30px;
    position: relative;
}
.list > img{
    margin-top: 3.5px;
    width: 30px;
    height: 30px;
    cursor: pointer;
}
.list a {
    vertical-align: top;
    font-size: 20px;
    text-decoration: none;
    text-align: center;
    line-height: 50px;
    color: rgb(65, 64, 64); /*留덉슦�뒪 �삱由щ㈃ �깋 二쇳솴�쑝濡�*/
    padding-left: 2px;
    font-weight: bold;
    font-size: 18px
}
.list > div{
    position: absolute;
    background-color: rgba(255, 255, 255, 0.884);
    border-radius: 5px;
    width: 280px;
    height: 550px;
    top: 35px;
    display: none;
    left: 0px;
}
.list > div > div{
    display: inline-block;
    margin: 8px;
    /* margin-top: 25px; */
    /* border: 1px solid rgb(255, 208, 0); */
    /* background-color:white; */
    border-radius: 10px;
    width: 220px;
    height: 50px;
}
.list_all {
    margin-left: 20px;
}

@media (max-width: 700px) {
    header {
        background-color: transparent;
    }
    .head_sec0{
        margin-top: 10px;
    }
    .head_sec0>a {
        
        width: 130px;
        display: inline-block;
        font-size: 20px;
        color: orange;
        line-height: 60px;
        font-weight: 400;
        height: 80px;
        vertical-align: top;
    }
    .head_sec0>div:nth-child(2) {
        width: 40%;
        height: 40px;
        margin: 10px 0;
        background-color: rgb(128, 128, 128, 0.15);
        border-radius: 16px;
    }
    .head_sec0>div:nth-child(3) {
        display: none;
    }
    .head_sec0 {
        width: 850px;
        height: 60px;
    }
    header>div:nth-child(2) {
        display: none;
    }
}
</style>    

<header>
    <div class="head_sec0">
        <a href="mainpage.jsp">레시pick!</a>
        <div class="search_bar">
            <input id="search_text" type="text" value="">
            <img
                src="https://cdn.discordapp.com/attachments/1148557028927742005/1149214262925987880/search_icon.png">
        </div>
        <%-- 
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
        --%>
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
                
<%--                 <% 
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
--%>

            </div>
        </div>
    </div>
</header>