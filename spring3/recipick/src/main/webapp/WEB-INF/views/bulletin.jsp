<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	/* 85% */
}

.board {
	margin-top: 50px;
	/* margin-left: 20px; */
	font-size: 35px;
	font-weight: bold;
}

.notice {
	margin-top: 50px;
	/* margin-left: 20px; */
	font-size: 30px;
	font-weight: bold;
}

.notice_content {
	display: inline-block;
	margin: 20px 0;
	/* margin-left: 20px; */
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
	width: auto;
}

@media ( max-width :700px) {
	.board {
		font-size: 30px;
	}
	.notice {
		font-size: 20px;
	}
	.notice_content {
		font-size: 10px;
	}
}

.all {
	/* border: 1px solid red; */
	/* height: 1500px; */
	/* position: relative; */
	/* width: 85%; */
	
}

.bulletin_sec1_all {
	/* border: 1px solid black; */
	width: 100%;
	/* height: 1500px; */
	/* position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%); */
}

.notice_content {
	margin-left: 5px; /* 源��샇�뿰 �닔�젙�븿 */
}

h1 {
	margin-top: 50px;
	margin-left: 20px;
}

h3 {
	margin-top: 20px;
	margin-left: 20px;
}

.bulletin_sec1_all .contents:nth-child(2) {
	margin-left: 10px;
}

.contents {
	display: inline-block;
	font-weight: bold;
	text-align: center;
	border-radius: 7px;
	line-height: 30px;
	margin-top: 20px;
	width: 130px;
	height: 30px;
	padding: 5px;
	font-size: 16px;
	background-color: rgb(221, 214, 214);
	color: black;
	cursor: pointer;
}

.selected_section {
	background-color: rgb(230, 142, 34);
	color: white
}

.list_img, .l2_img {
	text-align: center;
	width: 26%;
}

.list_num, .l2_num {
	width: 10%;
}

.list_title, .l2_title {
	width: 14%;
}

.list_date, .l2_date {
	width: 17%;
}

.list_writer, .l2_writer {
	width: 17%;
}

.list_look, .l2_look {
	width: 10%;
}

.list0 {
	width: 100%;
	/* border: 1px solid black; */
}

.list0 div {
	text-align: center;
	display: inline-block;
	height: 50px;
	line-height: 60px;
	vertical-align: top;
	font-size: 16px;
}

.list2 {
	width: 100%;
	border: 1px solid black;
}

.list2 div {
	display: inline-block;
	height: 180px;
	line-height: 200px;
	vertical-align: top;
	text-align: center;
	font-size: 16px;
}

.bulletin_sec1_all>img {
	margin-top: 15px;
	width: 70%;
	height: 150px;
}

.bottom {
	width: 100%;
	/* border: 5px solid aqua; */
	display: flex;
}

.write {
	margin-top: 17px;
	margin-left: 25%;
	background-color: rgb(230, 142, 34);
	width: 100px;
	height: 40px;
	border-radius: 5px;
	color: white;
	font-size: 17px;
}

.order, .selected {
	width: 30px;
	height: 30px;
	border: none;
	font-size: 15px;
	background-color: rgb(221, 214, 214);
	cursor: pointer;
}

.order_all {
	display: flex;
	margin-left: 38%;
	/* justify-content: center; */
	width: 23%;
	/* display: inline-block; */
	margin-bottom: 20px;
	margin-top: 22px;
	/* border: 5px solid aqua; */
}

.selected {
	background-color: rgb(230, 142, 34);
	color: white;
	border-radius: 5px;
}

.order, .selected, .write {
	/* display: inline-block; */
	text-align: center;
	line-height: 30px;
}

.write {
	cursor: pointer;
	line-height: 40px;
	display: inline-block;
}

@media ( max-width :700px) {
	.contents {
		line-height: 25px;
		width: 100px;
		height: 25px;
		font-size: 13px;
	}
}
/* section1 */
.sec1_head_box {
	/* border: 1px solid red; */
	display: flex;
	height: 50px;
	width: 100%;
	margin-top: 20px;
	background-color: rgba(243, 156, 18, 0.45);
}

.sec1_head_box>div {
	font-size: 16px;
	text-align: center;
	line-height: 3;
	font-weight: bold;
}

.sec1_head_box>div:nth-child(1) {
	width: 7%;
}

.sec1_head_box>div:nth-child(2) {
	width: 50%;
}

.sec1_head_box>div:nth-child(3) {
	width: 20%;
}

.sec1_head_box>div:nth-child(4) {
	width: 16.5%;
}

.sec1_head_box>div:nth-child(5) {
	width: 12.5%;
}

.abox {
	/* border: 1px solid blue; */
	width: 100%;
	cursor: pointer;
	font-size: 20px;
}

.sec1_bbox {
	border-bottom: 1px solid rgba(128, 128, 128, 0.432);
	width: 100%;
	height: 70px;
	display: flex;
	font-size: 20px;
}

