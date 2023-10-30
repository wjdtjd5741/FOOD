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
	MemberDTO mm = (MemberDTO)request.getAttribute("mb");

 	String gender = "";
	if (mm.getGender().equals("1")) {
		gender = "남자";
	} else {
		gender = "여자";
	}
%>
    <div class="all_box">
     <form id="myForm" action="MypageSection0" method="get">
      <div class="top_bottom_box">
        <div class="top_box">
            <div class="mypage_line">
                <div class="information_title">기본 정보</div>
                <div class="btns_hover" onclick="toggleEdit(this)">수정</div>
<!--                 <div class="out">회원탈퇴</div> -->
            </div>
            <div class="mypage_line">
                <div class="information_id text_head">이름</div>
                <textarea class="information_name text_d" disabled name="name"><%= mm.getName() %></textarea>
            </div>
            <div class="mypage_line">
                <div class="information_id text_head">아이디</div>
                <textarea class="information_id_2 text_d" disabled name="id"><%= mm.getId() %></textarea>
            </div>
            <div class="mypage_line">
                <div class="information_password text_head">비밀번호</div>
                <textarea class="information_password_2 text_d" disabled name="password"><%= mm.getPw() %></textarea>
            </div>
            <div class="mypage_line">
                <div class="information_birth text_head">생년월일</div>
                <textarea class="information_birth_2 text_d" disabled name="birth"><%= mm.getBirth() %></textarea>
            </div>
            <div class="mypage_line">
                <div class="information_gender text_head">성별</div>
                <textarea class="information_gender_2 text_d" disabled name="gender"><%= gender %></textarea>
            </div>
        </div>
        <div class="bottom_box">
            <div class="mypage_line">
                <div class="information_title_2">연락처 정보</div>
            </div>
            <div class="mypage_line">
                <div class="information_email text_head">이메일</div>
                <textarea class="information_email_2 text_d" disabled name="email"><%= mm.getEmail() %></textarea>
            </div>
            <div class="mypage_line">
                <div class="information_phone text_head">휴대전화</div>
                <textarea class="information_phone_2 text_d" disabled name="phone"><%= mm.getPhone() %></textarea>
            </div>
<!--             <input id="submit" type="submit" class="btns_hover" onclick="toggleEdit(this)" value="수정"> -->
<!--             <div class="btns_hover" onclick="toggleEdit(this)">수정</div> -->
        </div>
        <div class="out">회원탈퇴</div>
          </div>
         </form>
    </div>

</body>
</html>