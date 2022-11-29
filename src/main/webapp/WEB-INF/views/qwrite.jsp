<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/amam.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/amam.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
<header><jsp:include page="/WEB-INF/views/include/header.jsp" /></header>

<div class="amam_main_cont">
	<div class="write_wrap">
		<table>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" id="title_input" placeholder="멘토에게 질문하고 싶은 내용을 간략히 요약하여 적어주세요"/>
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>
					작성자
				</td>
			</tr>
			<tr>
				<th>질문 분야</th>
				<td>
					<label class="radio_track"><input type="radio" id="all_track" class="track" name="track" value="all_track" checked><span>&nbsp;전&nbsp;체&nbsp;</span></label> 
					<label class="radio_track"><input type="radio" id="gi_track" class="track" name="track" value="gi_track"><span>게임&인터렉티브 콘텐츠</span></label> 
					<label class="radio_track"><input type="radio" id="cd_track" class="track" name="track" value="cd_track"><span>콘텐츠 디자인</span></label> 
					<label class="radio_track"><input type="radio" id="de_track" class="track" name="track" value="de_track"><span>디지털 엔터테인먼트</span></label> 
					<label class="radio_track"><input type="radio" id="vc_track" class="track" name="track" value="vc_track"><span>비주얼 컴퓨팅</span></label> 
					<label class="radio_track"><input type="radio" id="md_track" class="track" name="track" value="md_track"><span>미디어 데이터</span></label> 
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea></textarea>
				</td>
			</tr>
		</table>
	</div>
	<div class="footer_wrap">
		<div class="write_but_wrap">
			<button id="write_but" type="submit" onclick="location.href='qna/write'">질문하기</button>
		</div>
	
		<!-- <p>[멘토 등록 문의] media.industry.link@gmail.com</p> -->
	</div>
</div>
</body>
</html>