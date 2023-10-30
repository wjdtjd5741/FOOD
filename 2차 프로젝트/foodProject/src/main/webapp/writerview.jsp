<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/j/writereview_sec1.css">
<link rel="stylesheet" href="assets/css/writereview.css">
<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/comments.css">
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/css/mobile_console.css">
<link rel="stylesheet" href="assets/css/j/media/writereview_sec1.css">
</head>
<body>
<%@ page import = "models.WritesDTO" %>
<%
WritesDTO sin = (WritesDTO)request.getAttribute("write");
session.setAttribute("write", sin);

%>
<%@ include file="header.jsp"%>
	<main>
		<nav>
			<%@ include file="mobile_console.jsp"%>
		</nav>
		<section>
			<!-- 이정성 -->
			<!-- title 클릭 게시판 목록 이동, #음식이름 클릭 레시피 목록 이동, 수정 삭제 -->
			<article>
				<!-- a태그 삭제 -->
				<div class="title">후기 게시판</div>
				
				<textarea class="writeTitle a" disabled="true">
${write.title}
                </textarea>  
				
				 <div>
                    <img src="https://img.freepik.com/premium-photo/korean-instant-noodle-and-tteokbokki-in-korean-spicy-sauce-rabokki-korean-food-style_1339-143780.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
                </div>
                <%
                	for(int i = 0 ;i<sin.getHashtags().size() ;i++){
                %>
              	<div class="hashtags">#<%= sin.getHashtags().get(i) %></div>
                <%
        		}
                %>
                <textarea class="food_text_review a" disabled="true">
${write.text}
                </textarea>  
				
				<div class="modify">
					<input class="edit_text_review viewbtn" type="button" value="수정" onclick="enableTextareas()">
					<input  class="del_text_review viewbtn" type="button" value="삭제" onclick="enableTextareas()">
					<a href="bulletin.jsp">목록</a>
				</div>
			</article>
		</section>
		<section>
			<!-- 강신영  -->
			<div class="comments">
				<div class="comment_word">
					<div>댓글</div>
				<%--<div class="comment_count">0</div> --%>	
				</div>
				<div>
					<textarea class="input_text" type="text" value="댓글을 남겨주세요." disabled="true"
						maxlength="300"></textarea>
					<input class="btn_txt" type="button" value="등록">
				</div>
				<div class="comment_box"></div>
			</div>
		</section>
	</main>
	<%@ include file="footer.jsp"%>
</body>
<script>
function enableTextareas() {
    // 클래스로 모든 텍스트 영역 요소를 선택합니다.
    let textareas = document.querySelectorAll('.a');

    // 선택된 각 텍스트 영역의 disabled 속성을 false로 변경하여 수정 가능하게 만듭니다.
    textareas.forEach(function(textarea) {
        textarea.disabled = false;
    });
    
    // 수정 버튼을 저장 버튼으로 변경합니다.
    let editButton = document.querySelector('.edit_text_review');
    editButton.value = '저장';
    editButton.onclick = saveChanges;
}

function saveChanges() {
    // 수정된 리뷰 내용을 가져옵니다.
    let updatedReviewText = document.querySelector('.a').value;

    // 이제 수정된 내용을 서버로 전송하는 코드를 추가할 수 있습니다.
    // 여기에서는 간단한 메시지를 출력합니다.
    alert('수정 내용을 저장합니다: ' + updatedReviewText);

    // 수정 버튼을 다시 수정 버튼으로 변경합니다.
    let editButton = document.querySelector('.edit_text_review');
    editButton.value = '수정';
    editButton.onclick = enableTextareas;

    // 선택된 각 텍스트 영역의 disabled 속성을 true로 변경하여 수정 불가능하게 만듭니다.
    let textareas = document.querySelectorAll('.a');
    textareas.forEach(function(textarea) {
        textarea.disabled = true;
    });
}

</script>
<script type="text/javascript" src="assets/js/search_event.js"></script>
</html>