 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>마이페이지/개인정보변경</title>
<!--   <base href=""> -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/member/myPage.css'/>">
<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="<c:url value='/js/searchZip.js' />"></script>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>

</head>

<body>
	<div class="pageSize">
		<!-- 헤더 -->
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />




		<!-- 마이페이지 메뉴 -->
			<nav class="myPage-nav">
				<div class="myPage-nav-container">
					<img src="<c:url value='/image/user.png'/>" class="myPage-userImg">
					<div class="myPage-Inf">마이페이지</div>
						
						<div class="button-box">
						<input class="myPage-button" type="button" value="나의 개인정보"onClick="location.href='<c:url value='myPage'/>'">
						<input class="myPage-button" type="button" value="비밀번호 변경"onClick="location.href='<c:url value='memPw'/>'">
						<input class="myPage-button" type="button" value="나의 찜목록" onClick="location.href='<c:url value='likes'/>'">
					</div>
			</div>

		</nav>

		<!-- 나의 찜 목록 -->
		<section class="myPage-main">
			<div class="myPage-main-container">
				<div class="myPage-main-container-header">
					<h3>나의 찜 목록</h3>
					<hr>
					<div class="saveExerciseList">
						<ul>
							<c:forEach var='exList' items="${exList}">
							<li>
								<div class="exListName">${exList.routineName}</div>
								<div class="exListCreateDate">${exList.routineCreateDate}</div>
							</li>
							</c:forEach>
						</ul>

					</div>
					<!--
					<div class="saveSupplementsList">
						<ul>
							<c:forEach var='comList' items="${comList}">
							<li>
								<div class=""></div>
							</li>
							</c:forEach>
						</ul>

					</div>
					-->
				</div>
			</div>
	



	</section>
	
	

	</div>









	<!-- footer -->


</body>

<footer>
	<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />

	</div>
</footer>