<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>방승연의 포트폴리오</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
        <link rel="stylesheet" href="assets/css/join.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/year.js"></script>
        <script src="assets/js/portpolio.js"></script>
	</head>
	
    <%@ include file="./navi.jsp" %> 
            
        <!--Main-->
        <div id="joinMain">
            <h1 id="pageName">회 &nbsp;원 &nbsp;가 &nbsp;입</h1>
            <form name="joinMember" action="portpolio.do" method="POST">
            <input type="hidden" name="command" value="join_ok" />
                <table>
                    <tr>
                        <th>아이디 *</th>
                        <td>
                             <input type="text" name="userid" class="inputBox" id="userID" size="20"/>
                        	<input type="hidden" name="reid" size="20"/>
                        </td>
                        <td>
                            <input type="button" value="중복확인" id="overlap" onclick="idCheck();" />
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호 *</th>
                        <td><input type="password" name="pwd" class="inputBox" id="userPW" size="50" placeholder="영문,숫자,특수기호 포함  8자리 이상"/></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인 *</th>
                        <td><input type="password" name="pwd_check" class="inputBox" id="userPW2" size="15" placeholder="비밀번호 확인" /></td>
                    </tr>
                    <tr>
                        <th>이름 *</th>
                        <td><input type="text" name="name" class="inputBox" id="userName" size="20"/></td>
                    </tr>
                    <tr>
                        <th>생년월일 *</th>
                        <td>
                            <select name="YEAR" id="YEAR" title="년도" class="select w80"></select>

                            <select name="MONTH" id="MONTH" title="월" class="select w80"></select></select>

                            <select name="DAY" id="DAY" title="일" class="select w80"></select></select>
                                
                        </td>
                    </tr>
                    <tr>
                        <th>성별 *</th>
                        <td>
                            <select name="gender" class="inputBox" id="userGender">
                                <option value="">성별</option>
                            	<option value="m">남</option>
                            	<option value="w">여</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>이메일 *</th>
                        <td><input type="email" name="email" class="inputBox" id="userEmail" size="50"/></td>
                    </tr>
                    <tr>
                        <th>휴대전화 *</th>
                        <td>
                            <select name="nationNum" class="inputBox" id="userNation">
                            <option value="">국가번호</option>
                            <option value="korea">대힌민국+82</option>
                            <option value="usa">미국+01</option>
                            <option value="japan">일본+81</option>
                            <option value="uk">영국+44</option>
                            </select>
                            <input type="tel" placeholder="전화번호 입력 (- 제외)" name="phone" class="inputBox" id="userPhone" size="13"/>  
                        </td>
                    </tr>
                </table>
                <input type="submit" value="가 입 하 기"class="inputBox" id="btnJoin" onclick="return joinCheck();"/>
            </form>
        </div>
        
<%@ include file="./footer.jsp" %>   