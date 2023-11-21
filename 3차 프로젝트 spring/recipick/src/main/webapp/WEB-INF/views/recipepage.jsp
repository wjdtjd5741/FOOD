<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    margin: 125px 0;
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
    height: 100%;
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
.nav_contents > img {
    width: 80px;
    margin: 5px 10px;
    margin-left: 20px;
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
.list{
	border-radius: 8px;
    background-color: rgba(207, 207, 207, 0.562);
    font-size: 16px;
    font-weight: bold;
    height: 30px;
    line-height: 1.8;
    text-align: center;
    width: 100px;
    cursor: pointer;
    margin-left: 80%;
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
</style>
<link rel="stylesheet" href="resources/assets/css/comments.css">
<main>
	<section>
		<img class="reci_top_img" src="<%-- ${nrp.mainPic} --%>">
		<article>
			<!-- 이정성 -->
			<div class="bigbox">
				<div class="topbox">
					<div class="headtitle"><%-- ${nrp.title} --%></div>
					<div></div>
					<div class="text_line">
						<div>추천수 :</div>
						<div class="like_count"><%-- ${nrp.recomCount} --%></div>
						<div>찜횟수 :</div>
						<div class="pick_count">
							<%-- ${nrp.ggimCount } --%> <input type="hidden" name="pick_count"
								value="0">
						</div>
						<div class="empty_space"></div>
						<div>찜하기</div>
						<div class="heart_text">♡</div>
					</div>
				</div>
				
					<div class="hashtag_all">
						<c:forEach var="hash" items="<%-- ${nrp.hashtags} --%>">
							<div class="hashtags"><%-- ${hash} --%></div>
						</c:forEach>
					</div>
				

				<div class="box2">
					<div class="box2_1">
						<div>-레시피 재료</div>
						<div class="select">▽</div>
						<div class="food_text">
<%--						
 							<% 
							for (Map.Entry<String, String> mapstr : rDTO.getFoods().entrySet()) {
							%>

							<%=mapstr.getKey() + ":" + mapstr.getValue()%>

							<%
							}
							%>
--%>
						</div>
					</div>
					<div class="box2_1">
						<div>-음식 설명</div>
						<div class="select">▽</div>
						<div class="food_text"><%-- ${nrp.mainText} --%></div>
					</div>
				</div>

			</div>

			<!-- 강신영 -->
			<!-- %수정 완료-->
			<div class="root">
				<div class="root_son">
<%--
					<%
					int i = 0;
					for (i = 0; i < rDTO.getKnowHow().size(); i++) {
					%>
--%>
					<div class="upper">
						<div class="num_img1"><%-- <%=(i + 1)%> --%></div>
						<div class="make_how">만드는 방법</div>
					</div>
					<div class="food_img">
						<img src="<%-- <%=rDTO.getKnowHow().get(i).get(1)%> --%>">
					</div>
					<div class="food_exp"><%-- <%=rDTO.getKnowHow().get(i).get(0)%> --%></div>
<%--
 					<%
					}
					%> 
--%>
					<!-- 추천 기능만듬 -->
					<div class="commend">
						<div class="up">
							<div class="up_count"><%-- ${nrp.recomCount } --%></div>

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
			<a href="bulletin" class="btns_hover list">목록</a>
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
			<div class="comment_box"></div>
			<div>
				<textarea class="input_text" type="text" value="댓글을 남겨주세요."
					maxlength="300"></textarea>
				<input class="btn_txt" type="button" value="등록">
			</div>
			
		</div>
	</article>
</main>
<script>
	
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
	                html += `<div style="display: inline-block; width: 60%;">\${json[i].uname}</div>`;
	                html += `<input class='del_btn' type=button value='X' style='font-size: 10px;'>`;
	                html += `<div style="display: inline-block;">\${json[i].comment_text}</div>`
	                html += "<input class='reple_btn' type=button value='ㄴ' style='font-size: 10px;'>"
	                html += `<div style="display: none">\${json[i].comment_id}</div>`
	                html += `<div class='submit_box'></div>`
	                document.querySelector(".comment_box").innerHTML += html;
				}
				
			}
		})

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