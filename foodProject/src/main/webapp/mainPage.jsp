<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/h/mainpage_sec2.css">
<link rel="stylesheet" href="assets/css/h/media/mainpage_sec2.css">
<link rel="stylesheet" href="assets/css/s/mainpage_sec1.css">
<link rel="stylesheet" href="assets/css/mainpage.css">
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/css/mobile_console.css">

</head>
<body>
<<<<<<< HEAD
	<%@ include file="header.jsp"%>
	<main>
		<nav>
		<%@ include file="mobile_console.jsp"%>
			<div class="go_home">
				<a href="#">▲</a>
			</div>
		</nav>
		<section>
			<div class="go_btn">next &gt;</div>
			<div class="back_btn">&lt; prev</div>
			<div class="main_top">
				<div class="main_top_img">
				<%-- 
					<img
						src="https://cdn.discordapp.com/attachments/1148541415828246548/1148562443900043304/chuseok.jpg">
				</div>
				<div class="main_top_img">
					<img
						src="https://media.istockphoto.com/id/1449032425/ko/%EC%82%AC%EC%A7%84/%ED%8C%8C%EB%9E%80%EC%83%89%EC%97%90-%EA%B1%B4%EA%B0%95-%EC%8B%9D%ED%92%88%EC%9C%BC%EB%A1%9C-%EA%B0%80%EB%93%9D-%EC%B0%AC-%EC%87%BC%ED%95%91%EB%B0%B1.webp?b=1&s=612x612&w=0&k=20&c=_vhyGwUQA_p_2M6jWxBS5ymy1bebyUEw7RGZltC8e0c=">
				</div>
				<div class="main_top_img">
					<img
						src="https://cdn.pixabay.com/photo/2015/10/02/15/59/olive-oil-968657_640.jpg">
				</div>
				--%>
			</div>

			<!-- 강신영 -->
			<!-- 인기레시피 부분 슬라이드 버튼 추가 필요-->
			<div class="main">
				<div class="main2">
					<div class="h2">
						<h2>인기 레시피</h2>
					</div>
					<div class="food">
						<!-- %수정 완료 -->
						<div class="butt1">
							<div class="rigth">▷</div>
						</div>
						<div class="butt2">
							<div class="left">◁</div>
						</div>
						<div class="img">
						<%-- 
							<div class="img_div">
								<img class="favorite"
									src="https://img.freepik.com/free-photo/kimchi-ready-to-eat-in-black-plate_1150-35691.jpg?size=626&ext=jpg&ga=GA1.2.1026167912.1691650236&semt=sph">
								<div class="foodName">배추 김치</div>
							</div>
							<div class="img_div">
								<img
									src="https://img.freepik.com/premium-photo/korean-instant-noodles-with-fried-chicken-or-fried-chicken-ramyeon_1339-175174.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
								<div class="foodName">텐더라면</div>
							</div>
							<div class="img_div">
								<img
									src="https://img.freepik.com/premium-photo/korean-instant-noodle-and-tteokbokki-in-korean-spicy-sauce-rabokki-korean-food-style_1339-143780.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
								<div class="foodName">라볶이</div>
							</div>
							<div class="img_div">
								<img
									src="https://img.freepik.com/premium-photo/traditional-food-chicken-soup-with-ginseng_1205-8406.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
								<div class="foodName">누룽지 삼계탕</div>
							</div>
						--%>
						</div>
					</div>
				</div>
			</div>
			</div>
			</div>
			</div>

			<!-- 김호연 -->
			<!-- all 전체 테두리, all_2 작은 테두리, 큰 사진 p1, p4, 작은 사진 p2, p3 -->
			<div class="a11">
				<div class="a11_2">
					<h2>추천 레시피</h2>
					<div class="recipick">
						<div class="big_img1">
						<%--
							<img
								src="https://cdn.discordapp.com/attachments/1148541415828246548/1149239367269875772/pancakes-2291908_1280.jpg">
							<div class="img1_hashtag">#핫케이크</div>
							<div class="img1_hashtag">#시나몬</div>
							<div class="img1_hashtag">#브런치</div>
							<div class="recommend_name">라즈베리 팬케이크</div>
						--%>
						</div>
						<div class="small_img1">
						<%--
							<img
								src="https://cdn.discordapp.com/attachments/1148541415828246548/1149239197144723456/salmon-518032_1280.jpg">
							<div class="small_name1">연어 스테이크 & 샐러드</div>
						--%>
						</div>
						<div class="small_img1_1">
						<%--
							<img
								src="https://img.freepik.com/premium-photo/traditional-food-chicken-soup-with-ginseng_1205-8406.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
							<div class="small_name1">누룽지 삼계탕</div>
						--%>
						</div>
						<div class="small_img2">
						<%--
							<img
								src="https://img.freepik.com/premium-photo/korean-instant-noodle-and-tteokbokki-in-korean-spicy-sauce-rabokki-korean-food-style_1339-143780.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
							<div class="small_name1">라볶이</div>
						--%>
						</div>
						<div class="small_img2">
						<%--
							<img
								src="https://img.freepik.com/premium-photo/korean-instant-noodles-with-fried-chicken-or-fried-chicken-ramyeon_1339-175174.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph">
							<div class="small_name1">치킨 라면</div>
						--%>
						</div>
						<div class="big_img2">
						<%--
							<img
								src="https://cdn.discordapp.com/attachments/1148541415828246548/1149236901425987715/side-view-grilled-lamb-liver-with-potato-and-greens.jpg">
							<div class="img1_hashtag">#닭똥집</div>
							<div class="img1_hashtag">#마늘</div>
							<div class="img1_hashtag">#술안주</div>
							<div class="recommend_name">철판 닭똥집구이</div>
						--%>
						</div>
					</div>
				</div>
				<div class="bot_img">
				<%-- 
				<img class="main_bottom_img"
					src="https://cdn.discordapp.com/attachments/1148541415828246548/1148560521562427402/main.jpg">
				--%>
				</div>
		</section>
	</main>
	<%@ include file="footer.jsp"%>
