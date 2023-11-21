<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
main {
	/* border: 3px solid red; */
	display: flex;
	align-items: center;
	flex-direction: column;
}

section {
	/* border: 2px solid blue; */
	width: 85%;
	position: relative;
}

/* 이미지를 media_box에 맞게 조절 */
#media_box img {
	max-width: 100%;
	/* 이미지가 media_box의 최대 너비를 채우도록 설정 */
	max-height: 100%;
	/* 이미지가 media_box의 최대 높이를 채우도록 설정 */
}
#media img {
	width: 30px;
	height: 30px;
	margin-bottom: 20px;
	margin: 10px;
}

#media div:nth-child(n) {
	display: inline-block;
}

#font {
	padding-left: 8px;
	vertical-align: baseline;
	margin-bottom: -15px;
	margin-top: 15px;
}

#font div {
	display: inline-block;
}

#font>div>select {
	border: none;
}

#font :nth-child(n) {
	margin-bottom: 10px;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	margin-right: 5px;
}

#font img {
	width: 20px;
	height: 20px;

}

.bold {
	vertical-align: bottom;
}

.selected_board {
	font-weight: bold;
	margin-top: 75px;
	font-size: 25px;
	margin-bottom: 20px;
}

#board_name textarea {
	padding-left: 5px;
	color: gray;
	font-size: 17px;
	margin: 10px 0;
	/*    margin-left: 5px;*/
	/* border: none; */
	width: 99%;
	margin-bottom: 40px;
	resize: none;
}

#content input {
	font-size: 18px;
	padding-left: 0.5%;
	color: gray;
	margin-left: 1%;
	width: 96.5%;
	height: 700px;
	margin-bottom: 20px;
}

.title_name,
.write_1,
#write {
	display: inline-block;
	border-radius: 8px;
	margin-left: 2%;
	background-color: rgba(207, 207, 207, 0.562);
	font-size: 16px;
	font-weight: bold;
	height: 30px;
	line-height: 1.8;
	text-align: center;
	width: 60px;
	cursor: pointer;

}

.title_name {
	vertical-align: top;
	margin-top: 18px;
}

.borad_select {
	margin: 20px 0;
	margin-left: 10px;
	margin-bottom: 20px;
	border: none;
	font-weight: bold;
	cursor: pointer;
}

.write_1 {
	/* border: 1px solid rgb(230, 126, 34);
    background-color: rgb(230, 126, 34); */
	/* font-size: 18px; */
	border-radius: 5px;
	/* padding-top: 3px; */
	text-align: center;
	height: 30px;
	font-weight: bold;
	/* color: white; */
	/* width: 8%; */
	display: inline-block;
	margin-top: 5px;
	margin-left: 1%;
	cursor: pointer;
	vertical-align: top;

}

#write {
	line-height: 35px;
	text-align: center;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-left: 89%;
	/* background-color: rgb(230, 126, 34); */
	/* border: none; */
	width: 10%;
	height: 35px;
	/* color: white; */
	font-size: 18px;
	/* font-weight: bold; */
	border-radius: 5px;
	cursor: pointer;
}

select {
	font-size: 18px;
}

option {
	font-size: 18px;
}

.media_box {
	border: 1px solid black;
	width: 100%;
	height: 500px;
	font-size: 20px;
	font-weight: bold;
	text-align: center;
	/* margin-left: 300px; */
	margin-bottom: 20px;
	line-height: 25;

}

.explanation {
	margin-top: 15px;
	padding-left: 5px;
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 20px;
	white-space: wrap;
	width: 99%;
	height: 100px;
	resize: none;
}

.attach {
	display: flex;
	margin-left: 15px;
}

.attach div {
	margin-right: 20px;
}

.attach img {
	width: 50px;
	height: 50px;
	cursor: pointer;
}

.attach_font {
	/* border: 1px solid blue; */
	display: flex;
	margin-left: 17px;
	margin-bottom: 10px;
}

.attach_font div {
	font-size: 13px;

	font-weight: bold;
}

/* .attach_font div:nth-child(1){
    margin-right: 34px;
}
.attach_font div:nth-child(2){
    margin-right: 30px;
} */