.sec1_bbox>a {
	width: 100%;
	cursor: pointer;
/* 	font-size: 20px; */
	text-align: center;
	line-height: 4.5;
	font-weight: 400;
	overflow: hidden;
/* 	text-overflow: ellipsis; */
	white-space: nowrap;
}

.span1 {
	display: inline-block;
	 text-decoration: none;
	color:black;
	cursor: pointer;
	font-size: 20px;
	width: 6%;
}

.span2 {

display: inline-block;
 text-decoration: none;
	width: 50%;
	color:black;
	cursor: pointer;
	font-size: 20px;
}

.span3 {
display: inline-block;
 text-decoration: none;
	width: 20%;
	color:black;
	cursor: pointer;
	font-size: 20px;
}

.span4 {
display: inline-block;
 text-decoration: none;
	width: 12.5%;
	color:black;
	cursor: pointer;
	font-size: 20px;
}

.span5 {
display: inline-block;
 text-decoration: none;
	width: 12.5%;
	color:black;
	cursor: pointer;
	font-size: 20px;
}

@media ( max-width :700px) {
	.sec1_head_box {
		height: 40px;
	}
	.sec1_head_box>div {
		font-size: 11px;
		line-height: 40px;
	}
	.sec1_bbox {
		align-items: center;
		height: 40px;
	}
	.sec1_bbox>div {
		font-size: 11px;
		line-height: 30px;
	}
}
/* section0 */
/*css �떆�옉 !*/
* {
	margin: 0;
	/* font-size: 0; */
}

.table_all {
	/* border: 3px solid green; */
	/* width: 79%; */
	height: 100%;
}

th, tr {
	/* border: 1px solid red; */
	text-align: center;
	font-size: 16px;
	white-space: nowrap;
}

td {
	border-width: 1px 0;
	border-style: solid;
	border-color: rgb(128, 128, 128, 0.3);
	padding-top: 5px;
	text-align: center;
	font-size: 16px;
	white-space: nowrap;
}

tbody>tr {
	cursor: pointer;
}

th {
	padding: 10px 2.5%;
	background-color: rgba(243, 156, 18, 0.45);
}

table {
	margin-top: 20px;
	/* border: 5px solid yellow; */
	border-spacing: 0px 0px;
	width: 100%;
}

img {
	width: 175px;
	height: 150px;
}

.num {
	width: 14.5%;
}

.look {
	width: 18%;
}

.writer {
	width: 19.5%;
}

.title {
	width: 16%;
}

.date {
	width: 13%;
}
/*  */
@media ( max-width : 700px) {
	th, tr {
		font-size: 11px;
	}
	td {
		font-size: 11px;
	}
	img {
		width: 125px;
		height: 100px;
	}
}
.tb_num_color{ 
/* 		display: inline-block;  */
		text-decoration: none; 
		color:#e79311; 
		cursor: pointer; 
		font-size: 20px;
		font-weight:bold;
		width: 6%; 
		}
</style>

<body>
	<main>
<%-- 
		<nav>
			<%@ include file="mobile_console.jsp"%>
		</nav>
