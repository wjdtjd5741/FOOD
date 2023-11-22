<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
header {
	/* border: 1px solid red; */
	/* height: 100px; */
	/* pixed */
	
}

main {
	/* border: 1px solid blue; */
	display: flex;
	align-items: center;
	flex-direction: column;
}

section {
	/* border: 1px solid aqua; */
	width: 85%;
	/* height: 500px; */
}
/* article{
    margin-top: 15px;
    width: 85%;
} */
footer {
	/* border: 1px solid black; */
	/* height: 100px; */
	
}

@charset "UTF-8";

body {
	margin: 0;
	/* font-size: 0; */
}

article {
	/* border: 1px solid red; */
	/* margin-left: 40px; */
	
}

/* div a ���� */
.title {
	margin-top: 30px;
	margin-bottom: 60px;
	/* Ÿ��Ʋ */
	color: black;
	font-size: 40px;
	font-weight: bold;
}

article>div:nth-child(2) {
	font-size: 30px;
	font-weight: bold;
	margin-bottom: 40px;
}
/* article > div:nth-child(4){
    width: 300px;
    height: 50px;
} */
.hashtags {
	display: inline-block;
	border: 1px solid orange;
	font-size: 16px;
	font-weight: bold;
	border-radius: 30px;
	width: 11%;
	height: 50px;
	margin-top: 20px;
	line-height: 3;
	cursor: pointer;
	margin-left: 10px;
	margin-bottom: 50px;
	text-align: center;
	/* ���� ����: 
    margin-left: 10px; 
    �߰�*/
}

article>div>img {
	/* background-size: contain; */
	width: 100%;
	height: 400px;
	display: inline-block;
	margin-bottom: 5px;
}
/* Ŭ������ ���� */
.food_text_review {
	border: 1px solid orange;
	border-radius: 10px;
	width: 91%;
	height: 150px;
	font-size: 20px;
	margin-left: 1.5%;
	padding: 0 15px;
	padding-top: 15px;
	/* ��������: 
    width:100% -> width: 1075px; ���� 
    */
	resize: none;
}

.modify {
	display: flex;
	margin-top: 20px;
	line-height: 0;
	justify-content: flex-end;
	margin-right: 2%;
	/* ��������: 
    margin-left: 800px -> margin-left: 850px; ���� 
    */
}

.modify>div {
	font-size: 16px;
	/* background-color: whitesmoke; */
	background-color: rgb(207, 207, 207, 0.562);
	/* border: 1px solid red; */
	width: 8%;
	height: 35px;
	border-radius: 10px;
	font-weight: bold;
	text-align: center;
	line-height: 2.2;
	cursor: pointer;
}

.modify>div:nth-child(2) {
	margin-left: 10px;
}

body {
	margin: 0;
	/* font-size: 0; */
}

article {
	/* border: 1px solid red; */
	/* margin-left: 40px; */
	
}

/* div a �궘�젣 */
.title {
	margin-top: 30px;
	margin-bottom: 60px;
	/* ���씠�� */
	color: black;
	font-size: 40px;
	font-weight: bold;
}

article>div:nth-child(2) {
	font-size: 30px;
	font-weight: bold;
	margin-bottom: 40px;
}

/* article > div:nth-child(4){
    width: 300px;
    height: 50px;
} */
.hashtags {
	display: inline-block;
	border: 1px solid orange;
	font-size: 16px;
	font-weight: bold;
	border-radius: 30px;
	width: 11%;
	height: 50px;
	margin-top: 20px;
	line-height: 3;
	cursor: pointer;
	margin-left: 10px;
	margin-bottom: 50px;
	text-align: center;
	/* �닔�젙 �궗�빆: 
    margin-left: 10px; 
    異붽�*/
}

article>div>img {
	/* background-size: contain; */
	width: 100%;
	height: 400px;
	display: inline-block;
	margin-bottom: 5px;
}

/* �겢�옒�뒪紐� 蹂�寃� */
.food_text_review {
	border: 1px solid orange;
	border-radius: 10px;
	width: 91%;
	height: 150px;
	font-size: 20px;
	margin-left: 1.5%;
	padding: 0 15px;
	padding-top: 15px;
	/* �닔�젙�궗�빆: 
    width:100% -> width: 1075px; 蹂�寃� 
    */
	resize: none;
}

.writeTitle {
	background-color: white;
	border: none;
	/* 테두리 없애는 스타일 */
	resize: none;
	/* 크기 조절 불가능하게 만듦 */
	outline: none;
	/* 포커스 효과 없애는 스타일 (선택적으로) */
	overflow: hidden;
	/* 스크롤바 없애는 스타일 */
	font-size: 29px;
	font-weight: 900;
	width: 91%;
	height: 50px;
}

.modify {
	display: flex;
	margin-top: 20px;
	line-height: 0;
	justify-content: flex-end;
	margin-right: 2%;
	/* �닔�젙�궗�빆: 
    margin-left: 800px -> margin-left: 850px; 蹂�寃� 
    */
}

.viewbtn {
	font-size: 16px;
	/* background-color: whitesmoke; */
	background-color: rgb(207, 207, 207, 0.562);
	border: none;
	width: 8%;
	height: 35px;
	border-radius: 10px;
	font-weight: bold;
	text-align: center;
	line-height: 2.2;
	cursor: pointer;
	margin-left: 10px;
}

.modify>a {
	margin-left: 10px;
	font-size: 16px;
	/* background-color: whitesmoke; */
	background-color: rgb(207, 207, 207, 0.562);
	/* border: 1px solid red; */
	width: 8%;
	height: 35px;
	border-radius: 10px;
	font-weight: bold;
	text-align: center;
	line-height: 2.2;
	cursor: pointer;
	text-decoration-line: none;
	color: black;
}
</style>
<link rel="stylesheet" href="resources/assets/css/comments.css">

<main>

			<section>

			<!-- 이정성 -->
			<!-- title 클릭 게시판 목록 이동, #음식이름 클릭 레시피 목록 이동, 수정 삭제 -->
			<article>
				<!-- a태그 삭제 -->
				<div class="title">후기 게시판</div>



				<textarea class="writeTitle a" disabled="true">${selectData_review[0].review_title }

                </textarea>

				<div>
					<!--                     <img src="https://img.freepik.com/premium-photo/korean-instant-noodle-and-tteokbokki-in-korean-spicy-sauce-rabokki-korean-food-style_1339-143780.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph"> -->
				</div>
				<%--                 <% 
                	for(int i = 0 ;i<sin.getHashtags().size() ;i++){
                %>
              	<div class="hashtags">#<%= sin.getHashtags().get(i) %></div>
                <%
        		}
                %>
--%>
				<textarea class="food_text_review a" disabled="true">${selectData_review[0].review_text }

                </textarea>

				<div class="modify">
					<input class="edit_text_review viewbtn" type="button" value="수정"
						onclick="enableTextareas()"> <input
						class="del_text_review viewbtn" type="button" value="삭제"
						onclick="enableTextareas()"> <a href="bulletin">목록</a>
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
						disabled="true" maxlength="300"></textarea>
					<input class="btn_txt" type="button" value="등록">
				</div>
				<div class="comment_box"></div>
			</div>
		</section>
	
</main>
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
<script type="text/javascript" src="resources/assets/js/search_event.js"></script>
