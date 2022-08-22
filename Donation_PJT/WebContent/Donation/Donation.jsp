<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/Donation.css?ver=1">
	<script>
		$(function() {
			
		})
	</script>
</head>
<body>
	<%@ include file="../Common/Nav.jsp" %><br>
	<div class="row">
		<div class="col-9 row" style="border-right: 1px solid #c4c5c4; padding-left: 3rem; padding-right: 0rem;">
			<div class="donation-category">
				<button class="donation-btn">아동•청소년</button>
				<button class="donation-btn">어르신</button>
				<button class="donation-btn">장애인</button>
				<button class="donation-btn">다문화</button>
				<button class="donation-btn">지구촌</button>
				<button class="donation-btn">가족•여성</button>
				<button class="donation-btn">동물</button>
				<button class="donation-btn">환경</button>
			</div>
			
			
			<c:forEach var="i" begin="0" end="5">
				<section class="cards col-4 mb-5">
					<article class="card card--1">
					  <div class="card__img" style="background-image: url('<c:out value="https://happybean-phinf.pstatic.net/20220819_67/1660868531689IgY4X_JPEG/메인이미지01jpg?type=w720" />')"></div>
					  <a href="#" class="card_link">
					     <div class="card__img--hover" style="background-image: url('<c:out value="https://happybean-phinf.pstatic.net/20220819_67/1660868531689IgY4X_JPEG/메인이미지01jpg?type=w720" />')"></div>
					   </a>
					  <div class="card__info">
					    <h3 class="card__title">밥 한끼조차 챙기기 어려운 연아</h3>
					    <span class="card__by">
					    	<img class="card__logo" src="https://happybean-phinf.pstatic.net/20200116_34/1579150184219Bj6oe_JPEG/%C6%C4%BA%F1%C4%DC.jpg?type=w180">
					    	<a href="#" class="card__author" title="author">세이브더칠드런</a>
					    </span>
					    <div class="container-fluid">
						    <div class="Loading">
						    	<div
						    		class="Loading-after"
						    		style="width: <c:out value='70%' />;
						    		background-color:
						    			<c:if test="${i==0}"><c:out value="black" /></c:if>
						    			<c:if test="${i==1}"><c:out value="yellow" /></c:if>
						    			<c:if test="${i==2}"><c:out value="blue" /></c:if>
						    			<c:if test="${i==3}"><c:out value="crimson" /></c:if>
						    			<c:if test="${i==4}"><c:out value="pink" /></c:if>
						    			<c:if test="${i==5}"><c:out value="red" /></c:if>
						    		;"
						    	>
						    	</div>
						    </div>
						    
						    <span class="progress-span">70%</span>
						    <span>
						    	<c:if test="${i} = 0">aaaa</c:if>
						    </span>
						</div>
					  </div>
					</article>
					 
				</section>
			</c:forEach>
			
			<div class="mb-5" style="margin: auto;">
				<ul class="pagination">
					<li><a href="#0">&lt;</a></li>
					<li><a class="active" href="#0">1</a></li>
					<li><a href="#0">2</a></li>
					<li><a href="#0">3</a></li>
					<li><a href="#0">4</a></li>
					<li><a href="#0">&gt;</a></li>
				</ul>
			</div>
		</div>
		<div class="col-3">
			<div class="ranking">
				<h3 align="center">Ranking</h3>
			</div>
		</div>
	</div>
	<%@ include file="../Common/Footer.jsp" %><br>
</body>
</html>