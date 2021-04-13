<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %> 
			
			<script src="assets/js/jquery-3.5.1.min.js"></script>
        	<script src="assets/js/portpolio.js"></script>
        	
		<!-- Intro -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content">
					<header>
						<h2 id="introH2">${memberVO.name}님 안녕하세요.</h2>
					</header>
					<p class="introP">자기 발전에 끊임없는 노력과 열정을 갖고 있는 분위기 메이커 <br />
					 <strong class="introP">JAVA Web/App</strong> 신입 개발자 방승연 입니다.</p>
					<footer>
						<a href="#one" class="button style2 down">More</a>
					</footer>
				</div>
			</section>

		<!-- One -->
			<section id="one"  class="main style2 right dark fullscreen" >
				<div class="content box style2">
					<header>
						<h2>제가 잘하는 것은</h2>
					</header>
					<p>1. java기반의 안드로이드 앱 및 웹 구현이 가능하며, java언어를 잘 합니다.</p>
					<p>2. 객제지향 언어인 java를 사용하여 MVC1/MVC2 기반으로 controller를 사용해 웹을 구현할 수 있습니다.</p>
					<p>3. Oracle/MySQL/SQLite 등의 여러 DBMS를 사용할 수 있으며 join등의 sql언어를 잘 사용합니다.</p>
					<p>4. 부트스트랩의 여러 템플릿을 사용하여 원하는 페이지를 구현할 수 있습니다.</p>
					<p>5. Calender, NumberFormat 등의 Java의 여러 객체를 사용하여 구현이 가능합니다.</p>
					<input type="button" value="이력서" onclick="open_source('resume.jsp','resume');"/>
				</div>
				<a href="#two" class="button style2 down anchored">Next</a>
			</section>

		<!-- Two -->
			<section id="two" class="main style2 left dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>JSP Web</h2>
					</header>
					<p>MVC 기반으로 controller를 사용해 웹을 구현하였습니다.</p>
					<p>EL 표기법과 JSTL을 이용하였고, DTO 클래스에 Set/Get 메소드를 사용하여 Oracle과 연동하여 DML명령어를 통해 게시판 및 로그인,회원가입을 구현하였습니다.</p>
					<p>List 객체 중 ArrayList객체에 제네릭 타입으로 구현 객체를 파라미터로 지정해서 사용하여 게시판을 구현하였습니다.</p>
					<p>세션을 사용하여 로그인 유지기능 및 로그아웃 기능을 구현하였습니다.</p>
					<input type="button" value="소스보기" onclick="open_source('web_source.jsp','web');"/>
					<img src="images/webqr.jpg" alt="qr_code" class="qrimg"/>
				</div>
				<a href="#three" class="button style2 down anchored">Next</a>
			</section>

		<!-- Three -->
		<section id="three"  class="main style2 right dark fullscreen" >
			<div class="content box style2">
				<header>
					<h2>Android</h2>
				</header>
				<p>MPAndroidChart 라이브러리를 이용하여 차트를 구현 하였습니다.</p>
				<p>BottomNavigation와  ViewPager를 이용하여 사용하기 편리한 UI UX를 구현하였습니다.</p>
				<p>Handler 객체를 활용하여 Splash 화면을 구현하였습니다.</p>
				<p>내장객체 SQLite를 활용하여 DB를 설계하고 DDL, DML, DCL 등의 명령어를 사용하여, DB를 구축하고 사용하였습니다.</p>
				<input type="button" value="소스보기" onclick="open_source('android_source.jsp','android');"/>
				<img src="images/androidqr.jpg" alt="qr_code" class="qrimg"/>
			</div>
			<a href="#work" class="button style2 down anchored">Next</a>
		</section>

		<!-- Work -->
			<section id="work" class="main style3 primary">
				<div class="content">
					<header>
						<h2>My Portfolio</h2>
						<p>제가 만든 작품을 소개합니다.</p>
					</header>

					<!-- Gallery  -->
						<div class="gallery">
							<article class="from-left">
								<a href="images/fulls/01.jpg" class="image fit"><img src="images/thumbs/01.jpg" title="Android Splash & Main" alt="Android Splash & Main" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/02.jpg" class="image fit"><img src="images/thumbs/02.jpg" title="Android Enter Amount" alt="Android Enter Amount" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/03.jpg" class="image fit"><img src="images/thumbs/03.jpg" title="Android Calendar" alt="Android Calendar" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/04.jpg" class="image fit"><img src="images/thumbs/04.jpg" title="Android Statement & List" alt="Android Statement & List" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/05.png" class="image fit"><img src="images/thumbs/05.png" title="Web Login" alt="Web Login" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/06.png" class="image fit"><img src="images/thumbs/06.png" title="Web Join" alt="Web Join" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/07.png" class="image fit"><img src="images/thumbs/07.png" title="Web Board" alt="Web Board" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/08.png" class="image fit"><img src="images/thumbs/08.png" title="Web Board View" alt="Web Board View" /></a>
							</article>
						</div>

				</div>
			</section>

		<!-- Contact -->
			<section id="contact" class="main style3 secondary">
				<div class="content">
					<header>
						<h1>저는 이런사람 입니다.</h1>
						<p>언제나 노력을 게을리 하지 않고 도전을 두려워 하지 않는 사람</p>
						<p>생기가 넘처 직원들간의 관계가 돈독한 사람</p>
						<p>미래를 고민하고 최선을 다하여 팀원들에게 힘들 주는 사람</p>
						<p>문의사항 있으시면 언제든지 연락 주세요 3일 이내로 답장 드리겠습니다. 감사합니다 ^^</p>
						<h2> Email : <a href="http://www.naver.com">bsy3841@naver.com</a></h2>
						<h2> Tel : 010-3950-1041</h2>
						<a href="https://github.com/SeungYeonBang/portfolio"><img id="gitimg" alt="github" src="images/github.png"></a>
						
					</header>
				</div>
			</section>

<%@ include file="./footer.jsp" %>     