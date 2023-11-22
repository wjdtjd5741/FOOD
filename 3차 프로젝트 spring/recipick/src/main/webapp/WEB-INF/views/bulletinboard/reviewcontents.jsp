<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<style>
</style>
<body>
	
		<div class="sec1_bigbox">
			<div class="sec1_head_box">
				<div>번호</div>
				<div>제목</div>
				<div>날짜</div>
				<div>작성자</div>
				<div>조회수</div>
			</div>
			<c:forEach var="review" items="${review_bul_sel}">
				<div class="abox">
					<div class="sec1_bbox">
						<a href="writer_view?review_id=${review.review_id}"> 
						<span class="span1">${review.review_id }</span> 
						<span class="span2">${review.review_title }</span>
						<span class="span3">${review.review_date }</span> 
						<span class="span4">${review.uname }</span> <span class="span5">${review.viewer }</span>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	
</body>
<script>
	function viewReviewDetail(reviewId) {
		// 리뷰 상세 페이지로 이동하는 로직
		window.location.href = `writer?review_id=${reviewId}`;
	}
</script>
</html>