<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
	<tiles:insertAttribute name="reci_navi"/>
	<main>
		<header>
			<tiles:insertAttribute name="header" />
			<nav></nav>
		</header>
		<section>
			<tiles:insertAttribute name="body" />
		</section>
		<footer>
			<tiles:insertAttribute name="footer" />
		</footer>
	</main>
</body>
<script type="text/javascript" src="resources/assets/js/search_event.js"></script>
<script type="text/javascript" src="resources/assets/js/header_contents.js"></script>
</html>