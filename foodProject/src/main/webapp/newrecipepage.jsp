<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/newrecipepage.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/mobile_console.css">
    <link rel="stylesheet" href="assets/css/j/newrecipepage_sec1.css">
    <link rel="stylesheet" href="assets/css/h/newrecipepage_sec2.css">
    <link rel="stylesheet" href="assets/css/h/media/newrecipepage_sec2.css">
    <link rel="stylesheet" href="assets/css/j/newrecipepage_sec3.css">
    <link rel="stylesheet" href="assets/css/j/media/newrecipepage.css">
</head>
<body>
<body>
<%@ include file="header.jsp"%>
    <main>
        <nav>
            <%@ include file="mobile_console.jsp"%>
        </nav>
        <section>
            <!-- 이정성 -->
            <div class="title">
                <div>레시피 작성 페이지</div>
                <div class="btns_hover">취소</div>
                <div class="btns_hover">작성</div>
            </div>
            <div class="title_box">
                <textarea type="text" class="recipick_title" value="레시피 제목을 작성해주세요" maxlength="70"></textarea>
                <div class="title_submit btns_hover">등록</div>
            </div>
            <div class="show_titlename"></div>
            <div class="del_titlename btns_hover">삭제</div>
            <!-- 김호연 -->
            <div class="all2">
                <div class="img_add">
                    <div>
                        <img src="https://cdn3.iconfinder.com/data/icons/font-awesome-regular-1/512/image-64.png">
                    </div>
                    <div>레시피 사진을 올려주세요 !</div>
                </div>
                <div class="hashtag_box">
                    <div><input type="text" class="recipick_hashtag" value="#해시태그" maxlength="7"></div>
                    <div id="hash_submit" class="btns_hover">등록</div>
                </div><br>
				<div class="hashtag_all">
					<%-- --%>
				</div> 
                <!-- <div class="max">해시태그는 5개까지 입력할 수 있습니다.</div> -->
                <div class="content_all">
                    <div><input type="text" class="recipick_content0" value="재료명" maxlength="10"></div>
                    <div><input type="text" class="recipick_content1" value="수량" maxlength="10"></div>
                    <div id="quantity_submit" class="btns_hover">등록</div>
                </div>
				<div class="quantity_box">
					<%-- --%>
				</div> 
                <div>
                    <textarea class="food_explanation" value="음식에 대한 설명을 입력해주세요"></textarea>
                    <div class="food_explain_submit btns_hover">등록</div>
                </div>
                <div class="food_explain"></div>
                <div class="del_explain btns_hover">삭제</div>
                    
            </div>

            <!-- 이정성
                + 버튼 누르면 for문을 통해 추가로 작성 가능 -->
            <div id="newpage">
            <%--
                 <div class="bigbox">
                    <div class="topbox">
                        <div>1</div>
                        <div>만드는 방법</div>
                        <div class="delete_butt">삭제</div> 
                    </div>
                    <div class="attach">
                        <div>
                            <img
                                src="https://cdn1.iconfinder.com/data/icons/document-edit-line/64/Document-doc-file-folder-bundle-add-new-64.png">
                        </div>
                    </div>
                    <div class="attach_font">
                        <div>첨부파일</div>
                    </div>
                    <div class="media_box">레시피 사진, 동영상을 올려주세요!</div>
                    <div class="explanation">만드는 방법 설명</div>
                </div> -->
            </div>
            --%>
            <div class="plus">+</div>
			
        </section>
    </main>
    <%@ include file="footer.jsp"%>
</body>
</html>