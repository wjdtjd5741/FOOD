<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/mobile_console.css">
    <link rel="stylesheet" href="assets/css/j/searchpage_sec0.css">
    <link rel="stylesheet" href="assets/css/s/searchpage_sec1.css">
    <link rel="stylesheet" href="assets/css/s/media/searchpage_sec1.css">
</head>
<body>
<%
	String data = request.getParameter("data");
%>
<%@ include file="header.jsp"%>
    <main>
        <nav>
            <%@ include file="mobile_console.jsp"%>
        </nav>
        <section>
            <!-- 이정성 -->
            <div class="search_box">
                <div class="search_box1">
                	<input id="input_text0" type="text" value="<%= data %>">
                </div>
                <div class="search_img" ><img
                        src="https://cdn.discordapp.com/attachments/1148557028927742005/1149214262925987880/search_icon.png">
                </div>
            </div>
            <div class="hash_box">
                <%-- <div class="hashtags">#대파</div> --%>
            </div>
        </section>
        <section>
            <!-- 강신영 높이조절 -->
            <div class="search_root">
                <div class="search_root2">
                    <div class="search_top">
                        <div class="top_first">
                            <div id="input_text1"><%= data %></div>
                            <div>검색결과</div>
                        </div>
                        <div class="search_result">
                            <div class="result1">
                                <div>검색결과</div>
                                <div class="color"><%-- 10 --%></div>
                                <div>건 조회</div>
                            </div>
                            <div class="views">
                                <div class="recommend">
                                    <div>조회순</div>
                                    <div>추천순</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="search_main">
                    <%--
                        <div class="menu">
                            <img
                                src="https://cdn.discordapp.com/attachments/1148541415828246548/1149239367269875772/pancakes-2291908_1280.jpg">
                            <div class="hash">
                                <div>#따뜻한</div>
                                <div>#얼큰한</div>
                                <div>#면요리</div>
                            </div>
                            <div>팬케이크</div>
                        </div>
                    --%>
                    </div>
                </div>
            </div>
        </section>
    </main>
<%@ include file="footer.jsp"%>
</body>
</html>