#plus {
	/* border: 1px solid blue; */
	width: 100%;
	height: 30px;
	/* margin-left: 220px; */
	background-color: rgb(230, 126, 34);
	color: white;
	border: none;
	cursor: pointer;
	font-size: 30px;
	line-height: 0.8;
	border-radius: 5px;
	margin-bottom: 100px;
	text-align: center;
	/* �닔�젙�궡�슜: 
    cursor: pointer;
    font-size: 30px;
    line-height: 1;
    border-radius: 5px;
    �쟻�슜
    */
}

.write_explaintext {
	font-size: 16px;

}

#plus_btn input {
	font-size: 16px;
}

.recipick_hashtag {
	padding-left: 1%;
	margin-top: 40px;
	margin-bottom: 25px;
	border-radius: 5px;
	border: 1px solid rgb(160, 158, 158);
	font-size: 18px;
	width: 99%;
	height: 40px;
	/* margin-left: 2%;  */
}

.recipick_hashtag {
	
	/* padding-left: 7px; */
	/* margin-left: 13%;  */
	width: 130px;
	margin-right: 30px;
	text-align: center;
	border-radius: 5px;
}

.hashNotice {
	height: 30px;
	width: 600px;
	font-size: 20px;
	font-weight: bold;
}
.hashpull_box{
	width:90%;
	margin-bottom:40px;
/*	margin-left: 50px;*/
	
}
.hashtag_box {
	/* border: 1px solid red; */
	width: 250px;
	/*    height: 100px;*/
	    display: flex;
}

.hashtag_box>div:nth-child(2) {
	width: 300px;
	height: 100px;
}

.hashtag_box>div:nth-child(2) {
	font-size: 16px;
	width: 30%;
	height: 35px;
	border-radius: 5px;
	background-color: rgba(207, 207, 207, 0.562);
	margin-top: 45px;
	margin-right: 0px;
	text-align: center;
	line-height: 2;
	cursor: pointer;

}

.hashtag_minus,
.quantity_minus {
	width: 20px;
	height: 20px;
	background-color: rgb(236, 235, 235);
	font-size: 40px;
	color: black;
	line-height: 0.2;
	position: absolute;
	top: 0;
	right: 1px;
	text-align: center;
	 cursor: pointer; 
}

.hashtags {
	color: black;
	display: inline-block;
	border: 2px solid orange;
	background-color: white;
	width: 17%;
	height: 45px;
	line-height: 45px;
	border-radius: 15px;
	text-align: center;
	margin-top: 10px;
	margin-right: 2%;
	font-size: 18px;
	position: relative;
	border-radius: 5px;
}
.writepageReview{
	font-size: 20px;
	font-weight: bold;
	width: 99%;
/*	margin-left: 20px;*/
	margin-bottom: 20px;
	
}

</style>
</head>
<body>


	<%-- 	<%@ include file="header.jsp"%> --%>
	<main>
		<nav>
<%-- 			<%@ include file="mobile_console.jsp"%> --%>
		</nav>
		<section>
			<!-- 이정성 김호연 수정 함-->
			<div class="selected_board">선택된 게시판</div>
			<div>
				<select class="borad_select">
					<option value="후기 게시판">후기 게시판</option>
					<%
					String adminRole = "";
					Cookie[] cookies = request.getCookies();
					if (cookies != null) {
						for (Cookie cookie : cookies) {
							if ("admin".equals(cookie.getName())) {
						adminRole = cookie.getValue();
						break;
							}
						}
					}
					%>
					<%
					if ("관리자".equals(adminRole)) {
					%>
					<option value="공지사항">공지사항</option>
					<%
					}
					%>
				</select>
			
				
			</div>
			<form id="myForm" action="/recipick/addPage" method="post">
			<div id="board_name">
				<textarea class="submit" name="review_title" style="overflow: hidden"
					placeholder="제목을 입력해주세요(20자 제한)" maxlength="20">${dto.review_title }</textarea>
			</div>

			<div class="attach">
				<div>
					<img
						src="https://cdn1.iconfinder.com/data/icons/document-edit-line/64/Document-doc-file-folder-bundle-add-new-64.png">
					<input type="file" name="pic" id="file_input" style="display: none">
				</div>
			</div>
			
			<div class="attach_font">
				<div>첨부파일</div>
			</div>
			<div class="media_box" id="media_box">사진을 올려주세요</div>
			<div class="hashpull_box">
				<div class="hashNotice">해쉬태그를 입력해 주세요!(최대 5개)</div>
				<div class="hashtag_box">
					<div>
						<input type="text" name="viewhash" class="recipick_hashtag"
							value="#해시태그" maxlength="7">
					</div>
					<div id="hash_submit" class="btns_hover">등록</div>
				</div>

				<br>
				<div class="hashtag_all"></div>
			</div>
			<div class="writepageReview">
				음식에 대한 설명
				<textarea name="review_text" maxlength="300" class="explanation submit"
					placeholder="후기를 작성해 주세요(300자 제한)">${dto.review_text }</textarea>

			</div>
			<div class="write_explaintext btns_hover"></div>
			<!-- <div id="plus">+</div> -->
