<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
 main{
    /* border: 1px solid red; */
    display: flex;
    align-items: center;
    flex-direction: column;
}
section{
    /* border: 1px solid blue; */
    width: 85%;
}

.title{
    display: flex;
    margin-top: 100px;
    /* border: 1px solid red; */
    width: 100%;
}
.title > div:nth-child(1){
    /* border: 1px solid blue; */
    width: 100%;
    font-size: 30px;
    margin-bottom: 20px;
    font-weight: bold;
    
    
}

/* .hashtag_box > div:nth-child(1){
    margin-bottom: 10px;
} */
.title div:nth-child(n+2){
    border-radius: 8px;
    margin-top: 5px;    
    background-color: rgba(207, 207, 207, 0.562);
    font-size: 16px;
    font-weight: bold;
    height: 30px;
    line-height: 1.8;
    text-align: center;
    width: 100px;
    cursor: pointer;
}
.title div:nth-child(2){
    margin-right: 1%;
}

.bigbox{
    margin-top: 50px;
}
.topbox{
    margin-bottom: 30px;
    margin-left: 45px;
}
.topbox > div:nth-child(n){
    display: inline-block;
}
.making_how{
	font-size: 16px;
	font-weight: bold;
	margin-left: 10px;
}

.topbox > div:nth-child(1){
    width: 30px;
    height: 30px;
    background-color: rgb(230, 126, 34);
    text-align: center;
    border-radius: 30px;
    line-height: 2;
    color: white;
    font-size: 16px;
}
.topbox > div:nth-child(2){
    font-size: 20px;   
    margin-left: 10px;
    font-weight: bold;
}
.del_recipage{
    display: inline-block;
    font-size: 12px;
    margin-left: 87%;
    vertical-align: top;
    border: 1px solid gray;
    border-radius: 4px;
    background-color: gray;
    width: 50px;
    text-align: center;
    height: 30px;
    line-height: 30px;
    cursor: pointer;
    
}
 
/*    .topbox div:nth-child(2){*/
/*    font-size: 20px;   */
/*    margin-left: 10px;*/
/*    font-weight: bold;*/
/*}*/
 

.media_box{
    border: 1px solid black;
    width: 90%;
    height: 500px;
    font-size: 20px;
    font-weight: bold;
    text-align: center;
    /* margin-left: 300px; */
    margin-bottom: 20px;
    margin-left: 5%;
/*    line-height: 25;*/
}

.media_box > img {
	margin-top: 180px;
}
.media_box_pic{
	font-size: 20px;
	margin-top: 210px;
}
.explanation{
    font-size: 20px;
    font-weight: bold;
    margin-left: 5%;
    margin-bottom: 10px;
/*    margin-bottom: 200px;*/
}
.explanation_context{
	border: 1px solid black;
    font-size: 16px;
    font-weight: bold;
    width: 90%;
    height: 100px;
    margin-left: 52px;
    margin-top: 5px;
    margin-bottom: 30px;
}
.attach{
    display: flex;
    margin-left: 49px;
}
.attach div{
    margin-right: 20px;
}
.attach img{
    width: 50px;
    height: 50px;
}
.attach_font{
    /* border: 1px solid blue; */
    display: flex;
    margin-left: 50px;
    margin-bottom: 10px;
}
.attach_font div{
    font-size: 13px;
    
    font-weight: bold;
}
.attach_font div:nth-child(1){
    margin-right: 34px;
}
.attach_font div:nth-child(2){
    margin-right: 30px;
}

.plus{
    /* border: 1px solid blue; */
    width: 90%;
    height: 30px;
    /* margin-left: 220px; */
    background-color: rgb(230, 126, 34);
    color: white;
    border: none;
    cursor: pointer;
    font-size: 30px;
    line-height: 0.8;
    border-radius: 5px;
    margin-bottom: 30px;
    margin-left: 5%;
    text-align: center;
    /* 
    cursor: pointer;
    font-size: 30px;
    line-height: 1;
    border-radius: 5px;
 
    */
}

.plus_btn input{
    font-size: 16px;
}
.all2 {
    /* border: 1px solid black; */
}

