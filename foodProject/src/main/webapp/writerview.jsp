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
				
				<div>${write.title}</div>
				
				 <div>
                    <img src="<%-- <%= img주소 %> --%>">
                </div>
              	<%-- <div class="hashtags">#계란</div> --%>
                
                
                <textarea class="food_text_review" disabled="true">
                	${write.text}
                </textarea>  
				
				<div class="modify">
					<div class="edit_text_review">수정</div>
					<div class="del_text_review">삭제</div>
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
					<textarea class="input_text" type="text" value="댓글을 남겨주세요."
						maxlength="300"></textarea>
					<input class="btn_txt" type="button" value="등록">
				</div>
				<div class="comment_box"></div>
			</div>
		</section>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>