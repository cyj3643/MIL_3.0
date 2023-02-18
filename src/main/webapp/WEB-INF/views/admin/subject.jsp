<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webapp/resources/css/admin/subject.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webapp/resources/css/admin/menu.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/webapp/resources/js/pop-up.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

<div class="main_contents">
    <p class="main_contents_title">과목편집</p>
    <section class="row">
        <div class="subject-list">

        </div>
        <div class="subject-info">

        </div>
    </section>
</div>

<div class="left_menu">
    <div class="mil_logo">
        <div class="title">
            <p class="title1">MI</p>
            <p class="title2">L</p>
        </div>
        <div>
            <p class="sub_title">관리자페이지</p>
        </div>
    </div>
    <a href="curriculum.html"><div class="menu1">교과과정 편집</div></a>
    <a href="subject.html"><div class="menu2"><p>과목편집</p></div></a>
    <a href="video.html"><div class="menu3"><p>전문가영상관리</p></div></a>
    <a href="mentor.html"><div class="menu4"><p>멘토관리</p></div></a>
    <a href="mail.html"><div class="menu5"><p>전체메일발송</p></div></a>
</div>
</body>
</html>