.all2 > img {
    margin-top: -200px; 
    width: 100%;
    height: 500px;
}
.recipick_title{
    font-size: 20px;
    font-weight: bold;
    width: 85%;
    margin-bottom: 20px;
    height: 26px;
    margin-left: 50px;
    margin-top: 30px;
/*    margin-right: 10px;*/
    
}
.title_box{
    width: 100%;
}
.title_submit, .food_explain_submit{
    display: inline-block;
    font-size: 16px;
    width: 50px;
    height: 35px;
    border-radius: 5px;
    background-color: rgba(207, 207, 207, 0.562);
    /* margin-top: 12px; */
    text-align: center;
    line-height: 2;
    cursor: pointer;
    vertical-align: top;
}
.show_titlename, .food_explain{
    font-size: 20px;
    font-weight: 900;
    margin-bottom: 20px;
    border: 1px solid gray;
    height: 30px;
    width: 80%;
    display: inline-block;
    word-wrap: break-word;
}
.recipick_hashtag {
    padding-left: 1%;
    margin-top: 20px;
    margin-bottom: 40px;
    margin-left: 5px;
    border-radius: 5px;
    border: 1px solid rgb(160, 158, 158);
    font-size: 18px;
    width: 99%;
    height: 40px;
/*    margin-left: 50px;*/
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
.hashtag_ex{
	font-size: 20px;
	font-weight: bold;
}
.content_ex{
	font-size: 20px;
	font-weight: bold;
}
.hashtag_border{
	width: 90%;
/*	height: 200px;*/
/*	border: 1px solid orange;*/
	margin-left: 51px;
	margin-bottom: 40px;
}
.hashtag_box{
    /* border: 1px solid red; */
    width: 300px;
    height: 100px;
    display: flex;
}
.food_ex{
	font-size: 20px;
	font-weight: bold;
	width: 90%;
	margin-left: 51px;
}
.hashtag_box > div:nth-child(2){
    font-size: 16px;
    width: 30%;
    height: 35px;
    border-radius: 5px;
    background-color: rgba(207, 207, 207, 0.562);
    margin-top: 25px;
    margin-right: 0px;
    text-align: center;
    line-height: 2;
    cursor: pointer;
}
.hashtag_minus, .quantity_minus{
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
    margin-top: 30px;
    margin-right: 2%;
    margin-left: 5px;
/*	margin-left: 50px;*/
    font-size: 18px;
    position: relative;
}
.del_titlename , .del_explain{
    font-size: 16px;
    background-color: rgba(207, 207, 207, 0.562); 
    cursor: pointer;
    display: inline-block;
    vertical-align: top;
    text-align: center;
    width: 50px;
    height: 40px;
    line-height: 40px;
    margin-left: 10px;
    border-radius: 5px;
}
.max {
    color: red;
    margin-top: 20px;
    font-size: 16px; 
    margin-left: 20px;
    font-weight: bold;
    display: none;
}
.img_add { 
    border: 1px solid black;
    width: 100%;
    height: 500px;
    /* margin-top: -130px; */
    text-align: center;
    

    
}

.img_add > div:nth-child(2){
    height: 100px;
    font-size: 20px;
}

.recipick_content0, .recipick_content1{
    width: 90%;
    height: 40px;
    font-size: 18px;
    border-radius: 5px;
    text-align: center;
    
}

.content_all > div:nth-child(1),
.content_all > div:nth-child(2){
    width: 35%;
    margin-right: 10px;
}
.content_all > div:nth-child(1){
    margin-right: 10px;
}
#quantity_submit{
    font-size: 16px;
    width: 30%;
    height: 35px;
    border-radius: 5px;
    background-color: rgba(207, 207, 207, 0.562);
    margin-top: 6px;
    text-align: center;
    line-height: 2;
    cursor: pointer;
    margin-left: 20px;
}

.content_all {
    /* border: 1px solid red; */
    margin-top: 20px;
    width: 50%;
    display: flex;
    margin-bottom: 30px;
/*    margin-left: 40px;*/
    /* justify-content: space-between; */
    /* margin-left: 1%; */
}
.content_all_border{
/*	border: 1px solid orange;*/
	width: 90%;
	margin-left: 51px;
}

