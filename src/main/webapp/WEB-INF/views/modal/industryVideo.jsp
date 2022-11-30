<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/industry.css">
<script src="${pageContext.request.contextPath}/resources/js/industry.js"></script>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<%
	request.setCharacterEncoding("utf-8");
%>
<body>
<div id ="videoView" class="videoView">
<div class="black_bg"></div>
	<div class="modal_wrap" id="modal_wrap">
	   <div class="modal_header">
	   	<p class="video_title">COURSE INFORMATION</p>
	   </div>
	   <div class="modal_body">
		   <iframe class="video" width="560" height="315" src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>
</div>
<script>  	
	$(document).mouseup(function (e){
	  var backGround = $(".videoView");
	  var layerPopup = $(".modal_wrap");
	  
	  if(layerPopup.has(e.target).length === 0){
		layerPopup.attr("style", "display:none");
	  	backGround.find(".black_bg").attr("style", "display:none");

	  }
	});
</script>
</body>
</html>