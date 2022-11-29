<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<body>
    <header><jsp:include page="/WEB-INF/views/include/header.jsp" /></header>
    <section class="main_contents">
        <div class="login_form">
        	<span>
        		<p class="title">Login</p>
        		<input type="text" class="login_input" id="login_id" name="login_id" required minlength="4" size="10" placeholder="이메일">
        		<input type="text" class="login_input" id="login_pwd" name="login_pwd" required minlength="4" size="10" placeholder="비밀번호">
        		<p class="login_others"><a>아이디 찾기</a> | <a>비밀번호 찾기</a> | <a onclick="location.href='logup'">회원가입</a></p>
        		<button class="login_but">로그인</button>
        	</span>
        </div>
    </section>
</body>


</html>