input {
    color:gray;
}
.quantity_box{
    display: flex;
    width: 100%;
    flex-wrap: wrap;
    margin-left: 5px;
    margin-bottom: 30px;
    
    
    /* border: 1px solid blue; */
    /* margin-left: 2%; */
    
}
.quantity_content{
	
}
.input_info{
    
}
.quantity{
/*    width: 110px;*/
/*    height: 30px;*/
/*    border: 1px solid black;*/
/*    position: relative;*/
/*    line-height: 2;*/
/*    margin-right: 2%;*/
/*    vertical-align: top;*/

	color: black;
    display: inline-block;
    border: 2px solid orange;
    background-color: white;
    width: 14%;
    height: 45px;
    line-height: 45px;
    border-radius: 15px;
    text-align: center;
    margin-top: 30px;
    margin-right: 2%;
    font-size: 18px;
    position: relative;
}
.quantity > div:nth-child(1){
    font-size: 16px;
}
.quantity_box > div:nth-child(1){
    /* margin-right: 2%; */
}
.food_explanation{
    border: 1px solid black;
    font-size: 16px;
    font-weight: bold;
    width: 86%;
    height: 50px;
    margin-top: 10px;
}
.food_explain, .del_explain{
    margin-top: 20px;
    font-size: 16px;
}

#explanation{
    border: 1px solid black;
    font-size: 16px;
    width: 90%;
    height: 200px;
    margin-top: 20px;
    margin-left: 5%;
    margin-bottom: 30px;
}

 </style>

<body>
<%-- 	<%@ include file="header.jsp"%> --%>
	<main>
		<nav>
<%-- 			<%@ include file="mobile_console.jsp"%> --%>
		</nav>
		<section>
			<!-- 이정성 -->
			<div class="title">
				<div>레시피 작성 페이지</div>
				<div class="btns_hover">취소</div>
				<div class="btns_hover writing">작성</div>
			</div>
			<form action="recipePage1" id="newRecipePage" method="POST" enctype="multipart/form-data" accept-charset="utf-8">
				<div class="title_box">
					<textarea type="text" name="recipe_title" class="recipick_title"
						maxlength="70">레시피 제목을 작성해주세요!</textarea>
				</div>
				<!-- 김호연 -->
				<div class="all2">
					<div class="attach">
						<div>
							<img class="attach_img"
								src="https://cdn1.iconfinder.com/data/icons/document-edit-line/64/Document-doc-file-folder-bundle-add-new-64.png">
							<input type="file" name="mainpic2" id="file_input"
								style="display: none">
						</div>
					</div>
					<div class="attach_font">
						<div>첨부파일</div>
					</div>
					<div class="media_box img_add" id="media_box">
						<img
							src="https://cdn3.iconfinder.com/data/icons/font-awesome-regular-1/512/image-64.png">
						<div>완성된 음식 사진을 올려주세요 !</div>
					</div>
				</div>
				<div class="hashtag_border">
					<div class="hashtag_ex">해시태그를 입력해주세요!(최대 5개)</div>
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
				</div>
				<!-- <div class="max">해시태그는 5개까지 입력할 수 있습니다.</div> -->
				<div class="content_all_border">
					<div class="content_ex">재료명과 수량을 입력해주세요!</div>
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
				</div>
				<div>
					<div class="food_ex">
						음식에 대한 설명
						<textarea class="food_explanation" name="maintext"></textarea>
					</div>
				</div>

				<!-- 이정성
                + 버튼 누르면 for문을 통해 추가로 작성 가능 -->
				<div id="newpage">

					<div class="bigbox">
						<div class="topbox">
							<div class="bigbox_num">1</div>
							<input class="bigbox_num2" type="hidden" name="bigbox_num"
								value=1>
							<div class="making_how">만드는 방법</div>
							<div class="delete_butt">삭제</div>
						</div>
						<div class="attach">
							<div>
								<img class="attach_img"
									src="https://cdn1.iconfinder.com/data/icons/document-edit-line/64/Document-doc-file-folder-bundle-add-new-64.png">
								<input type="file" name="detail_pic2" id="file_input" multiple="multiple"
									style="display: none">
							</div>
						</div>
						<div class="attach_font">
							<div>첨부파일</div>
						</div>
						<div class="media_box">

							<div class="media_box_pic">레시피 사진, 동영상을 올려주세요!</div>
						</div>
						<div class="explanation">만드는 방법 설명</div>
					</div>
					<textarea class="explanation_context" type="text"
						  name="detail_text" value="만드는 방법을 설명해주세요"></textarea>
				</div>

				<div class="plus">+</div>
			</form>
		</section>

	</main>
