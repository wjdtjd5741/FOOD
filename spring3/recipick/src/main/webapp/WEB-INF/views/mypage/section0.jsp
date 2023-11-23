<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>

</style>
<body>
    <div class="all_box">
     <form id="myForm" action="mypagesubmit" method="post">
      <div class="top_bottom_box">
        <div class="top_box">
            <div class="mypage_line">
                <div class="information_title">기본 정보</div>
<!--                 <div class="btns_hover" onclick="toggleEdit(this)">수정</div> -->
                <input type="submit" class="btns_hover" value="수정"  onclick="toggleEdit(this)">
            </div>
            <div class="mypage_line">
                <div class="information_id text_head">이름</div>
                <input class="information_name text_d" name="rname" value=${memberdto.rname }>
            </div>
            <div class="mypage_line">
                <div class="information_id text_head">아이디</div>
                <div class="fix_uname">${memberdto.uname }</div>
                <input class="information_id_2 text_d" type="hidden" name="uname" value=${memberdto.uname }>
            </div>
            <div class="mypage_line">
                <div class="information_password text_head">비밀번호</div>
                <input class="information_password_2 text_d" name="pw" value=${memberdto.pw }>
            </div>
            <div class="mypage_line">
                <div class="information_birth text_head">생년월일</div>
                <input class="information_birth_2 text_d" name="birth" value=${memberdto.birth }>
            </div>
            <div class="mypage_line">
                <div class="information_gender text_head">성별</div>
                <input class="information_gender_2 text_d" name="gender" value=${memberdto.gender }>
            </div>
        </div>
        <div class="bottom_box">
            <div class="mypage_line">
                <div class="information_title_2">연락처 정보</div>
            </div>
            <div class="mypage_line">
                <div class="information_email text_head">이메일</div>
                <input class="information_email_2 text_d" name="email" value=${memberdto.email }>
            </div>
            <div class="mypage_line">
                <div class="information_phone text_head">휴대전화</div>
                <input class="information_phone_2 text_d" name="phone" value=${memberdto.phone }>
            </div>
<!--             <input id="submit" type="submit" class="btns_hover" onclick="toggleEdit(this)" value="수정"> -->
<!--             <div class="btns_hover" onclick="toggleEdit(this)">수정</div> -->
        </div>
        <input type="button" class="out" value="회원탈퇴" onclick="confirmMemberOut()">
          </div>
         </form>
    </div>
    
</body>
</html>