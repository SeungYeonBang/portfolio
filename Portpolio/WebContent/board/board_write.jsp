<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy.MM.dd." var="today"/>

<!DOCTYPE HTML>
<html>
	<head>
		<title>방승연의 포트폴리오</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/board_write.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/portpolio.js"></script>
	</head>
	
        <%@ include file="./navi.jsp" %> 
            
        <!--Main-->
        <div id="Detail">
			<h1 id="pageName">게시글 글쓰기</h1>
			<form action="portpolio.do" name="frm" method="POST">
			<input type="hidden" name="command" value="board_write" />
				<table>
					<tr>
						<th>제목</th>
						<td colspan="3">
						   <input type="text" name="title" id="title"/>
					   </td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>
							<input type="text" name="email" id="email" value="${memberVO.email}" readonly/>
						</td>
						<th>작성자</th>
						<td>
							<input type="text" name="name" id="name" value="${memberVO.name}" readonly/>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
					   <td>
							<input type="password" name="pwd" id="pwd" placeholder="특수문자+영문+숫자포함 8자이상"/>
					   </td>
					   <th>작성일</th>
					   <td>
							<input type="text" name="writeDate" id="writeDate" value="${today}" readonly/>
					   </td>
					</tr>
					<tr>
						<th>내용</th>
					   <td colspan="4"> 
							<textarea type="text" id="content" name="content" ></textarea>
					   </td>
					</tr>
				</table>
				<input type="button" id="back" class="btn_view" value="뒤로가기" onclick="goBack();"/>
				 <input type="reset" id="return" class="btn_view" value="다시작성"/>
				 <input type="submit" id="write" class="btn_view" onclick="return passOK();" value="등록하기"/>
			</form>
		</div>
             
<%@ include file="./footer.jsp" %>  