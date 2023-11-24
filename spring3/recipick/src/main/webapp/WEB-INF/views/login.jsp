<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
        body {
		    margin: 0;
		    color : red;
		    font-size: 18px;
		    font-weight: bold;
		}
@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
/* .bigbox {
    border: 1px solid black;
    display: flex;
    justify-content: center;
    height: 1000px;
} */
.mainbox{
    /* border: 1px solid black; */
    /* width:  307px;
    height: 500px; */
}
.logo{
    /* border: 1px solid black; */
    color: rgb(230, 126, 34);
    font-size: 40px;
    font-weight: 700;
    display: inline-block;
    text-decoration: none;
    font-family: 'yg-jalnan';
    
    margin-left: 85px;
    margin-bottom: 40px;
    /* �닔�젙�궗�빆: 
    margin-left: 85px濡�
    蹂�寃� */
}

.text div:nth-child(n+1){
    border: 1px solid gray;
    width: 350px;
    height: 50px;
    margin-bottom: 10px;
    line-height: 3;
    border-radius: 5px;
    /* �닔�젙�궗�빆: 
    margin-bottom: 10px濡�
    width: 350px濡�
    蹂�寃� */
}
.text div:nth-child(1){
    margin-bottom: 30px;
}
    /* �닔�젙�궗�빆: 
    .idpa div:nth-child(1){
        margin-bottom: 30px;
    }異붽� */
.text img {
    width: 40px;
    height: 40px;
    margin: 5px;
    
}
.text input{
    font-size: 16px;
    font-weight: 600;
    color: rgb(128, 128, 128, 0.7);
    border: none;
    vertical-align: top;
    margin-top: 15px;
}
.find > a{
    /* border: 1px solid black; */
    display: inline-block;
    margin-bottom: 30px;
    margin-left: 280px;
    margin-right: 10px;
    color: black;
    text-decoration: none;
    font-size: 16px;
    color: gray;
    font-weight: 900;
    /* float: right; */
}
    /* �닔�젙�궗�빆: 
    margin-left: 10px;
    margin-right: 10px;
    異붽� */

input:focus{
    outline: none;
}
.login{
    background-color: rgb(230, 126, 34);
    font-size: 25px;
    font-weight: 600;
    width: 352px;
    height: 60px;
    text-align: center;
    line-height: 2.5;
    border-radius: 10px;
    color: white;
    border: none;
    cursor: pointer;
    margin-bottom : 3%;
    /* �닔�젙�궗�빆: 
    width: 352px濡�
    蹂�寃� */
}
/* 異붽� */
.login > input{
	background-color: rgb(230, 126, 34);
	font-size: 25px;
	border: none;
	font-weight: bolder;
    text-decoration: none;
    color: white;
    display: inline-block;
    width: 100%;
}
</style>
<body>
 <form method="post" action="loginsubmit">
    <main>
        <div class="mainbox">
            <a class="logo" href="mainpage.jsp">레시pick!</a>
            <div class="text">
                <div>
                  <img
                        src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557062645764176/id_icon.png">
                    <input type="text" name="uname" placeholder="아이디">
                </div>
                <div>
                    <img
                        src="https://cdn.discordapp.com/attachments/1148557028927742005/1148557097999552612/password_icon.png">
                   <input type="password" name="pw" placeholder="비밀번호">
                </div>
<%--                
                <% 
                	String msg = request.getParameter("msg");
                	if(msg != null) {
                %>
                <div style="color: red; font-size:15px;"><%= msg %></div>
                <%
                	}
                %>
--%>                
            </div>
            <div class="find">
                <a href="newsign">회원가입</a>
            </div>
            <div class="login">
                <input type="submit" value="로그인">
            </div>
            ${error }
        </div>
    </main>
  </form>
</body>