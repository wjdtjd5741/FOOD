<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<style>
main{
    /* border: 1px solid green; */
    height: 85%;
}
nav{
    display: none;
    /* border: 1px solid gold; */
    height: 300px;
    position: fixed;
    top: 50%;
    right: 0;
    transform: translateY(-50%);
}
.btn_nav{
    /* border: 1px solid red; */
    background-color: rgb(230, 142, 34);
    border-radius: 3px;
    display: inline-block;
    width: 15px;
    height: 50px;
    margin: 145px 0;
    font-size: 12px;
    text-align: center;
    line-height: 50px;
    color: white;
    cursor: pointer;
}
.nav_contents{
    vertical-align: top;
    border: 2px solid rgb(230, 142, 34);
    border-radius: 10px;
    display: inline-block;
    width: 120px;
    height: 330px;
}
.nav_contents > div{
    width: 100%;
    text-align: center;
    /* border: 1px solid blue; */
    font-size: 12px;
}
.nav_name {
    display: inline-block;
    width: 100%;
    text-align: center;
    margin-top: 10px;
    height: 30px;
    line-height: 30px;
    font-size: 20px;
    font-weight: 900;
    color: rgb(230, 142, 34);
    cursor: pointer;
    text-decoration: none;
}
.nav_today {
    height: 30px;
    line-height: 30px;
    font-size: 10px;
    margin-top: 10px;
    font-weight: 600;
}
.nav_recom {
    width: 80px;
    margin: 5px 10px;
/*     margin-left: 20px; */
    cursor: pointer;
}
.nav_recom_box {
	margin-top: 10px;
    width: 80px;
/*     margin: 5px 10px; */
/*     margin-left: 20px; */
    cursor: pointer;
}
#nav_location a {
    display: inline-block;
    /* border: 1px solid black; */
    font-size: 18px;
    color: rgb(230, 142, 34);
    text-decoration: none;
    line-height: 40px;
}
#nav_location{
    display: flex;
    height: 20px;
    justify-content: space-around;
/*     margin-top: 10px; */
}
.reci_top_img{
    /* border: 1px solid black; */
    height: 500px;
    margin-bottom: 50px;
    width: 100%;
    background-size: cover;
}
article{
    /* border: 1px solid orange; */
    width: 85%;
    margin: 0 auto;
}
.reci_head{
    border: 1px solid black;
    height: 50px;
}
.reci_head > div:nth-child(n+2){
    display: inline-block;
    border: 1px solid red;
    margin-left: 10px;
    width: 50px;
    text-align: left;
    padding-top: 30px;
    font-size: 15px;
    float: right;
}
.reci_head > div:nth-child(1){
    /* border: 1px solid green; */
    display: inline-block;
    font-size: 20px;
    font-weight: 600;
    line-height: 50px;
}
body{
    margin: 0;
    font-size:0;
}
@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.topbox{
    /* border: 1px solid green; */
    display: flex;
    justify-content: space-between;
    margin-bottom: 30px;
}
.headtitle{
    font-size: 30px;
    width: auto;
    font-weight: bold;
    /* color: orange; */
}
.lists {
	border-radius: 8px;
	background-color: rgba(207, 207, 207, 0.562);
	font-size: 16px;
	font-weight: bold;
	height: 30px;
	line-height: 1.8;
	text-align: center;
	width: 100px;
	cursor: pointer;
	margin-left: 5px;
/* 	margin-left: 80%; */
	color: black;
}
.topbox div {
    /* font-size: 16px; */
    display: inline-block;
}
.hashtags {
    color: black;
    display: inline-block;
    border: 2px solid orange;
    background-color: white;
    width: 13%;
    height: 45px;
    line-height: 45px;
    border-radius: 30px;
    text-align: center;
    margin-right: 2%;
    font-size: 16px;    
    font-weight: bold;
    cursor: pointer;
}

