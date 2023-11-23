<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<style>
</style>

<body>
	<div class="table_all">
		<table>
			<thead>
				<tr>
					<th class="num">번호</th>
					<th class="img">이미지</th>
					<th class="title">제목</th>
					<th class="date">날짜</th>
					<th class="writer">작성자</th>
					<th class="look">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="reci_bul" items="${bul_rec}">
					<tr class="lines">
						<td class="tb_num_color">1</td>
						<td><img src="${reci_bul.mainpic }.jpg"></td>
						<td>${reci_bul.recipe_title }</td>
						<td>${reci_bul.recipe_date }</td>
						<td>${reci_bul.uname }</td>
						<td>${reci_bul.viewer }</td>
						<td style="display: none" class="bu_reciid">${reci_bul.recipe_id }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script>

</script>