<%-- 	<%@ include file="footer.jsp"%> --%>
	<script>
	hashs();
		function hashs() {
			let hashtags = document.querySelectorAll(".hashtags")
			console.log("길이" + hashtags.length);
			for (let i = 0; i < hashtags.length; i++) {
				console.log(hashtags[i].textContent);
			}

		}
		
		click_file()
		function click_file(){
			let attach = document.querySelectorAll(".attach_img")
			let btns = document.querySelectorAll("#file_input")
			console.log(attach)
			for(let i = 0 ;i<attach.length ;i++){
				attach[i].addEventListener("click", function(){
					btns[i].click();
					console.log("ck")
					file_add()
				})
			}
			
		}
		
		
		function file_add() {
			let file_inputs = document.querySelectorAll("#file_input")
			for(let i = 0 ; i<file_inputs.length ;i++){
				file_inputs[i].addEventListener("change",function() {
				console.log(i)
					const file = this.files[i];
					console.log(this.files[i])
					let mediaBox = document.querySelectorAll("#media_box");
					console.log(mediaBox)
					
						
						// 이미지 파일인 경우에만 처리
						if (file.type.startsWith("image/")) {
							const reader = new FileReader();
							reader.onload = function(e) {
								// 이미지를 생성하고 media_box에 추가
								const img = document.createElement("img");
								img.src = e.target.result;
								mediaBox[i].innerHTML = ""; // 기존 이미지를 지우고 새 이미지로 대체
								mediaBox[i].appendChild(img);
							};
							reader.readAsDataURL(file);
						}
					
				});
			}
		}

// 		function click_fileImg() {
// 		    const attachImgs = document.querySelectorAll(".attach_img");
// 		    attachImgs.forEach(function(img) {
// 		        img.addEventListener("click", function() {
// 		            img.nextElementSibling.click();
// 		        });
// 		    });
// 		}


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
								html += `<input type="hidden" name="food_name" value="\${name}">`
								html += `<input type="hidden" name="food_value"value="\${num}">`
								html += `<input type="hidden" name="recipick_content01" value= "\${content01}"> `
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
									html += `<input type="hidden" name="hash_name" value="\${hashtag}">` //.substring(1)
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
			let a = document.querySelector(".plus").addEventListener("click",function() {
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
				html += `				<input type="file" name="detail_pic2" id="file_input" style="display: none" multiple="multiple">`
				html += `         </div>`
				html += `     </div>`
				html += `     <div class="attach_font">`
				html += `         <div>첨부파일</div>`
				html += `     </div>`
				html += `     <div class="media_box"><div class="media_box_pic">레시피 사진, 동영상을 올려주세요!</div></div>`
				html += `     <div class="explanation">만드는 방법 설명</div>`
				html += `     <textarea class="explanation_context" name="detail_text"`
				html += `		value="만드는 방법을 설명 해 주세요!"></textarea>`
				html += ` </div>`
				html += ` </div>`
				// console.log(html)
				let domParser = new DOMParser();
				
				let a = domParser.parseFromString(html, "text/html");
				
				document.querySelector("#newpage").append(a.querySelector(".bigbox"));
				
				del_recicontents()
				click_file()
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
			let bigbox_nums = document.querySelectorAll(".bigbox_num2")
			console.log(bigbox_nums)
			for (let k = 0; k < bigbox_nums.length; k++) {
				bigbox_nums[k].innerText = k + 1
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
<!-- 	<script type="text/javascript" src="assets/js/header_contents.js"></script>

	<script type="text/javascript" src="assets/js/search_event.js"></script>
	<script type="text/javascript" src="assets/js/mobile_pop.js"></script>

	<script type="text/javascript" src="assets/js/btns_hover.js"></script> -->

</body>
</html>