--%>
		<section>
			<div class="bulletin_sec1_all">
				<div class="board">게시판</div>
				<div class="notice">공지사항</div>
				<div class="notice_content">
					글쓰기 규칙 안내
				</div>
			</div>
			<div class="all">
				<div class="bulletin_sec1_all">
					<div class="contents">레시피 게시판</div>
					<div class="contents">후기 게시판</div>
					<div class="ajax_pagereload" style="font-size: 16px;"></div>
				</div>
				<div class="bottom">
					<div class="order_all">
						<div class="order">◁</div>
						<div class="order"> 1 </div> 
						<div class="order"> 2 </div> 
						<div class="order"> 3 </div> 
						<div class="order">▷</div>
					</div>
					<a class="write">글쓰기</a>
				</div>
			</div>
			</div>
		</section>
	</main>
	<script>
		// document.querySelector(".write").addEventListener("click",function(){
		//     document.querySelector(".ajax_pagereload").
		// });
		document.querySelector(".notice_content").addEventListener("click",function() {
			window.location.href = "writereview.jsp";
			// 공지사항 페이지로 이동(추후 수정필요)
		})

		write_hover();

		function write_hover() {
			document.querySelector(".write").addEventListener("mouseover",function() {
				document.querySelector(".write").style.backgroundColor = "orange";
				document.querySelector(".write").style.color = "white";
				document.querySelector(".write")
						.addEventListener("click", function() {

						});
			});
			document.querySelector(".write").addEventListener("mouseout",function() {
				document.querySelector(".write").style.backgroundColor = "rgb(221, 214, 214, 0.8)";
				document.querySelector(".write").style.color = "black";
			});
		}

		selected_order();
		show_contents();
		exchange_contents();
		
		function selected_order() {
			let order = document.querySelectorAll(".order")
			for (let i = 0; i < order.length; i++) {
				order[i].addEventListener("mouseover", function() {
					if (i == 0) {
						order[i].innerText = "◀";
						order[i].style.backgroundColor = "orange";
					} else if (i == order.length - 1) {
						order[i].innerText = "▶";
						order[i].style.backgroundColor = "orange";
					} else {
						order[i].style.color = "white";
						order[i].style.backgroundColor = "orange";
					}
				});
				order[i].addEventListener("mouseout", function() {
					if (i == 0) {
						order[i].innerText = "◁";
						order[i].style.backgroundColor = "rgb(221, 214, 214)";
					} else if (i == order.length - 1) {
						order[i].innerText = "▷";
						order[i].style.backgroundColor = "rgb(221, 214, 214)";
					} else {
						order[i].style.color = "black";
						order[i].style.backgroundColor = "rgb(221, 214, 214)";
					}
				});
			}
		}

		//go_recipepage(); // 임시.
		function go_recipepage() {
			let lines = document.querySelectorAll(".lines")
			// console.log(lines)
			for (let i = 0; i < lines.length; i++) {
			     lines[i].addEventListener("click", function () {
			    	 //window.location.href = "NewRecipePage?"
			    });
			}
		}

		//go_writerpage(); // 임시.
		function go_writerpage() {
			document.querySelector(".ajax_pagereload").addEventListener("click",function() {
				let lines = document.querySelector(".ajax_pagereload")
						.querySelectorAll(".sec1_bbox");
				window.open("writereview.jsp")
				// console.log(lines)
				// for (let i = 0 ; lines.length ;i++){
				//     console.log(i)
				//     lines[i].addEventListener("click", function(){
				//         window.open("writereview.jsp")
				//     });
				// }
			});
		}
		
		/* ajax를 이용한 페이지 로딩 */
		const xhr = new XMLHttpRequest();
		function load_contents(i) {
			xhr.open("GET", `bulletinsection?page=\${i}`);
			//console.log("실행")
			//assets/component/bulletin/section\${i}.jsp
			xhr.send();
		}
		/* 각각의 페이지에 대응되는 버튼에 클릭이벤트를 걸어 페이지를 리로드시킴 */
		let index = 0;
		function exchange_contents() {
			let inputs = document.querySelectorAll(".contents");
			inputs[0].classList.add("selected_section")
			//console.log(inputs);
			for (let i = 0; i < inputs.length; i++) {
				inputs[i].addEventListener("click",function() {
					load_contents(i);
					xhr.onload = function() {
						let text = xhr.responseText;
						let htmlDom = new DOMParser().parseFromString(text,"text/html");
						document.querySelector(".ajax_pagereload").innerHTML = htmlDom.querySelector("body > div").innerHTML;
					}
					/* 클릭시 버튼에 selected_section css추가, 제거 */
					inputs[i].classList.add("selected_section")
					index = i
					for (let j = 0; j < inputs.length; j++) {
						if (index != j) 
							inputs[j].classList.remove("selected_section")
					}
				});
				/* mouseover,mouseout에 selected_section css추가, 제거 */
				inputs[i].addEventListener("mouseover", function() {
					//console.log("in");	
					inputs[i].classList.add("selected_section");
					// for (let j = 0; j < inputs.length; j++) {
					//     if (i != j) {
					//         inputs[j].classList.remove("selected_section");
					//     }
					// }
				});
				inputs[i].addEventListener("mouseout", function() {
					for (let j = 0; j < inputs.length; j++) {
						if (index != j) 
							inputs[j].classList.remove("selected_section");
					}
				});
			}
		}

		function show_contents() {
			window.addEventListener("load",function() {
				let i = 0;
				load_contents(i);
				xhr.onload = function() {
					let text = xhr.responseText;
					let htmlDom = new DOMParser().parseFromString(text, "text/html");
					document.querySelector(".ajax_pagereload").innerHTML = htmlDom.querySelector("body > div").innerHTML;
					go_recipepage()
				}
			});
		}
		
		control_writepage();
		function control_writepage() {
			document.querySelector(".write").addEventListener("click",function() {
				let selectedSection = document.querySelector(".selected_section");
				if (selectedSection) {
					if (selectedSection.textContent === "레시피 게시판") {
						window.location.href = "newrecipe"; // 레시피 게시판의 글쓰기 페이지로 이동
					} else if (selectedSection.textContent === "후기 게시판") {
						window.location.href = "write"; // 후기 게시판의 글쓰기 페이지로 이동
					}
				}
			});
		}
		go_recipepage()
		function go_recipepage(){
			let recipes = document.querySelectorAll(".lines")
			let reciids = document.querySelectorAll(".bu_reciid")
			console.log(recipes)
			for(let i = 0 ;i<recipes.length ;i++){
				recipes[i].addEventListener("click", function(){
// 					console.log(i)
					let reciid = reciids[i].innerText
					window.location.href = "gorecipe?reciid="+reciid
				})
			}
		}
	</script>	
</body>