.text_line{
    /* width: 300px; */
    display: flex;
    
    font-weight: bold;
}
.text_line > div{
    font-size: 16px;
    margin: 0 5px;
}
.empty_space{
    width: 10px;
    /* font-size: 16px; */
}
.topbox > div {
    /* width: 33%; */
}
.text_line div:nth-child(2n+1){
    /* margin-left: 30px; */
}
.pick_count, .like_count, .heart_text{
    color: orange;
}
.heart_text{
    cursor: pointer;
}
.box2 div:nth-child(1),
.box2 div:nth-child(4){
    margin-bottom: 10px;
    font-weight: bold;
    margin-top: 30px;
    font-size: 16px;
}
   

.select{
    width: 70%;
    height: 25px;
    background-color: rgb(230, 126, 34);
    color: white;
    line-height: 1.5;
    cursor: pointer;
    font-size: 14px;
    font-weight: bold;
    border-radius: 7px;
    text-align: center;
}
.box3{
    font-size: 16px;
}

.foodreci_text, .food_text {
    display: none;
    margin-bottom: 60px;
    font-size: 14px;
    width: 70%;
    margin-top: 5px;
    line-height: 25px;
}
.root {
    /* position: relative; */
    /* border: 1px solid red; */
    /* height: 1500px; */
}

.root_son {
    /* border: 1px solid black; */
    width: 100%;
    /* height: 1500px;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%); */
}

.upper {
    margin-top: 50px;
    /* border: 1px solid magenta; */
    height: 55px;

}

.num_img1 {
    display: inline-block;
    margin-left: 5px;
    /* border: 1px solid blue; */
    height: 30px;
    width: 30px;
    font-size: 20px;
    text-align: center;
    border-radius: 100%;
    background-color: orange;
    color: white;
    /* margin: 30px; */
}

.num_img2 {
    display: inline-block;
    margin-left: 5px;
    /* border: 1px solid blue; */
    height: 30px;
    width: 30px;
    font-size: 20px;
    text-align: center;
    border-radius: 100%;
    background-color: orange;
    color: white;
    /* margin: 30px; */
}

.food_exp {
    width: 68%;
    margin-left: 10px;
    margin-bottom: 50px;
    margin-top: 10px;
    font-size: 15px;
    word-wrap: break-word;
    text-align: justify; 
}

.make_how {
    font-weight: bold;
    margin-left: 5px;
    margin-top: 5px;
    vertical-align: top;
    font-size: 15px;
    display: inline-block;
    /* border: 1px solid purple; */
    width: 100px;
    height: 20px;
}

.food_img {
    /* border: 1px solid brown; */
    height: 305px;
    width: 70%;

}
.food_img >img{
    width: 100%;
    height: 300px;
}
/* %�닔�젙�셿猷� */
.commend {
    display: inline-block;
    /* display: flex; */
    height: 100px;
    width: 100%;
    margin-bottom: 30px;
    /* border: 1px solid gray; */
    font-size: 20px;
    /* align-items: center; */
    /* justify-content: center; */
}
.commend img {
    cursor: pointer;
}
/* %�닔�젙�셿猷� */
.up {
    margin-left: 40%;
    vertical-align: top;
    display: inline-block;
    border-radius: 100%;
    height: 80px;
    width: 80px;
    
    margin-right: 25px;
    font-size: 20px;
    text-align: center;
    line-height: 40px;
}
.up > img{
    height: 110%;
    width: 110%;
}
/* %�닔�젙�셿猷� */
.down {
    vertical-align: top;
    line-height: 40px;
    text-align: center;
    display: inline-block;
    height: 80px;
    width: 80px;
    text-align: center;
    border-radius: 100%;
    
    font-size: 20px;
}
.down > img{
    height: 110%;
    width: 110%;
}
.up_count{
    font-size: 20px;
    margin-left: 6px;
    /* color: orange; */
    font-weight: 800;
}

