<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="models.RecipesDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="component.RecipickLib"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/css/comments.css">
<link rel="stylesheet" href="assets/css/recipepage.css">
<link rel="stylesheet" href="assets/css/mobile_console.css">
<link rel="stylesheet" href="assets/css/j/recipepage_sec1.css">
<link rel="stylesheet" href="assets/css/s/recipepage_sec2.css">
<link rel="stylesheet" href="assets/css/j/media/recipepage_sec1.css">
</head>

<body>
	<%
	RecipesDTO rDTO = (RecipesDTO) request.getAttribute("nrp");
	RecipickLib rLib = new RecipickLib();
	rLib.setDate(rDTO.getDate());
	HttpSession recipe_sc = request.getSession();
	recipe_sc.setAttribute("rDTO", rDTO);
	System.out.print("fff");
	%>
	<%@ include file="header.jsp"%>
	<%@ include file="reci_navi.jsp"%>
	<main>
		<nav>
			<%@ include file="mobile_console.jsp"%>
		</nav>
		<section>
			<img class="reci_top_img" src="${nrp.mainPic}">
			<article>
				<!-- 이정성 -->
				<div class="bigbox">
					<div class="topbox">
						<div class="headtitle">${nrp.title}</div>
						<div></div>
						<div class="text_line">
							<div>추천수 :</div>
							<div class="like_count">${nrp.recomCount}</div>
							<div>찜횟수 :</div>
							<div class="pick_count">
								${nrp.ggimCount } <input type="hidden" name="pick_count"
									value="0">
							</div>
							<div class="empty_space"></div>
							<div>찜하기</div>
							<div class="heart_text">♡</div>
						</div>
					</div>
					
						<div class="hashtag_all">
							<c:forEach var="hash" items="${nrp.hashtags}">
								<div class="hashtags">${hash}</div>
							</c:forEach>
						</div>
					

					<div class="box2">
						<div class="box2_1">
							<div>-레시피 재료</div>
							<div class="select">▽</div>
							<div class="food_text">
								<%
								for (Map.Entry<String, String> mapstr : rDTO.getFoods().entrySet()) {
								%>

								<%=mapstr.getKey() + ":" + mapstr.getValue()%>

								<%
								}
								%>

							</div>
						</div>
						<div class="box2_1">
							<div>-음식 설명</div>
							<div class="select">▽</div>
							<div class="food_text">${nrp.mainText}</div>
						</div>
					</div>

				</div>

				<!-- 강신영 -->
				<!-- %수정 완료-->
				<div class="root">
					<div class="root_son">
						<%
						int i = 0;
						for (i = 0; i < rDTO.getKnowHow().size(); i++) {
						%>

						<div class="upper">
							<div class="num_img1"><%=(i + 1)%></div>
							<div class="make_how">만드는 방법</div>
						</div>
						<div class="food_img">
							<img src="<%=rDTO.getKnowHow().get(i).get(1)%>">
						</div>
						<div class="food_exp"><%=rDTO.getKnowHow().get(i).get(0)%></div>

						<%
						}
						%>

						<!-- 추천 기능만듬 -->
						<div class="commend">
							<div class="up">
								<div class="up_count">${nrp.recomCount }</div>

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
				<a href="bulletin.jsp" class="btns_hover list">목록</a>
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
			</div>
		</article>
	</main>
	<%@ include file="footer.jsp"%>
	<%-- 
    <script type="text/javascript" src="assets/js/comment.js"></script>
    <script type="text/javascript" src="assets/js/likeNdislike.js"></script>
    <script type="text/javascript" src="assets/js/heart_counter.js"></script>
    <script type="text/javascript" src="assets/js/search_event.js"></script>
    --%>
	<script type="text/javascript" src="assets/js/header_contents.js"></script>
	<script type="text/javascript" src="assets/js/reci_pop.js"></script>
	<script type="text/javascript" src="assets/js/reci_nav.js"></script>
	<script type="text/javascript" src="assets/js/mobile_pop.js"></script>
	<script type="text/javascript" src="assets/js/heart_counter.js"></script>
	<script type="text/javascript" src="assets/js/likeNdislike.js"></script>
	<script type="text/javascript" src="assets/js/btns_hover.js"></script>

</body>
</html>