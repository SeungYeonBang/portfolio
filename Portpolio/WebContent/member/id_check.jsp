<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>방승연의 포트폴리오</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/id_check.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="assets/js/portpolio.js"></script>
	</head>
	<body class="is-preload">

        <!--Main-->
        <div id="idCheckForm">
			<form action="portpolio.do" method="get" name="frm">
				아이디&nbsp;&nbsp;<input type="text" name="userid" id="idCheck"  value="${userid}" />
				<input type="hidden" name="command" value="idCheck" />
				<input type="submit" id="idCheckBtn" value="중복체크" onclick="return idReCheck();" />
				<br>
	
				<div id="result">
					<c:if test="${userid == memberVO.userid}">
						${param.userid}는 사용중인 아이디 입니다<br>
					</c:if>
					<c:if test="${userid != memberVO.userid}">
						${userid}는 사용가능한 아이디 입니다<br>
					</c:if>
				</div>
				
				<c:if test="${userid == memberVO.userid}">
					<input type="button" id="useBtn" value="사용" onclick="alert('사용할 수 없는 아이디 입니다.');" />
				</c:if>
				<c:if test="${userid != memberVO.userid}">
					<input type="button" id="useBtn" value="사용" onclick="idOK();" />
				</c:if>
				
			</form>
		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>