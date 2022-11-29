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
        		<p class="title">Create Account</p>
        		이메일
        		<input type="text" class="login_input" id="login_id" name="login_id" required minlength="4" size="10" placeholder="이메일을 입력해주세요.">
        		비밀번호
        		<input type="text" class="login_input" id="login_pwd" name="login_pwd" required minlength="4" size="10" placeholder="영어,숫자,특수문자 중 세 종류를 조합">
        		비밀번호 재확인
        		<input type="text" class="login_input" id="login_pwd" name="login_pwd" required minlength="4" size="10" placeholder="영어,숫자,특수문자 중 세 종류를 조합">
        		이름
        		<input type="text" class="login_input" id="login_pwd" name="login_pwd" required minlength="4" size="10" placeholder="이름을 입력해주세요.">
        		학번
        		<input type="text" class="login_input" id="login_pwd" name="login_pwd" required minlength="4" size="10" placeholder="학번을 입력해주세요.">
        		<button class="login_but">회원가입</button>
        	</span>
        </div>
    </section>
</body>


</html>