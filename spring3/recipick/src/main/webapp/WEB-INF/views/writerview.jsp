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
	<form action="writer_modify" method="post">
	<input type="hidden" id="review_id"  value="${review_id }">
				<div class="title">후기 게시판</div>
				<textarea class="writeTitle a" name="review_title" disabled="true">${selectData_review[0].review_title }
                </textarea>
				<div>
				<!-- img -->
				</div>
			<c:forEach var="hash" items="${select_hash}">
            	<div class="hashtags">#${hash.hash_name }</div> 
			</c:forEach>

				<textarea class="food_text_review a" name="review_text" disabled="true">${selectData_review[0].review_text }

                </textarea>

				<div class="modify">
					<input class="edit_text_review viewbtn" type="button" value="수정"
						onclick="enableTextareas()"> 
					<a href="delete_review?review_id=${review_id}"role="button" class="del_text_review viewbtn" onclick="enableTextareas()">
						삭제
					</a>
<!-- 					<input class="del_text_review viewbtn" type="button" value="삭제" -->
<!-- 						onclick="enableTextareas()">  -->
					<a href="bulletin">목록</a>
				</div>
				</form>
			</article>
		</section>
	<section>
		<!-- 강신영  -->
		<div class="comments">
			<div class="comment_word">
				<div>댓글</div>
				<div class="comment_count">0</div>
			</div>
			<div class="comment_box"></div>
			<div>
				<textarea class="input_text" type="text" value="댓글을 남겨주세요."
					maxlength="300"></textarea>
				<input class="btn_txt" type="button" value="등록">
			</div>
			<div class='submit_box' style="display: none"></div>
			<div class='reple_btn_txt' style="display: none"></div>
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
	
	function submit_text(){
		
	}

	function saveChanges() {
		// 수정된 리뷰 내용을 가져옵니다.
		let updatedReviewText = document.querySelector('.a').value;
		 
		// 이제 수정된 내용을 서버로 전송하는 코드를 추가할 수 있습니다.
		// 여기에서는 간단한 메시지를 출력합니다.
		alert('수정 내용을 저장합니다: ' + updatedReviewText);
		console.log(updatedReviewText);
		let reviewId = document.querySelector('#review_id').value;
		let form = document.querySelector('form');
		
		 // 수정된 내용을 폼의 hidden input에 설정합니다.
	    let hiddenInput = document.createElement('input');
	    hiddenInput.type = 'hidden';
	    hiddenInput.name = 'updatedReviewText';
	    hiddenInput.value = updatedReviewText;
	    form.appendChild(hiddenInput);
	 // review_id 값을 폼의 hidden input으로 추가합니다.
	    let reviewIdInput = document.createElement('input');
	    reviewIdInput.type = 'hidden';
	    reviewIdInput.name = 'review_id';
	    reviewIdInput.value = reviewId;
	    form.appendChild(reviewIdInput);

	    
	 	// 폼을 서버로 제출합니다.
	    form.submit();
	 	
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
	

	comment();
	text_focus();

	function comment() {
		document
				.querySelector(".btn_txt")
				.addEventListener(
						"click",
						function() {
							let text = document.querySelector(".input_text").value;
							let review_id = new URLSearchParams(
									window.location.search).get("review_id");
							//window.location.href = ""

							if (text != "") {
								let html = "";
								html += `<div class="reple_box">`
								html += "<div style='display: inline-block; width: 60%;'>작성자</div>";
								html += `<input class='del_btn' type=button value='X' style='font-size: 10px;'>`;
								html += `<div style='display: inline-block;'>${text}</div>`
								html += "<input class='reple_btn' type=button value='ㄴ' style='font-size: 10px;'>"
								// console.log(document.querySelector(".comment_box"));
								document.querySelector(".comment_box").innerHTML += html;
								document.querySelector(".input_text").value = "댓글을 남겨주세요.";
							} else
								alert("댓글을 입력해주세요.");

							del_reple();
							reple_count()

							window.location.href = "insert_comment_review?review_id="
									+ review_id + "&ctext=" + text
						});
	}

	function reple_count() {
		document.querySelector(".comment_count").innerText = document
				.querySelectorAll(".reple_box").length;
	}

	function reple_comments(z) {
		let replebtns = document.querySelectorAll(".reple_btn_txt")
		let submitbox = document.querySelectorAll(".submit_box")
		for (let j = 0; j < submitbox; j++)
			console.log(replebtns)
		for (let i = 0; i < replebtns.length; i++) {
			replebtns[i]
					.addEventListener(
							"click",
							function() {
								let review_id = new URLSearchParams(
										window.location.search)
										.get("review_id");
								let text = document
										.querySelector(".reple_input_text").value;
								let pid = submitbox[z].parentNode
										.querySelector(".reple_id").innerText
								console.log(pid);
								window.location.href = "insert_reple_comment_review?review_id="
										+ review_id
										+ "&ctext="
										+ text
										+ "&pid=" + pid
							})
		}
	}

	function text_focus() {
		document.querySelector(".input_text").addEventListener("click",
				function() {
					document.querySelector(".input_text").value = "";
				});
	}

	get_json();
	function get_json() {
		const xhr = new XMLHttpRequest();
		let data = new URLSearchParams(window.location.search).get("review_id");
		xhr
				.open("GET",
						`http://localhost:8080/recipick/comment_load_review?review_id=\${data}`);
		xhr.send();

		window
				.addEventListener(
						"load",
						function() {
							xhr.onload = function() {
								console.log(xhr.responseText);
								let json = JSON.parse(xhr.responseText)

								for (let i = 0; i < json.length; i++) {
									let html = "";
									let margin = json[i].lv * 30;
									html += `<div class="reple_box" style="margin: 0 \${margin}px">`
									html += `<div class="uname" style="display: inline-block; width: 60%;">\${json[i].uname}</div>`;
									html += `<input class='del_btn' type=button value='X' style='font-size: 10px;'>`;
									html += `<textarea class='reple_text' style="display: inline-block;" disabled>\${json[i].comment_text}</textarea>`
									html += "<input class='reple_btn' type=button value='ㄴ' style='font-size: 10px;'>"
									html += `<div class="reple_id" style="display: none">\${json[i].comment_id}</div>`
									html += "<input class='rewrite_btn' type=button value='수정' style='font-size: 10px;'>"
									html += `<div class='submit_box'></div>`
									document.querySelector(".comment_box").innerHTML += html;
								}
								reple_add();
								del_reple()
								comment_btns()
								rewirte_event()
							}
						})
	}
	function reple_add() {
		let btns = document.querySelectorAll(".reple_btn")
		//	 	console.log(btns)
		for (let i = 0; i < btns.length; i++) {
			btns[i]
					.addEventListener(
							"click",
							function() {
								let html = ""
								html += `<textarea class="reple_input_text" type="text" value="댓글을 남겨주세요."maxlength="300"></textarea>`
								html += `<input class="reple_btn_txt" type="button" value="등록">`
								let boxs = document
										.querySelectorAll(".submit_box")
								for (let j = 0; j < boxs.length; j++)
									boxs[j].innerHTML = "";
								boxs[i].innerHTML = html;
								reple_comments(i);
							})
		}

		//	 	reple_add()
	}

	function del_reple() {
		let reple = document.querySelectorAll(".del_btn");
		let submitbox = document.querySelectorAll(".submit_box")
		console.log(reple)
		for (let i = 0; i < reple.length; i++) {
			reple[i].addEventListener("click",
					function() {
						reple[i].parentNode.remove();
						let review_id = new URLSearchParams(
								window.location.search).get("review_id");
						console.log(submitbox[i].parentNode)
						let cid = submitbox[i].parentNode
								.querySelector(".reple_id").innerText
						console.log(cid)
						window.location.href = "del_comment_review?review_id="
								+ review_id + "&cid=" + cid
					});
		}
	}

	function rewirte_event() {
		let rewrite_btns = document.querySelectorAll(".rewrite_btn")
		let reples = document.querySelectorAll(".reple_text")
		console.log(rewrite_btns)
		for (let i = 0; i < rewrite_btns.length; i++) {
			rewrite_btns[i]
					.addEventListener(
							"click",
							function() {
								if (reples[i].disabled) {
									reples[i].disabled = false;
									// 			    	 console.log("gggg")

								} else {
									reples[i].disabled = true;
									let review_id = new URLSearchParams(
											window.location.search)
											.get("review_id");
									let cid = reples[i].parentNode
											.querySelector(".reple_id").innerText
									let ctext = reples[i].value
									console.log(ctext)
									window.location.href = "update_comment_review?review_id="
											+ review_id
											+ "&cid="
											+ cid
											+ "&ctext=" + ctext
								}
							})
		}
	}
</script>
<script type="text/javascript" src="resources/assets/js/search_event.js"></script>
<c:if test="${memberdto == null}">
	<script>
		console.log("ggggg")
		function comment_btns() {
			let del_btn = document.querySelectorAll(".del_btn")
			for (let i = 0; i < del_btn.length; i++)
				del_btn[i].style.display = "none";
			console.log(del_btn)
			let reple_btn = document.querySelectorAll(".reple_btn")
			for (let i = 0; i < reple_btn.length; i++)
				reple_btn[i].style.display = "none";
			let rewrite_btn = document.querySelectorAll(".rewrite_btn")
			for (let i = 0; i < rewrite_btn.length; i++)
				rewrite_btn[i].style.display = "none";
			console.log(reple_btn)
		}
	</script>
</c:if>

<c:if test="${memberdto != null}">
	<script>
		console.log("aaaaa")
		function comment_btns() {
			// 			console.log(document.querySelector(".uname").innerText)
			let uname = document.querySelectorAll(".uname")
			// 			console.log(uname)
			for (let i = 0; i < uname.length; i++) {
				if (uname[i].innerText != "${memberdto.uname}") {
					btns_off(i)
				}
			}
			if (document.querySelector(".uname").innerText == "${memberdto.uname}") {
				console.log("f")
			}
		}

		function btns_off(z) {
			let del_btn = document.querySelectorAll(".del_btn")
			del_btn[z].style.display = "none";
			let reple_btn = document.querySelectorAll(".reple_btn")
			reple_btn[z].style.display = "none";
			let rewrite_btn = document.querySelectorAll(".rewrite_btn")
			rewrite_btn[z].style.display = "none";
		}
	</script>
</c:if>
