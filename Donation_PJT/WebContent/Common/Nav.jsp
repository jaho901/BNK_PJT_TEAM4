<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style scoped>
		@import url("../Common/css/Nav.css?ver=1");
		@import url("../Common/css/Modal.css?ver=1");
	</style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		$(function() {
			$('.logo').click(function() {
				location.href="../Main/Home.html"	
			})
			
			$('.nav-inner #main').click(function() {
				location.href="../Main/Main.jsp"
			})
			
			$('.nav-inner #donation').click(function() {
				location.href="../Donation/Donation.jsp"
			})
			
			$('.nav-inner #card').click(function() {
				location.href="../Card/Card.jsp"
			})
		})
		
		$(function() {	
			$('#login').click(function() {
				openModalin();
			})
			
			$('.closein-button').click(function() {
				closeModalin();
			})
			
			$('#signup').click(function() {
				openModalout();
			})
			
			$('.closeout-button').click(function() {
				closeModalout();
			})
			
			$('.goToSignup').click(function() {
				closeModalin();
				openModalout();
			})
			
			$('.goToLogin').click(function() {
				closeModalout();
				openModalin();
			})
			
		})
		
		
		function openModalin() {
			$('.modalin').addClass("is-open");
			$('.modalin').css({"position": "absolute", "z-index": "1"});
			$('body').css("overflow", "hidden");
		};
	
		function closeModalin() {
			$('.modalin').removeClass("is-open");
			$('.modalin').css('position', 'fixed');
			$('body').css("overflow", "initial");
		};
		
		function openModalout() {
			$('.modalout').addClass("is-open");
			$('.modalout').css({"position": "absolute", "z-index": "1"});
			$('body').css("overflow", "hidden");
		};
	
		function closeModalout() {
			$('.modalout').removeClass("is-open");
			$('.modalout').css('position', 'fixed');
			$('body').css("overflow", "initial");
		};
	</script>
</head>

<body>
	<div class="nav row">
        <div class="nav-inner offset-1 col-4">
        	<img class="logo" src="../Common/img/logo.jpg">
       		<span id="login">?????????</span>
       		<span id="signup">????????????</span>
       	</div>
        <div class="nav-inner offset-2 col-4">
        	<span id="main">???</span>
       		<span id="donation">??????</span>
       		<span id="card">????????????</span>
       		<span>?????????</span>
       		<span>????????????</span>
       	</div>
    </div>
    <div class="modalin">
	        <div class="modalin-container">
	            <div class="modalin-left">
	                <h1 class="modalin-title">???????????????.!</h1>
	                <p class="modalin-desc">????????? ?????? ?????? ???????????? ??????????????????.</p>
	                <div class="input-block">
	                    <label for="email" class="input-label">?????????</label>
	                    <input type="email" name="email" id="email" placeholder="Email">
	                </div>
	                <div class="input-block">
	                    <label for="password" class="input-label">????????????</label>
	                    <input type="password" name="password" id="password" placeholder="Password">
	                </div>
	                <br><br>
	                <div class="modalin-buttons">
	                    <a href="" class="">???????????? ??????</a>
	                    <button class="input-buttonin">?????????</button>
	                </div>
	                <p class="sign-up">?????? ????????? ???????????????? <a href="#" class="goToSignup">&nbsp;??????????????????</a></p>
	            </div>
	            <div class="modalin-right">
	                <img src="../Main/img/MrB.jpg" alt="" style="width: 80%;">
	            </div>
	            <button class="icon-button closein-button">
	                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
	                    <path d="M 25 3 C 12.86158 3 3 12.86158 3 25 C 3 37.13842 12.86158 47 25 47 C 37.13842 47 47 37.13842 47 25 C 47 12.86158 37.13842 3 25 3 z M 25 5 C 36.05754 5 45 13.94246 45 25 C 45 36.05754 36.05754 45 25 45 C 13.94246 45 5 36.05754 5 25 C 5 13.94246 13.94246 5 25 5 z M 16.990234 15.990234 A 1.0001 1.0001 0 0 0 16.292969 17.707031 L 23.585938 25 L 16.292969 32.292969 A 1.0001 1.0001 0 1 0 17.707031 33.707031 L 25 26.414062 L 32.292969 33.707031 A 1.0001 1.0001 0 1 0 33.707031 32.292969 L 26.414062 25 L 33.707031 17.707031 A 1.0001 1.0001 0 0 0 32.980469 15.990234 A 1.0001 1.0001 0 0 0 32.292969 16.292969 L 25 23.585938 L 17.707031 16.292969 A 1.0001 1.0001 0 0 0 16.990234 15.990234 z"></path>
	                </svg>
	            </button>
			</div>
	    </div>
	    <div class="modalout">
	        <div class="modalout-container">
	            <div class="modalout-left">
	                <h1 class="modalout-title">???????????????.!</h1>
	                <p class="modalout-desc">????????? ?????? ?????? ??????????????? ??????????????????.</p>
	                <div class="input-block">
	                    <label for="email" class="input-label">?????????</label>
	                    <input type="email" name="email" id="email" placeholder="Email">
	                </div>
	                <div class="input-block">
	                    <label for="nickname" class="input-label">?????????</label>
	                    <input type="text" name="nickname" id="nickname" placeholder="Nickname">
	                </div>
	                <div class="input-block">
	                    <label for="password" class="input-label">????????????</label>
	                    <input type="password" name="password" id="password" placeholder="Password">
	                </div>
	                <div class="input-block">
	                    <label for="passwordConfirm" class="input-label">???????????? ??????</label>
	                    <input type="password" name="passwordConfirm" id="passwordConfirm" placeholder="passwordConfirm">
	                </div>
	                <div class="modalout-buttons">
	                    <button class="input-buttonout">????????????</button>
	                </div>
	                <p class="sign-in">?????? ????????? ???????????????? <a href="#" class="goToLogin">&nbsp;???????????????</a></p>
	            </div>
	            <div class="modalout-right">
	                <img src="../Main/img/MrB.jpg" alt="" style="width: 80%;">
	            </div>
	            <button class="icon-button closeout-button">
	                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
	                    <path d="M 25 3 C 12.86158 3 3 12.86158 3 25 C 3 37.13842 12.86158 47 25 47 C 37.13842 47 47 37.13842 47 25 C 47 12.86158 37.13842 3 25 3 z M 25 5 C 36.05754 5 45 13.94246 45 25 C 45 36.05754 36.05754 45 25 45 C 13.94246 45 5 36.05754 5 25 C 5 13.94246 13.94246 5 25 5 z M 16.990234 15.990234 A 1.0001 1.0001 0 0 0 16.292969 17.707031 L 23.585938 25 L 16.292969 32.292969 A 1.0001 1.0001 0 1 0 17.707031 33.707031 L 25 26.414062 L 32.292969 33.707031 A 1.0001 1.0001 0 1 0 33.707031 32.292969 L 26.414062 25 L 33.707031 17.707031 A 1.0001 1.0001 0 0 0 32.980469 15.990234 A 1.0001 1.0001 0 0 0 32.292969 16.292969 L 25 23.585938 L 17.707031 16.292969 A 1.0001 1.0001 0 0 0 16.990234 15.990234 z"></path>
	                </svg>
	            </button>
			</div>
	    </div>
</body>
</html>