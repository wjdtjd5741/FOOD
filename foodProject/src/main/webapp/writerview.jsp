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
            <!-- title 클릭 게시판 목록 이동, #음식이름 클릭 레시피 목록 이동, 수정 삭제 -->
            <article>
                <!-- a태그 삭제 -->
                <div class="title">후기 게시판</div>
                <div><%--계란 볶음밥--%></div>
                <div>
                    <img src="https://cdn.discordapp.com/attachments/1123448023238844436/1150705442507472918/egg.PNG.jpeg">
                </div>
                <div class="hashtags"><%--#계란--%></div>
                <div class="hashtags"><%--#볶음밥--%></div>
                <textarea class="food_text_review" disabled="true"><%--중센불에서 중약불로 5 ~ 10분간 스팸 햄을 먼저 볶은 후
계란도 익기 전에 밥 알 사이에 고루 베이도록 풀어서 밥과 계란을 5~10분간 오래 볶는다.
밥도 진 밥이라도 오랫동안 고루 볶으면 수분이 빠져 나가 고슬고슬 해진다.--%> 
                </textarea>
                <div class="modify">
                    <div class="edit_text_review">수정</div>
                    <div class="del_text_review">삭제</div>
                </div>
            </article>
        </section>
        <section>
             <!-- 강신영  -->
             <div class="comments">
                <div class="comment_word">
                    <div>댓글</div>
                    <div class="comment_count"><%--0--%></div>
                </div>
                <div>
                    <textarea class="input_text" type="text" value="댓글을 남겨주세요." maxlength="300"></textarea>
                    <input class="btn_txt" type="button" value="등록">
                </div>
                <div class="comment_box"></div>
            </div>
        </section>
</body>
</html>