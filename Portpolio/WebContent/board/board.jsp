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
		<link rel="stylesheet" href="assets/css/board.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	
	<%@ include file="./navi.jsp" %> 
            
        <!--Main-->
        <div id="board">
			<h1 id="pageName">게시판 목록</h1>
            <table id="boardtbl">
                <tr>
                    <th>번호</th><th>내용</th><th>날짜</th><th>작성자</th><th>조회수</th>
                </tr>
                <c:forEach var="board" items="${boardList}">
                    <tr>
                        <td>${board.num}</td>
                        <td><a href="portpolio.do?command=board_view&num=${board.num}"/>${board.title}</td>
                        <td><fmt:formatDate value="${board.writedate}" /></td>
                        <td>${board.name}</td>
                        <td>${board.readcount}</td>
                    </tr>
                    </c:forEach>
            </table>
        </div>
        
        <%
        	if(session.getAttribute("userid") != null){ 
        %>       
        	<div id="btnPos">
            	<input type="button" class="btn_view" value="글쓰기"
            	onclick="location.href='portpolio.do?command=board_write_form'"/>
        	</div>
        <%
        	}
        %>
        
<%@ include file="./footer.jsp" %>   