<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/amam.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/amam.js"></script>
</head>
<body>
<header><jsp:include page="include/header.jsp" /></header>
<div class="amam_tab_wrap">
	<div class="qna_tab">
		<h3>재학생이 묻고 졸업생이 답한다</h3>
	</div>
	<div class="advice_tab">
		<h3>현직 선배의 조언</h3>
	</div>
</div>
<div class="amam_main_cont">
	<div class="write_wrap">
		<button>분야별로 질문하기</button>
	</div>
	<div class="select_wrap">
		<select>
			<option value="all">전체 분야(Select area)</option>
			<option value="gi">게임&인터렉티브 콘텐츠</option>
			<option value="cd">콘텐츠 디자인</option>
			<option value="de">디지털 엔터테인먼트</option>
			<option value="vc">비주얼 컴퓨팅</option>
			<option value="md">미디어 데이터</option>
		</select>
	</div>
	<div class="list_wrap">
		<table>
			<tr>
				<th>No.</th>
				<th>Area</th>
				<th>Title</th>
				<th>Post by</th>
				<th>Date</th>
				<th>Hit</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
	<div class="paging_wrap">
	
	</div>
	<div class="search_wrap">
		
	</div>
	<div class="footer_wrap">
		<p>[멘토 등록 문의] media.industry.link@gmail.com</p>
	</div>
</div>
</body>
</html>