<!-- 			<div id="write" class="btns_hover" onclick="submitForm()">등록</div> -->
			<input id="write" class="btns_hover" type="submit" value="등록">
			</form>
			</section>
		
	</main>
<%-- 	<%@ include file="footer.jsp"%> --%>
	<script>
		add_hashtags();

		function add_hashtags() {
			document
					.querySelector("#hash_submit")
					.addEventListener(
							"click",
							function() {
								if (document.querySelector(".recipick_hashtag").value == "") {
									alert("해시태그를 입력해주세요")
								} else {
									let hashtag = document
											.querySelector(".recipick_hashtag").value;
									if (hashtag.includes('#'))
										hashtag = hashtag.substring(1)
									html = "";
									html += `<div class="hashtags">`
									html += `#` + hashtag //.substring(1)
									html += `<input class="submit" type="hidden" name="viewhash" value="\${hashtag}">`
									html += `<div class="hashtag_minus">-</div>`
									html += `</div>`
									document.querySelector(".hashtag_all").innerHTML += html;

								}
								del_hashtags();
							})
		}

		function del_hashtags() {
			let minus_hash = document.querySelectorAll(".hashtag_minus")
			for (let i = 0; i < minus_hash.length; i++) {
				minus_hash[i].addEventListener("click", function() {
					minus_hash[i].parentNode.remove();
				})
			}
		}
		document.querySelector(".recipick_hashtag").addEventListener("click",
				function() {
					document.querySelector(".recipick_hashtag").value = "";
				})

	 function submitForm() {
        let params = document.querySelectorAll(".submit");
        let aa = "";
        for (let i = 0; i < params.length; i++) {
            if (!(i == 0 || i == params.length - 1)) {
                aa += params[i].value + " ";
            } else if (i == params.length - 1) {
                aa += "," + params[i].value;
            } else {
                aa += params[i].value + ",";
            }
        }
        console.log(aa);
        // window.location.href = "writepage?data=" + aa; // 이 부분을 아래의 코드로 변경
        document.forms["myForm"].action = "writerview"; // 폼의 action을 변경
        document.forms["myForm"].submit(); // 폼 제출
    }

		file_add()
		function file_add() {
			click_fileImg()
			document.querySelector("#file_input").addEventListener(
					"change",
					function() {
						const file = this.files[0];
						if (file) {
							const mediaBox = document
									.querySelector("#media_box");
							// 이미지 파일인 경우에만 처리
							if (file.type.startsWith("image/")) {
								const reader = new FileReader();
								reader.onload = function(e) {
									// 이미지를 생성하고 media_box에 추가
									const img = document.createElement("img");
									img.src = e.target.result;
									mediaBox.innerHTML = ""; // 기존 이미지를 지우고 새 이미지로 대체
									mediaBox.appendChild(img);
								};
								reader.readAsDataURL(file);
							}
						}
					});
		}
		function click_fileImg() {
			document.querySelector(".attach").addEventListener("click",
					function() {
						document.querySelector("#file_input").click();
					});
		}
	</script>
	<script type="text/javascript" src="resources/assets/js/mobile_pop.js"></script>
	<script type="text/javascript" src="resources/assets/js/btns_hover.js"></script>
</body>
</html>