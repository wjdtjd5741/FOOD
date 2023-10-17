<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<section>
			<img class="reci_top_img"
				src="">
			<article>
				<!-- 이정성 -->
				<div class="bigbox">
					<div class="topbox">
						<div class="headtitle"></div>
						<div></div>
						<div class="text_line">
							<div>추천수 :</div>
							<div class="like_count"></div>
							<div>찜횟수 :</div>
							<div class="pick_count"></div>
							<div class="empty_space"></div>
							<div>찜하기</div>
							<div class="heart_text"></div>
						</div>
					</div>
					<div class="hashtag_all">
						<div class="hashtags"></div>
						<div class="hashtags"></div>
						<div class="hashtags"></div>
					</div>
					<div class="box2">
						<div class="box2_1">
							<div>-레시피 재료</div>
							<div class="select">▽</div>
							<div class="food_text"></div>
						</div>
						<div class="box2_1">
							<div>-음식 설명</div>
							<div class="select">▽</div>
							<div class="food_text">
								
							</div>
						</div>
					</div>
				</div>

				<!-- 강신영 -->
				<!-- %수정 완료-->
				<div class="root">
					<div class="root_son">
						<div class="upper">
							<!-- 사진대신 보더로 숫자만듬 -->
							<div class="num_img1">1</div>
							<!-- 글씨크기,볼드 수정 -->
							<div class="make_how">만드는 방법</div>
						</div>
						<div class="food_img">
							<img
								src="">
						</div>
						<!-- 설명쓸수 있는 공간 만듬 -->
						<div class="food_exp"></div>
						
						<!-- 추천 기능만듬 -->
						<div class="commend">
							<div class="up">
								<div class="up_count"></div>
								<img
									src="https://cdn.discordapp.com/attachments/1148541415828246548/1148541802450800650/recommend.jpg">
							</div>
							<div class="down">
								<div class="down_count"></div>
								<img
									src="https://cdn.discordapp.com/attachments/1148541415828246548/1148544129089945640/01e759c8640f0776.png">
							</div>
						</div>
					</div>
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
					<div class="comment_count"></div>
				</div>
				<div>
					<textarea class="input_text" type="text" value="댓글을 남겨주세요."
						maxlength="300"></textarea>
					<input class="btn_txt" type="button" value="등록">
				</div>
				<div class="comment_box"></div>
			</div>
		</article>
</body>
</html>