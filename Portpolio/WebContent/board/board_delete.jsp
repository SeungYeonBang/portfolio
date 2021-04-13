<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>방승연의 포트폴리오</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/board_delete.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

        <!--Main-->
        <div id="boardDetail">
			<form action="mguard.do" method="get" name="frm">
				<p id="passp">비밀번호를 입력 해 주세요</p>
				<input type="password" name="pwd" id="passCheck"/>
				<input type="hidden" name="command" value="delete_sucess" />
				<input type="hidden" name="pwdCheck" value="${memberVO.pwd }" />
				<input type="hidden" name="userid" value="${memberVO.userid }" />
				<input type="hidden" name="num" value="${qnaVO.num }" />
				<input type="submit" id="useBtn" value="삭제하기" onclick="return deleteCheck();" />
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