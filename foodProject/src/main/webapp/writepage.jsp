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
            <!-- 이정성 -->
            <!-- 김호연 수정 함-->
            <div class="selected_board">선택된 게시판</div>
            <div>
                <select class="borad_select">
                    <option value="게시판 선택">게시판 선택</option>
                    <option value="레시피 게시판">레시피 게시판</option>
                    <option value="후기 게시판">후기 게시판</option>
                    <option value="공지사항">공지사항</option>
                </select>
            </div>
            <div id="board_name">
                <textarea type="text" value="게시글 제목을 작성해주세요."></textarea>
                <div class="title_name btns_hover">작성</div>
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
            <div class="media_box" id="media_box">사진 및 동영상을 올려주세요!</div>
            <textarea type="text" class="explanation" value="만드는 방법을 써주세요."></textarea>
            <div class="write_1 btns_hover">작성</div>
            <div class="write_explaintext btns_hover"></div>
            <!-- <div id="plus">+</div> -->
            <div id="write" class="btns_hover">등록</div>
        </section>
</body>
</html>