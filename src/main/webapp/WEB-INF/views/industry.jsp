<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/industry.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/industry.js"></script>
    <script src="https://kit.fontawesome.com/b89666f7fe.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<body>
    <header><jsp:include page="/WEB-INF/views/include/header.jsp" /></header>
        <div class="main_contents">
            <div id="mentor-videos">
			    <span><h3 class="aam_sub_title" style="display:inline">VIDEO</h3><span>- 선택한 직무에 관한 직무 정의 영상</span></span>
				      <div class="post-slider">
				        <i class="fas fa-chevron-left prev"></i>  
				        
				        <div class="post-wrapper">
				        	<c:forEach var="video" items="${videoList}">
							  <div class="post">
						          <img class="slider-image" src="${pageContext.request.contextPath}/resources/img/${video.thumbnail_url}" class="slider-image" onclick="getVideo('${video.video_link}')">
						          	<div class="post-info">
						             <c:out value="${video.video_title}" />
						           	</div>
					          </div>
							</c:forEach>
				        </div>
				        <i class="fas fa-chevron-right next"></i>
				      </div>
				      <!--post slider-->
			</div>  
			<div class="bottom_side">
			 <div class="bottom_left">
			  <span><h3 class="aam_sub_title" style="display:inline">졸업생Q&A</h3><a onclick="location.href='qna'"><img class="expand_but" src="${pageContext.request.contextPath}/resources/img/icon/expand-arrows.png"></a></span>
			  <table class="qna_table">
			   <tr>
			    <th>No.</th>
			    <th>제목</th>
			    <th>작성자</th>
			   </tr>
			   <tr>
			    <td>5</td>
			    <td>예시입니다</td>
			    <td>작성자</td>
			   </tr>
			   <tr>
			    <td>4</td>
			    <td>예시입니다</td>
			    <td>작성자</td>
			   </tr>
			   <tr>
			    <td>3</td>
			    <td>예시입니다</td>
			    <td>작성자</td>
			   </tr>
			   <tr>
			    <td>2</td>
			    <td>예시입니다</td>
			    <td>작성자</td>
			   </tr>
			   <tr>
			    <td>1</td>
			    <td>예시입니다</td>
			    <td>작성자</td>
			   </tr>
			  </table>
			 </div>
			 <div class="bottom_right">
			 <span><h3 class="aam_sub_title" style="display:inline">미디어 갤러리</h3><img class="expand_but" src="${pageContext.request.contextPath}/resources/img/icon/expand-arrows.png"></span>
			 </div>
			</div>    
        </div>
    <!--<jsp:include page="/WEB-INF/views/modal/industryVideo.jsp" />-->
</body>
<script src="/js/industry.js"></script>
<script>
    includeHTML();
    
    $('.post-wrapper').slick({
    	  slidesToShow: 3,
    	  slidesToScroll: 1,
    	  autoplay: true,
    	  autoplaySpeed: 5000,
    	  nextArrow:$('.next'),
    	  prevArrow:$('.prev'),
    	});
    
</script>

</html>