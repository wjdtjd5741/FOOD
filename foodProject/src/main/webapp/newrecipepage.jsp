<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/newrecipepage.css">
<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/css/mobile_console.css">
<link rel="stylesheet" href="assets/css/j/newrecipepage_sec1.css">
<link rel="stylesheet" href="assets/css/h/newrecipepage_sec2.css">
<link rel="stylesheet" href="assets/css/h/media/newrecipepage_sec2.css">
<link rel="stylesheet" href="assets/css/j/newrecipepage_sec3.css">
<link rel="stylesheet" href="assets/css/j/media/newrecipepage.css">
</head>
<body>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<nav>
			<%@ include file="mobile_console.jsp"%>
		</nav>
		<section>
			<!-- 이정성 -->
			<div class="title">
				<div>레시피 작성 페이지</div>
				<div class="btns_hover">취소</div>
				<div class="btns_hover writing">작성</div>
			</div>
			<form action="recipePage1" id="newRecipePage">
				<div class="title_box">
					<textarea type="text" name="recipick_title" class="recipick_title"
						value="레시피 제목을 작성해주세요" maxlength="70"></textarea>
				</div>
				<!-- 김호연 -->
				<div class="all2">
					<div class="attach">
						<div>
							<img class="attach_img"
								src="https://cdn1.iconfinder.com/data/icons/document-edit-line/64/Document-doc-file-folder-bundle-add-new-64.png">
							<input type="file" name="file_input" id="file_input"
								style="display: none">
						</div>
					</div>
					<div class="attach_font">
						<div>첨부파일</div>
					</div>
					<div class="media_box img_add" id="media_box">
						<img
							src="https://cdn3.iconfinder.com/data/icons/font-awesome-regular-1/512/image-64.png">
						<div>레시피 사진을 올려주세요 !</div>
					</div>
				</div>
				<div class="hashtag_box">
					<div>
						<input type="text" class="recipick_hashtag" value="#해시태그"
							maxlength="7">
					</div>
					<div id="hash_submit" class="btns_hover">등록</div>
				</div>
				<br>
				<div class="hashtag_all">
					<%-- --%>
				</div>
				<!-- <div class="max">해시태그는 5개까지 입력할 수 있습니다.</div> -->
				<div class="content_all">
					<div>
						<input type="text" class="recipick_content0" value="재료명"
							maxlength="10">
					</div>
					<div>
						<input type="text" class="recipick_content1" value="수량"
							maxlength="10">
					</div>
					<div id="quantity_submit" class="btns_hover">등록</div>
				</div>
				<div class="quantity_box">
					<%-- --%>
				</div>
				<div>
					<textarea class="food_explanation" value="음식에 대한 설명을 입력해주세요"></textarea>
				</div>
				</div>

				<!-- 이정성
                + 버튼 누르면 for문을 통해 추가로 작성 가능 -->
				<div id="newpage">

					<div class="bigbox">
						<div class="topbox">
							<div class="bigbox_num">1</div>
							<div>만드는 방법</div>
							<div class="delete_butt">삭제</div>
						</div>
						<div class="attach">
							<div>
								<img
									src="https://cdn1.iconfinder.com/data/icons/document-edit-line/64/Document-doc-file-folder-bundle-add-new-64.png">
							</div>
						</div>
						<div class="attach_font">
							<div>첨부파일</div>
						</div>
						<div class="media_box">레시피 사진, 동영상을 올려주세요!</div>
						<div class="explanation">만드는 방법 설명</div>
					</div>
				</div>

				<div class="plus">+</div>
			</form>
		</section>

	</main>
	<%@ include file="footer.jsp"%>
	<script>
	hashs();
		function hashs() {
			let hashtags = document.querySelectorAll(".hashtags")
			console.log("길이" + hashtags.length);
			for (let i = 0; i < hashtags.length; i++) {
				console.log(hashtags[i].textContent);
			}

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
			document.querySelector(".attach_img").addEventListener("click",
					function() {
						document.querySelector("#file_input").click();
					});
		}

		let newRecipePage = document.querySelector('#newRecipePage')
		let writing = document.querySelector(".writing")
		writing.addEventListener("click", function() {
			console.log("newRecipePage");
			newRecipePage.submit();
		})
		food_explanation_clickEvent()
		function food_explanation_clickEvent() {
			document.querySelector(".food_explanation").addEventListener(
					"click", function() {
						document.querySelector(".food_explanation").value = "";
					})
		}

		title_clickEvent();
		function title_clickEvent() {
			document.querySelector(".recipick_title").addEventListener("click",
					function() {
						document.querySelector(".recipick_title").value = "";
					})
		}

		input_nameNnum()
		function input_nameNnum() {
			document
					.querySelector("#quantity_submit")
					.addEventListener(
							"click",
							function() {
								console.log(1);
								let name = document
										.querySelector(".recipick_content0").value
								let num = document
										.querySelector(".recipick_content1").value
										let content01 = (name +":"+num);
								console.log(content01);
								html = "";
								html += `<div class="quantity">`
								html += `    <div>` + name + `:` + num + `</div>`
								html += `<input type="hidden" name="recipick_content01" value= "\${content01}" `
								html += `    <div class="quantity_minus">-</div>`
								html += `</div>`
								document.querySelector(".quantity_box").innerHTML += html;
								del_nameNnum()
							})
		}

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
									console.log(hashtag);
									html = "";
									html += `<div class="hashtags">`
									html += `#` + hashtag //.substring(1)
									html += `<input type="hidden" name="hashs" value="\${hashtag}">` //.substring(1)
									html += `<div class="hashtag_minus">-</div>`
									html += `</div>`
									document.querySelector(".hashtag_all").innerHTML += html;

								}
								del_hashtags();
							})
							<!-- <input type="hidden" value="#ㅁㄴㅇㄹ"> -->
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

		let index = 1;
		plus_recicontents();
		function plus_recicontents() {
			let a = document
					.querySelector(".plus")
					.addEventListener(
							"click",
							function() {
								html = "";
								html += ` <div class="bigbox">`
								html += `     <div class="topbox">`
								html += `         <div class = "bigbox_num">`
										+ (document.querySelectorAll(".bigbox").length + 1)
										+ `</div>`
								html += `         <div>만드는 방법</div>`
								html += `         <div class="del_recipage">삭제</div>`
								html += `     </div>`
								html += `     <div class="attach">`
								html += `         <div>`
								html += `             <img src="https://cdn1.iconfinder.com/data/icons/document-edit-line/64/Document-doc-file-folder-bundle-add-new-64.png">`
								html += `         </div>`
								html += `     </div>`
								html += `     <div class="attach_font">`
								html += `         <div>첨부파일</div>`
								html += `     </div>`
								html += `     <div class="media_box">레시피 사진, 동영상을 올려주세요!</div>`
								html += `     <div class="explanation">만드는 방법 설명</div>`
								html += ` </div>`
								// console.log(html)
								document.querySelector("#newpage").innerHTML += html;
								del_recicontents()
							})
		}

		function del_recicontents() {
			let del_recipage = document.querySelectorAll(".del_recipage")
			for (let k = 0; k < del_recipage.length; k++) {
				del_recipage[k].addEventListener("click", function() {
					del_recipage[k].parentNode.parentNode.remove();
					recount_nums()
				})
			}
		}

		function recount_nums() {
			let bigbox_nums = document.querySelectorAll(".bigbox_num")
			console.log(bigbox_nums)
			for (let k = 0; k < bigbox_nums.length; k++) {
				bigbox_nums[k].innerText = k + 1
			}
		}

		function del_nameNnum() {
			let del_nameNnum = document.querySelectorAll(".quantity_minus")
			for (let z = 0; z < del_nameNnum.length; z++) {
				del_nameNnum[z].addEventListener("click", function() {
					del_nameNnum[z].parentNode.remove();
				})
			}
		}

		reset_content_all()
		function reset_content_all() {
			let input_box = document
					.querySelectorAll(".content_all > div > input")
			for (let i = 0; i < input_box.length; i++) {
				input_box[i].addEventListener("click", function() {
					input_box[i].value = "";
				})
			}
		}
	</script>
	<%-- --%>
	<script type="text/javascript" src="assets/js/header_contents.js"></script>

	<script type="text/javascript" src="assets/js/search_event.js"></script>
	<script type="text/javascript" src="assets/js/mobile_pop.js"></script>

	<script type="text/javascript" src="assets/js/btns_hover.js"></script>

</body>
</html>