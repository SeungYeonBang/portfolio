<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>방승연의 포트폴리오 </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="assets/js/portpolio.js"></script>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<h1>방승연의 포트폴리오   bsy3841@naver.com </h1>
				<nav>
					<ul>
						<% 
							if(session.getAttribute("userid")==null){ 
						%>
								<li><a href="portpolio.do?command=index">Intro</a></li>
						<%	
							}else{
						%>
								<li><a href="portpolio.do?command=main">Intro</a></li>		
						<%		
							}
						%>
						<li><a href="portpolio.do?command=board">Board</a></li>
						<% 
							if(session.getAttribute("userid")==null){ 
						%>
								<li><a href="portpolio.do?command=login">LogIn</a></li>
						<%	
							}else{
						%>
								<li><a href="portpolio.do?command=logout" onclick="logout();">Logout</a></li>		
						<%		
							}
						%>
					</ul>
				</nav>
			</header>