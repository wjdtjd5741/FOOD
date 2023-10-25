<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="models.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
		MemberDTO mm = (MemberDTO)session.getAttribute("mb");
        String pw = "";
        String ph = "";
        
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies) {
			if(c.getValue().equals(mm.getPw())) {
				pw = c.getValue();
			}
			if(c.getValue().equals(mm.getPhone())) {
				ph = c.getValue();
			}
		}
	%>
    <div class="all_box">
        <div class="top_box">

            <div class="mypage_line">
                <div class="information_title">기본 정보</div>
                <div class="out">회원탈퇴</div>
            </div>
            <!-- <img class="mypage_icon"
            src="https://cdn.discordapp.com/attachments/1123448023238844436/1149601848035127328/information_name_2.png"> -->

            <div class="mypage_line">
                <div class="information_id text_head">이름</div>
                <textarea class="information_name text_d" disabled><%= mm.getName() %></textarea>
                <div class="btns_hover">수정</div>
            </div>
            <div class="mypage_line">
                <div class="information_id text_head">아이디</div>
                <textarea class="information_id_2 text_d" disabled><%= mm.getId() %></textarea>
                <div class="btns_hover">수정</div>  
            </div>
            <div class="mypage_line">
                <div class="information_password text_head">비밀번호</div>
                <textarea class="information_password_2 text_d" disabled><%= pw %></textarea>
                <div class="btns_hover">수정</div>
            </div>
            <div class="mypage_line">
                <div class="information_birth text_head">생년월일</div>
                <textarea class="information_birth_2 text_d" disabled><%= mm.getBirth() %></textarea>
                <div class="btns_hover">수정</div>
            </div>
            <div class="mypage_line">
                <div class="information_gender text_head">성별</div>
                <textarea class="information_gender_2 text_d" disabled><%-- 여자--%></textarea>
                <div class="btns_hover">수정</div>
            </div>
        </div>
        <div class="bottom_box">
            <div class="mypage_line">
                <div class="information_title_2">연락처 정보</div>
            </div>
            <div class="mypage_line">
                <div class="information_email text_head">이메일</div>
                <textarea class="information_email_2 text_d" disabled><%= mm.getEmail() %></textarea>
                <div class="btns_hover">수정</div>
            </div>
            <div class="mypage_line">
                <div class="information_phone text_head">휴대전화</div>
                <textarea class="information_phone_2 text_d" disabled><%= ph %></textarea>
                <div class="btns_hover">수정</div>
            </div>
        </div>
    </div>
</body>
</html>