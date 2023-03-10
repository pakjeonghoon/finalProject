<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--header 코드 입니다.-->
<header>
	<div id="headerMenuBox">
		
		<div>
			<a href="<c:url value='/' />" class="header-logo"><img src="<c:url value='/image/header/logo3.png'/>" id="logoImg"></a>
		</div>
		<c:import url="/WEB-INF/views/headerFooter/topMenu.jsp" />
		<!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
		<div id="idDiv">
			<c:if test="${empty sessionScope.sid }">
				<a href="<c:url value='/member/joinForm'/>" id="headerMenuA"
					class="signUn"><input type="submit" id="button" class="header-button" value="회원가입"></a>
				<a href="<c:url value='/member/loginForm'/>" id="headerMenuA"
					class="signIn"><input type="submit" id="button" class="header-button" value="로그인"></a>

			</c:if>

			<!-- 로그인 성공 후 보여줄 메뉴 항목 -->
			<c:if test="${not empty sessionScope.sid }">
				<a href="<c:url value='/member/myPage'/>" id="headerMenuA"
					class="myPage"><input type="submit" id="button" class="header-button" value="마이페이지"></a>
				<a href="<c:url value='/member/logout'/>" id="headerMenuA"
					class="logOut"><input type="submit" id="button" class="header-button" value="로그아웃"></a>
				<a id="headerMenuA" class="headerUserId">${sessionScope.sid}님</a>
				<img src="<c:url value='/image/user.png'/>" class="userImg">
				
				
				
		
			</c:if>
		</div>
	</div>
	
<div class="top-line"></div>
	

</header>

