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
                <div class="notice_content"><%-- 공지사항 내용 ....--%></div>
            </div>
            <div class="all">
                <div class="bulletin_sec1_all">
                    <div class="contents">레시피 게시판</div>
                    <div class="contents">후기 게시판</div>
                    <div class="ajax_pagereload" style="font-size: 16px;"></div>
                </div>
                <div class="bottom">
                    <div class="order_all">
                        <%-- <div class="order">◁</div> --%>
                        <%-- <div class="order"> 페이지수 </div>  --%>
                        <%-- <div class="order">▷</div> --%>
                    </div>
                    <a class="write">글쓰기</a>
                </div>
            </div>
            </div>
        </section>
    </main>
    <%@ include file="footer.jsp"%>
    
    <%--
		<script type="text/javascript" src="assets/js/header_contents.js"></script>
 	--%>
</body>
</html>