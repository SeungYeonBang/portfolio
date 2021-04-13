<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>방승연의 포트폴리오</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/login.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/portpolio.js"></script>
	</head>
	<%@ include file="./navi.jsp" %> 
        
            
        <!--Main-->
        <div id="login">
            <h1 id="pageName">L o g I n</h1>
            <form action="portpolio.do" method="POST" name="frm">
                <input type="text" id="id" name="userid" size="35" required placeholder=" 아이디"/><br>
                <input type="password" id="pw" name="pwd" size="35" minlength="8" required placeholder=" 비밀번호(특수문자 포함 8자리 이상)"/><br>
                <input type="hidden" name="command" value="login_check"/>
                <input type="submit" id="loginbtn" value="로그인" onclick="return loginCheck();" />
                <input type="button" id="Joinbtn" value="회원가입" 
                	onclick="location.href='portpolio.do?command=join'" />    
            </form>
            <div>
            	${msg}
            </div>
        </div>

<%@ include file="./footer.jsp" %>   