=======
    <main>
        <nav>
            <div class="mobile_console">
                <div class="array_console">
                    <a href="mainpage.html">
                        <div class="home">홈</div>
                    </a>
                    <a href="bulletin.html">
                        <div class="category">카테고리</div>
                    </a>
                    <a href="recipepage.html">
                        <div class="today_recipe_font">오늘의 레시피</div>
                    </a>
                    <a href="recipepage.html">
                        <div class="like">찜한 레시피</div>
                    </a>
                    <a href="login.html">
                        <div class="login">로그인</div>
                    </a>
                </div>
            </div>
            <div class="go_home">
                <a href="#">▲</a>
            </div>
        </nav>
        <section>
            <div class="go_btn">next ></div>
            <div class="back_btn">
                < prev</div>
                    <div class="main_top">
                        <div class="main_top_img">
                        </div>
                        <div class="main_top_img">
                        </div>
                        <div class="main_top_img">
                        </div>
                    </div>
                    <div class="main">
                        <div class="main2">
                            <div class="h2">
                                <h2>인기 레시피</h2>
                            </div>
                            <div class="food">
                                <div class="butt1">
                                    <div class="rigth">▷</div>
                                </div>
                                <div class="butt2">
                                    <div class="left">◁</div>
                                </div>
                                <div class="img">
                                    <div class="img_div">
                                        <div class="foodName">배추 김치</div>
                                    </div>
                                    <div class="img_div">
                                        <div class="foodName">텐더라면</div>
                                    </div>
                                    <div class="img_div">
                                        <div class="foodName">라볶이</div>
                                    </div>
                                    <div class="img_div">
                                        <div class="foodName">누룽지 삼계탕</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            </div>
            </div>
            <div class="a11">
                <div class="a11_2">
                    <h2>추천 레시피</h2>
                    <div class="recipick">
                        <div class="big_img1">
                            <div class="img1_hashtag">#핫케이크</div>
                            <div class="img1_hashtag">#시나몬</div>
                            <div class="img1_hashtag">#브런치</div>
                            <div class="recommend_name">라즈베리 팬케이크</div>
                        </div>
                        <div class="small_img1">
                            <div class="small_name1">연어 스테이크 & 샐러드</div>
                        </div>
                        <div class="small_img1_1">
                            <div class="small_name1">누룽지 삼계탕</div>
                        </div>
                        <div class="small_img2">
                            <div class="small_name1">라볶이</div>
                        </div>
                        <div class="small_img2">
                            <div class="small_name1">치킨 라면</div>
                        </div>
                        <div class="big_img2">
                            <div class="img1_hashtag">#닭똥집</div>
                            <div class="img1_hashtag">#마늘</div>
                            <div class="img1_hashtag">#술안주</div>
                            <div class="recommend_name">철판 닭똥집구이</div>
                        </div>
                    </div>
                </div>
        </section>
    </main>
>>>>>>> e545cf69eeb63b4dd7c8fb10bbe82001c3ed34bc
</body>
</html>