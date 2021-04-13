<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>방승연의 포트폴리오</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/board_update.css" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="assets/js/portpolio.js"></script>
	</head>
	
	<%@ include file="./navi.jsp" %> 
            
        <!--Main-->
        <div id="write">
			<h1 id="pageName">게시글 수정하기</h1>
			<form action="portpolio.do" name="frm" method="POST">
				<input type="hidden" name="command" value="board_update" />
				<input type="hidden" name="num" value="${boardVO.num}" />
				<table>
					<tr>
						<th>제목</th>
						<td colspan="3">
						   <input type="text" name="title" id="title" value="${boardVO.title}"/>
					   </td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>
							<input type="text" name="email" id="email" value="${boardVO.email}" readonly/>
						</td>
						<th>작성자</th>
						<td>
							<input type="text" name="name" id="name" value="${boardVO.name}" readonly/>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
					   <td>
							<input type="password" name="pwd" id="pwd"/>
					   </td>
					   <th>작성일</th>
					   <td>
							<input type="text" name="writeDate" id="writeDate" 
							value="<fmt:formatDate value="${boardVO.writedate}"/>" readonly/>
					   </td>
					</tr>
					<tr>
						<th>내용</th>
					   <td colspan="4"> 
							<textarea type="text" id="content" name="content" >${boardVO.content}</textarea>
					   </td>
					</tr>
				</table>
				<input type="button" id="back" class="btn_view" value="뒤로가기" onclick="goBack();"/>
				 <input type="reset" id="return" class="btn_view" value="다시작성"/>
				 <input type="submit" id="btnwrite" class="btn_view" onclick="return passOK();" value="수정완료"/>
			</form>
		</div>

<%@ include file="./footer.jsp" %>   