.down_count{
    font-size: 20px;
    margin-left: 6px;
    font-weight: 800;
    /* color: gray; */
}
.update_bul_btn{
	display: flex;
	margin-left : 63%;
}
.update_bul_btn > a{
	text-decoration: none;
}
</style>
<link rel="stylesheet" href="resources/assets/css/comments.css">
<main>
	<section>
		<img class="reci_top_img" src="resources/assets/imgs/${goRecipe_value.mainpic}.jpg">
		<article>
			<!-- 이정성 -->
			<div class="bigbox">
				<div class="topbox">
					<div class="headtitle">${goRecipe_value.recipe_title }</div>
					<div></div>
					<div class="text_line">
						<div>추천수 :</div>
						<div class="like_count">${recom_count}</div>
						<div>찜횟수 :</div>
						<div class="pick_count">
							${ggim_count} <input type="hidden" name="pick_count"
								value="0">
						</div>
						<div class="empty_space"></div>
						<div>찜하기</div>
						<c:if test="${ggim_ck == true}">
							<div class="heart_text">♥</div>
						</c:if>
						<c:if test="${ggim_ck == false}">
							<div class="heart_text">♡</div>
						</c:if>
					</div>
				</div>
				
					<div class="hashtag_all">
						<c:forEach var="hash" items="${goRecipe_value.hash_name }">
							<div class="hashtags">#${hash.hash_name}</div>
						</c:forEach>
					</div>
				
				<div class="box2">
					<div class="box2_1">
						<div>-레시피 재료</div>
						<div class="select">▽</div>
						<div class="food_text">
							<c:forEach var="food" items="${goRecipe_value.food_name }">
								${food.food_name} : ${food.food_value },
							</c:forEach>
						</div>
					</div>
					<div class="box2_1">
						<div>-음식 설명</div>
						<div class="select">▽</div>
						<div class="food_text">${goRecipe_value.maintext}</div>
					</div>
				</div>

			</div>

			<!-- 강신영 -->
			<!-- %수정 완료-->
			<div class="root">
				<div class="root_son">
					<div>
						<c:forEach var="detail" items="${goRecipe_value.detail_pic }">
							<div class="upper">
								<div class="num_img1">
									${detail.make_order }
								</div>
								<div class="make_how">만드는 방법</div>
							</div>
							<div class="food_img">
								<img src="resources/assets/imgs/${detail.detail_pic}.jpg">
							</div>
							<div class="food_exp">
								${detail.detail_text}
							</div>
						</c:forEach>
					<!-- 추천 기능만듬 -->
					<div class="commend">
						<div class="up">
							<div class="up_count">${recom_count}</div>

							<img
								src="https://cdn.discordapp.com/attachments/1148541415828246548/1148541802450800650/recommend.jpg">
						</div>
						<div class="down">
							<div class="down_count">0</div>
							<img
								src="https://cdn.discordapp.com/attachments/1148541415828246548/1148544129089945640/01e759c8640f0776.png">
						</div>
					</div>
				</div>
			</div>
			<div class="update_bul_btn">
				<a href="update_reci?reciid=${goRecipe_value.recipe_id}" class="btns_hover lists">수정</a>
				<a href="bulletin" class="btns_hover lists">목록</a>
			</div>
			<div class="reci_knowhow">
				<!-- ajax -->
			</div>
		</article>
	</section>
	<article>
		<!-- 강신영  -->
		<div class="comments">
			<div class="comment_word">
				<div>댓글</div>
				<div class="comment_count">0</div>
			</div>
			<div>
				<textarea class="input_text" type="text" value="댓글을 남겨주세요."
					maxlength="300"></textarea>
				<input class="btn_txt" type="button" value="등록">
			</div>
			<div class="comment_box"></div>
			
			<div class='submit_box' style="display: none"></div>
			<div class='reple_btn_txt' style="display: none"></div>
		</div>
	</article>
</main>


<c:if test="${recom_ck == true}">
	<script>
	console.log("recom_ck_true")
		document.querySelector(".up_count").style.color = "orange";
	</script>
</c:if>
<c:if test="${recom_ck == false}">
	<script>
		console.log("recom_ck_false")
		document.querySelector(".up_count").style.color = "black";
	</script>
</c:if>

<script>
likeNdislike();

