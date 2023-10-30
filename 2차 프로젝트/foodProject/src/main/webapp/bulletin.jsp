<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/h/bulletin_sec1.css">
<link rel="stylesheet" href="assets/css/h/bulletin_sec2.css">
<link rel="stylesheet" href="assets/css/bulletin.css">
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/component/bulletin/css/h/section0.css">
<link rel="stylesheet" href="assets/component/bulletin/css/j/section1.css">
<link rel="stylesheet" href="assets/css/mobile_console.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<nav>
			<%@ include file="mobile_console.jsp"%>
		</nav>
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
	<%@ include file="footer.jsp"%>

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
			xhr.open("GET", `BulletinSection\${i}`);
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
						window.location.href = "newrecipepage.jsp"; // 레시피 게시판의 글쓰기 페이지로 이동
					} else if (selectedSection.textContent === "후기 게시판") {
						window.location.href = "writepage.jsp"; // 후기 게시판의 글쓰기 페이지로 이동
					}
				}
			});
		}
	
	</script>
	<script type="text/javascript" src="assets/js/header_contents.js"></script>
	<script type="text/javascript" src="assets/js/search_event.js"></script>
	<script type="text/javascript" src="assets/js/mobile_pop.js"></script>
</body>
</html>