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
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/board_view.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="assets/js/portpolio.js"></script>
	</head>
	<%@ include file="./navi.jsp" %> 
        
            
        <!--Main-->
		<div id="Detail">
			<h1 id="pageName">게시글 상세보기</h1>
			<table>
				<tr>
					<th>제목</th>
					<td colspan="3">
					   <input type="text" name="title" id="title" value="${boardVO.title}" readonly/>
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
				   <th>작성일</th>
				   <td>
						<input type="text" name="writeDate" id="writeDate" 
						value="<fmt:formatDate value="${boardVO.writedate}"/>" readonly/>
				   </td>
				   <th>조회수</th>
				   <td>
						<input type="text" name="readCount" id="readCount" value="${boardVO.readcount}" readonly/>
				   </td>
				</tr>
				<tr>
					<th>내용</th>
				   <td colspan="4"> 
						<textarea readonly id="content" name="content">${boardVO.content}</textarea>
				   </td>
				</tr>
			</table>
			
			<input type="button" class="btn_view" id="return" value="목    록" 
			onclick="location.href='portpolio.do?command=board'"/>
			
			<%
        		if(session.getAttribute("userid") != null){ 
        	%> 
			
		   	<input type="button" class="btn_view" id="write" value="글 쓰 기"  
		   	onclick="location.href='portpolio.do?command=board_write_form'"/>
		   	
		   	<input type="button" class="btn_view" id="update" value="수정하기" 
		   	onclick="open_win('portpolio.do?command=check_pass_form&num=${boardVO.num}','update');"/>
		   	
		   	<input type="button" class="btn_view" id="delete" value="삭제하기" 
		   	onclick="open_win('portpolio.do?command=check_pass_form&num=${boardVO.num}','delete');"/>
		   	
		   	<%
        		}
        	%>
		   	
		</div>
            
<%@ include file="./footer.jsp" %>   