function likeNdislike() {
    let downU = document.querySelector(".up_count");
    let downC = document.querySelector(".down_count");
    let reciid = new URLSearchParams(window.location.search).get("reciid");
    document.querySelector(".up > img").addEventListener("click", function () {
        if (downU.style.color != "orange" && downC.style.color != "gray") {
//             document.querySelector(".up_count").innerText = parseInt(document.querySelector(".up_count").innerText) + 1;
//             document.querySelector(".like_count").innerText = document.querySelector(".up_count").innerText;
            document.querySelector(".up_count").style.color = "orange";
            window.location.href = "insert_recom?reciid="+reciid
            alert("추천되었습니다.");
            
        } else if (downU.style.color == "orange") {
//             document.querySelector(".up_count").innerText = parseInt(document.querySelector(".up_count").innerText) - 1;
//             document.querySelector(".up_count").innerText = document.querySelector(".up_count").innerText;
            document.querySelector(".up_count").style.color = "black";
            window.location.href = "delete_recom?reciid="+reciid
        } else if (downC.style.color == "gray") {
            alert("추천할 수 없습니다.");
        }
    });
    document.querySelector(".down > img").addEventListener("click", function () {
        if (downU.style.color != "orange" && downC.style.color != "gray") {
            document.querySelector(".down_count").innerText = parseInt(document.querySelector(".down_count").innerText) + 1;
            document.querySelector(".down_count").style.color = "gray";
            alert("비추천되었습니다.")
        } else if (downC.style.color == "gray") {
            document.querySelector(".down_count").innerText = parseInt(document.querySelector(".down_count").innerText) - 1;
            document.querySelector(".down_count").style.color = "black";
        } else if (downU.style.color == "orange") {
            alert("비추천할 수 없습니다.");
        }
    });
}

heart_counter();

function heart_counter() {
    document.querySelector(".heart_text").addEventListener("click", function () {
        let reciid = new URLSearchParams(window.location.search).get("reciid");
        
        if (document.querySelector(".heart_text").innerText == "♥") {
            document.querySelector(".heart_text").innerText = "♡";
//             document.querySelector(".pick_count").innerText = parseInt(document.querySelector(".pick_count").innerText) -1
        	
            window.location.href = "delete_heart?reciid="+reciid
        } else{
            document.querySelector(".heart_text").innerText = "♥";
            
            
            window.location.href = "insert_heart?reciid="+reciid
//             document.querySelector(".pick_count").innerText = parseInt(document.querySelector(".pick_count").innerText) +1
        }
            
    });
}

comment();
text_focus();


function comment() {
    document.querySelector(".btn_txt").addEventListener("click", function () {
        let text = document.querySelector(".input_text").value;
        let reciid = new URLSearchParams(window.location.search).get("reciid");
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
        
        window.location.href = "insert_comment?reciid="+reciid+"&ctext="+text
    });
}

function reple_comments(z){
	let replebtns = document.querySelectorAll(".reple_btn_txt")
	let submitbox = document.querySelectorAll(".submit_box")
	for(let j = 0 ;j<submitbox ;j++)
	console.log(replebtns)
	for(let i = 0 ; i<replebtns.length ;i++){
		replebtns[i].addEventListener("click",function(){
			let reciid = new URLSearchParams(window.location.search).get("reciid");
			let text = document.querySelector(".reple_input_text").value;
			let pid = submitbox[z].parentNode.querySelector(".reple_id").innerText
			console.log(pid);
			window.location.href = "insert_reple_comment?reciid="+reciid+"&ctext="+text+"&pid="+pid
		})
	}
}

function text_focus() {
    document.querySelector(".input_text").addEventListener("click", function () {
        document.querySelector(".input_text").value = "";
    });
}

