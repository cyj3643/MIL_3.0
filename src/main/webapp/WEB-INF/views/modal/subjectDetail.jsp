<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cil.css">
<script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<%
	request.setCharacterEncoding("utf-8");
%>
<body>
<div id ="detailModal" class="detailModal">
<div class="black_bg"></div>
	<div class="modal_wrap" id="modal_wrap">
	   <div class="modal_header">
	   	<p>COURSE INFORMATION</p>
	   </div>
	   <div class="modal_body">
		   <div class="modal_left_wrap">	
		   	<div class="course_wrap">
		   		<p class="title">Course</p>
		   		<p class="course_cont"></p>
		   	</div>
		   	<div class="keyword_wrap">
		   		<p class="title">Key-words</p>
		   		<p class="keyword_cont"></p>
		   	</div>
		   	<div class="details_wrap">
		   		<p class="title">Details</p>
		   		<p class="detail_cont"></p>
		   	</div>
		   </div>
		   <div class="modal_right_wrap">
		   	<div class="icon_wrap">
		   	</div>
		   	<div class="tools_wrap">
		   		<p class="title">Tools</p>
		   		<p class="tools_cont"></p>
		   	</div>
		   	<div class="pre_wrap">
		   		<p class="title">Prerequisite Courses</p>
		   		<p class="pre_cont"></p>
		   	</div>
		   	<div class="related_wrap">
		   		<p class="title">Related Courses</p>
		   		<p class="related_cont"></p>
		   	</div>
		   </div>
		</div>
	</div>
</div>
<script>  
	//$("#detailModal").draggable();
	
	$(document).mouseup(function (e){
	  var backGround = $(".detailModal");
	  var layerPopup = $(".modal_wrap");
	  
	  if(layerPopup.has(e.target).length === 0){
		layerPopup.attr("style", "display:none");
	  	backGround.find(".black_bg").attr("style", "display:none");

	  }
	});
</script>
</body>
</html>