<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>방승연의 포트폴리오</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/id_check.css" />
        <link rel="stylesheet" href="assets/css/board_check_pass.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="assets/js/portpolio.js"></script>
	</head>
	<body class="is-preload">

        <!--Main-->
        <div id="boardCheckForm">
			<h1>비밀번호 확인</h1>
			<form action="portpolio.do?" name="frm" method="get">
				<input type="hidden" name="command" value="check_pass" />
				<input type="hidden" name="num" value="${param.num}" />

                <input type="password" name="pass" id="boardPass" size="20" />

				 <input type="submit" value="확인" id="boardCheckBtn" onclick="return passCheck();" />
			</form>
			${msg}
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