function reple_count(){
    document.querySelector(".comment_count").innerText = document.querySelectorAll(".reple_box").length;
}

 	get_json();
	function get_json(){
		const xhr = new XMLHttpRequest();
		let data = new URLSearchParams(window.location.search).get("reciid");
		xhr.open("GET", `http://localhost:8080/recipick/comment_load?reciid=\${data}`);
		xhr.send();
		
		window.addEventListener("load", function(){
			xhr.onload = function(){
				console.log(xhr.responseText);
				let json = JSON.parse(xhr.responseText)
				
				for(let i = 0 ;i<json.length ;i++){
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
	function reple_add(){
		let btns = document.querySelectorAll(".reple_btn")
//	 	console.log(btns)
		for(let i = 0 ;i<btns.length ;i++){
			btns[i].addEventListener("click",function(){
				let html = ""
				html += `<textarea class="reple_input_text" type="text" value="댓글을 남겨주세요."maxlength="300"></textarea>`
				html += `<input class="reple_btn_txt" type="button" value="등록">`
				let boxs = document.querySelectorAll(".submit_box")
				for(let j = 0 ;j<boxs.length ;j++)
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
	        reple[i].addEventListener("click", function () {
	            reple[i].parentNode.remove();
	            let reciid = new URLSearchParams(window.location.search).get("reciid");
	            console.log(submitbox[i].parentNode)
	            let cid = submitbox[i].parentNode.querySelector(".reple_id").innerText
	            console.log(cid)
	            window.location.href = "del_comment?reciid="+reciid+"&cid="+cid
	        });
	    }
	}	
	
	function rewirte_event(){
		let rewrite_btns = document.querySelectorAll(".rewrite_btn")
		let reples = document.querySelectorAll(".reple_text")
		console.log(rewrite_btns)
		for(let i = 0 ; i<rewrite_btns.length ;i++){
			rewrite_btns[i].addEventListener("click", function(){
			     if (reples[i].disabled) {
			    	 reples[i].disabled = false;
// 			    	 console.log("gggg")

			     } else{
			    	 reples[i].disabled = true;
			    	 let reciid = new URLSearchParams(window.location.search).get("reciid");
			    	 let cid = reples[i].parentNode.querySelector(".reple_id").innerText
			    	 let ctext = reples[i].value
			    	 console.log(ctext)
			    	 window.location.href = "update_comment?reciid="+reciid+"&cid="+cid+"&ctext="+ctext
			     }			
			})	
		}
	}
	
</script>
	<script type="text/javascript" src="resources/assets/js/comment.js"></script>
	<script type="text/javascript" src="resources/assets/js/header_contents.js"></script>
	<script type="text/javascript" src="resources/assets/js/reci_pop.js"></script>
	<script type="text/javascript" src="resources/assets/js/reci_nav.js"></script>
<!-- 	<script type="text/javascript" src="resources/assets/js/mobile_pop.js"></script> -->
	<script type="text/javascript" src="resources/assets/js/heart_counter.js"></script>
	<script type="text/javascript" src="resources/assets/js/likeNdislike.js"></script>
	<script type="text/javascript" src="resources/assets/js/btns_hover.js"></script>
	
<c:if test="${memberdto == null}">
	<script>
		console.log("ggggg")
		function comment_btns(){
			let del_btn = document.querySelectorAll(".del_btn")
			for(let i = 0 ;i<del_btn.length ;i++)
				del_btn[i].style.display="none";
			console.log(del_btn)
			let reple_btn = document.querySelectorAll(".reple_btn")
			for(let i = 0 ;i<reple_btn.length ;i++)
				reple_btn[i].style.display="none";
			let rewrite_btn = document.querySelectorAll(".rewrite_btn")
			for(let i = 0 ;i<rewrite_btn.length ;i++)
				rewrite_btn[i].style.display="none";
			console.log(reple_btn)
		}
	</script>
</c:if>

<c:if test="${memberdto != null}">
	<script>
		console.log("aaaaa")
		function comment_btns(){
// 			console.log(document.querySelector(".uname").innerText)
			let uname = document.querySelectorAll(".uname")
// 			console.log(uname)
			for(let i = 0 ; i<uname.length;i++){
				if(uname[i].innerText != "${memberdto.uname}"){
					btns_off(i)	
				}
			}
			if(document.querySelector(".uname").innerText == "${memberdto.uname}"){
				console.log("f")	
			}
		}
		
		function btns_off(z){
			let del_btn = document.querySelectorAll(".del_btn")
				del_btn[z].style.display="none";
			let reple_btn = document.querySelectorAll(".reple_btn")
				reple_btn[z].style.display="none";
			let rewrite_btn = document.querySelectorAll(".rewrite_btn")
				rewrite_btn[z].style.display="none";
		}
	</script>
</c:if>	