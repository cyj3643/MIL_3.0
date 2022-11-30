<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cil.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<body>
    <header><jsp:include page="include/header.jsp" /></header>
    <section class="main_contents">
        <div class="area_section">
            <table class="area_table">
                <tr>
                    <th class="area_title"><span>AREA</span></th>
                </tr>
                <tr>
                    <td class="gi_wrap">
                        <img id="gi_but" src="${pageContext.request.contextPath}/resources/img/area_icon/areaIcon_game.png">
                    </td>
                </tr>
                <tr>
                    <td class="cd_wrap">
                        <img id="cd_but" src="${pageContext.request.contextPath}/resources/img/area_icon/areaIcon_dd.png">
                    </td>
                </tr>
                <tr>
                    <td class="de_wrap">
                        <img id="de_but" src="${pageContext.request.contextPath}/resources/img/area_icon/areaIcon_df.png">
                    </td>
                </tr>
                <tr>
                    <td class="vc_wrap">
                        <img id="vc_but" src="${pageContext.request.contextPath}/resources/img/area_icon/areaIcon_it.png">
                    </td>
                </tr>
                <tr>
                    <td class="md_wrap">
                        <img id="md_but" src="${pageContext.request.contextPath}/resources/img/area_icon/areaIcon_ct.png">
                    </td>
                </tr>
            </table>
        </div>
        <div class="cil_table_section">
            <table>
                <!-- 행: 17, 열 :8 -->
                <tr>
                    <th><span class="class_mark">1-1</span></th>
                    <th><span class="class_mark">1-2</span></th>
                    <th><span class="class_mark">2-1</span></th>
                    <th><span class="class_mark">2-2</span></th>
                    <th><span class="class_mark">3-1</span></th>
                    <th><span class="class_mark">3-2</span></th>
                    <th><span class="class_mark">4-1</span></th>
                    <th><span class="class_mark">4-2</span></th>
                </tr>
                <tr>
                    <td><span class="must_math">수학1</span></td>
                    <td><span class="must_math">확률 및 통계1</span></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <c:set var="index" value="0"/>
                <c:set var="row" value="3"/>
                <%
                	for(int i=0; i<14; i++)
                	{
                		%>
                		<tr>
                			<c:set var="col" value="1"/>
                			<%for(int j=0; j<8; j++){ %>
                				<td>
	                			<c:if test = "${subjectList[index].row_id==row}">
			               			<c:if test = "${subjectList[index].col_id==col}">
			               				<span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
			               					  onclick="getDetail('${subjectList[index].subject}')">
			               					<c:out value="${subjectList[index].name}"/>
			               				</span>
			               				<c:set var="index" value="${index+1}"/>
			               			</c:if>			               		
			               		</c:if>
			               		</td>
	                			<c:set var="col" value="${col+1}"/>
                			<%} %>
                			<c:set var="row" value="${row+1}"/>
                		</tr>
                		<% 
                	}
                %>
            </table>
        </div>
            <div class="jobs_section">
                <table class="jobs_table">
                    <tr>
                        <th class="jobs_title"><span>JOBS</span></th>
                    </tr>
                    <tr>
                        <td class="gi_jobs">게임기획자</td>
                    </tr>
                    <tr>
                        <td class="gi_jobs">게임프로그래머</td>
                    </tr>
                    <tr>
                        <td class="gi_jobs">게임그래픽디자이너</td>
                    </tr>
                    <tr>
                        <td class="gi_jobs">스마트문화앱콘텐츠제작</td>
                    </tr>
                    <tr>
                        <td class="cd_jobs">시각디자이너</td>
                    </tr>
                    <tr>
                        <td class="cd_jobs">서비스경험디자이너</td>
                    </tr>
                    <tr>
                        <td class="cd_jobs">디지털디자이너</td>
                    </tr>
                    <tr>
                        <td class="de_jobs">영상연출가</td>
                    </tr>
                    <tr>
                        <td class="de_jobs">제작PD</td>
                    </tr>
                    <tr>
                        <td class="de_jobs">브랜드디자이너(OAP)</td>
                    </tr>
                    <tr>
                        <td class="de_jobs">CG아티스트</td>
                    </tr>
                    <tr>
                        <td class="de_jobs">모션그래픽디자이너</td>
                    </tr>
                    <tr>
                        <td class="de_jobs">사운드슈퍼바이저</td>
                    </tr>
                    <tr>
                        <td class="vc_jobs">3D 컴퓨터그래픽스</td>
                    </tr>
                    <tr>
                        <td class="vc_jobs">영상테크니컬디렉터</td>
                    </tr>
                    <tr>
                        <td class="vc_jobs">게임클라이언트개발자</td>
                    </tr>
                    <tr>
                        <td class="md_jobs">데이터사이언티스트</td>
                    </tr>
                    <tr>
                        <td class="md_jobs">데이터엔지니어</td>
                    </tr>
                    <tr>
                        <td class="md_jobs">데이터사이언스 대학원</td>
                    </tr>
                </table>
            </div>
    </section>
    <jsp:include page="modal/subjectDetail.jsp" />
</body>
<script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
<script>
    includeHTML();
    $('#gi_but').on('click',function(){
    	trackClick(133);
	});
    $('#cd_but').on('click',function(){
    	trackClick(130);
	});
    $('#de_but').on('click',function(){
    	trackClick(129);
	});
    $('#vc_but').on('click',function(){
    	trackClick(131);
	});
    $('#md_but').on('click',function(){
    	trackClick(132);
	});
</script>

</html>