<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/fil/css/fil.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<header>
	<jsp:include page="./include/fil/header.jsp"/>
</header>
    <section class="main_contents">
        <div class="modal">
	      <div class="modal_body">
	      	<table class="modal_table">
	      		<tr><th colspan="2" class="modal_title">디지털역사학입문</th></tr>
	      		<tr>
	      			<td rowspan="4">
	      				<div class="modal_cont">
	      				디지털시대의 대두로 접근 가능한 정보가 양정/질적으로 제한적인 시대에서
	      				다양한 수단을 통해 방대한 정보에 제한 없이 접근하고 입체적 분석이 가능한 시대에 접어들었다.
	      				본 강의는 이러한 연구 환경의 변화에 능동적으로 대응하고 주도하기 위해 디지털역사학의 세계로 학생들을 안내한다.
	      				디지털역사학은 디지털 기술을 활용하여 거시적이고 시계열적인 복잡계의 역사학적 사실을 탐구하는 역사학 기반 융합학문이다.
	      				디지털시대의 대두로 접근 가능한 정보가 양정/질적으로 제한적인 시대에서
	      				다양한 수단을 통해 방대한 정보에 제한 없이 접근하고 입체적 분석이 가능한 시대에 접어들었다.
	      				</div>
	      			</td>
	      			<td class="modal_pre_title">Prerequisite Courses</td>
	      		</tr>
	      		<tr>
	      			<td class="modal_pre"></td>
	      		</tr>
	      		<tr>
	      			<td class="modal_engYN">외국어 강의여부 : X</td>
	      		</tr>
	      		<tr>
	      			<td class="modal_publicYN">공동개설 학과 : X</td>
	      		</tr>
	      	</table>
	      </div>
	    </div>
        <div class="area_section">
            <table class="area_table">
            
                <tr>
                    <th class="area_title"><span>MICRO</span></th>
                </tr>
<%--금융 트랙
                <tr>
                    <td class="gi_wrap">
                        <img id="gi_but" src="${pageContext.request.contextPath}/resources/fil/img/areaIcon_finance.png">
                    </td>
                </tr>
  --%>
                <tr>
                    <td class="cd_wrap">
                        <img id="cd_but" src="${pageContext.request.contextPath}/resources/fil/img/areaIcon_fprogram.png">
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
            </table>
        </div>
        <div class="cil_table_section">
            <table>
                <!-- 행: 13, 열 :8 -->
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
                    <td class="addLine"><a id="tr2td1"></a></td>
                    <td class="addLine"><a id="tr2td2"></a></td>
                    <td class="addLine"><a id="tr2td3"></a></td>
                    <td class="addLine"><a id="tr2td4"></a></td>
                    <td class="addLine"><a id="tr2td5"></a></td>
                    <td class="addLine"><a id="tr2td6"></a></td>
                    <td class="addLine"><a id="tr2td7"></a></td>
                    <td class="addLine"><a id="tr2td8"></a></td>
                </tr>
                <tr>
                    <td class="addLine"><a id="tr3td1"></a></td>
                    <td class="addLine"><a id="tr3td2"></a></td>
                    <td><div class="mandatory_cont"><span id="tr3td3">이산수학</span><div class="cs" id="cs_tr3td3"><a class="cs_txt_tr3td3">C</a></div></div></td>
                    <td><a id="tr3td4"></a></td>
                    <td><div class="mandatory_cont"><span id="tr3td5">경력설계<br>현장프로젝트1</span><div class="cs" id="cs_tr3td5"><a class="cs_txt_tr3td5">C</a></div></div></td>                    
                    <td><a id="tr3td6"></a></td>
                    <td><a id="tr3td7"></a></td>
                    <td><a id="tr3td8"></a></td>
                </tr>
                
                
 				<!-- 한 줄 내림 한 줄 내림 -->               
                
                <tr>
                    <td class="addLine"><a id="tr4td1"></a></td>
                    <td class="addLine"><a id="tr4td2"></a></td>
                    <td><div class="mandatory_cont"><span id="tr4td3">조직행위론</span><div class="cs" id="cs_tr4td3"><a class="cs_txt_tr4td3">C</a></div></div></td>
                    <td class="addLine"><a id="tr4td4"></a></td>
                    <td><div class="mandatory_cont"><span id="tr4td5" class="mandatory_span">EBP1</span><div class="mandatory"><a>M</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr4td6" class="mandatory_span">EBP2</span><div class="mandatory"><a>M</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr4td7" class="mandatory_span">계산금융</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><a id="tr4td8"></a></td>
                </tr>
                <tr>
                    <td><a id="tr5td1"></a></td>
                    <td class="addLine"><a id="tr5td2"></a></td>
                    <td><div class="mandatory_cont"><span id="tr5td3" class="mandatory_span">금융프로그래밍1	</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr5td4" class="mandatory_span">금융프로그래밍2</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr5td5" class="mandatory_span">투자론</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr5td6" class="mandatory_span">고정소득증권기초</span><div class="mandatory"><a>M</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr5td7">금융딥러닝기초</span><div class="cs" id="cs_tr5td7"><a class="cs_txt_tr5td7">C</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr5td8">금융캡스톤디자인<br>프로젝트</span><div class="cs" id="cs_tr5td8"><a class="cs_txt_tr5td8">C</a></div></div></td>

                </tr>
                <tr>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr6td1" class="mandatory_span">수학1</span><div class="mandatory"><a>M</a></div></div></td>                
                    <td class="addLine"><div class="mandatory_cont"><span id="tr6td2" class="mandatory_span">수학2</span><div class="mandatory"><a>M</a></div></div></td>                
                    <td class="addLine"><div class="mandatory_cont"><span id="tr6td3" class="mandatory_span">금융미분방정식</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr6td4" class="mandatory_span">고급금융통계</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr6td5" class="mandatory_span">선물옵션</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr6td6">경력설계<br>현장프로젝트2</span><div class="cs" id="cs_tr6td6"><a class="cs_txt_tr6td6">C</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr6td7">고급금융프로그래밍</span><div class="cs" id="cs_tr6td7"><a class="cs_txt_tr6td7">C</a></div></div></td>
                    <td class="addLine"><a id="tr6td8"></a></td>
                </tr>
                <tr>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr7td1" class="mandatory_span">금융공학입문</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr7td2" class="mandatory_span">경력설계와<br>창업입문1</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr7td3" class="mandatory_span">금융선형대수</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr7td4">고급재무관리</span><div class="cs" id="cs_tr7td4"><a class="cs_txt_tr7td4">C</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr7td5" class="mandatory_span">금융해석학</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr7td6">주식시장의<br>퀀트투자전략</span><div class="cs" id="cs_tr7td6"><a class="cs_txt_tr7td6">C</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr7td7">국제재무관리</span><div class="cs" id="cs_tr7td7"><a class="cs_txt_tr7td7">C</a></div></div></td>
                    <td class="addLine"><a id="tr7td8"></a></td>
                </tr>
                <tr>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr8td1" class="mandatory_span">기초금융통계</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr8td2" class="mandatory_span">데이터 분석기초</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr8td3" class="mandatory_span">재무관리</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr8td4">금융론</span><div class="cs" id="cs_tr8td4"><a class="cs_txt_tr8td4">C</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr8td5">금융거시경제학</span><div class="cs" id="cs_tr8td5"><a class="cs_txt_tr8td5">C</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr8td6">금융기관</span><div class="cs" id="cs_tr8td6"><a class="cs_txt_tr8td6">C</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr8td7">행동경제학</span><div class="cs" id="cs_tr8td7"><a class="cs_txt_tr8td7">C</a></div></div></td>
                    <td class="addLine"><a id="tr8td8"></a></td>
                </tr>
                <tr>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr9td1" class="mandatory_span">경제원론1</span><div class="mandatory"><a>M</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr9td2" class="mandatory_span">회계학원론</span><div class="mandatory"><a>M</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr9td3">자료구조</span><div class="cs" id="cs_tr9td3"><a class="cs_txt_tr9td3">C</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr9td4">금융미시경제학</span><div class="cs" id="cs_tr9td4"><a class="cs_txt_tr9td4">C</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr9td5">수치해석</span><div class="cs" id="cs_tr9td5"><a class="cs_txt_tr9td5">C</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr9td6">금융머신러닝기초</span><div class="cs" id="cs_tr9td6"><a class="cs_txt_tr9td6">C</a></div></div></td>
                    <td><a id="tr9td7"></a></td>
                    <td><a id="tr9td8"></a></td>
                </tr>
                <tr>
                    <td class="addLine"><a id="tr10td1"></a></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr10td2">경제원론2</span><div class="cs" id="cs_tr10td2"><a class="cs_txt_tr10td2">C</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr10td3">객체지향<br>프로그래밍실습</span><div class="cs" id="cs_tr10td3"><a class="cs_txt_tr10td3">C</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr10td4">금융계량경제학</span><div class="cs" id="cs_tr10td4"><a class="cs_txt_tr10td4">C</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr10td5">게임이론 및 응용</span><div class="cs" id="cs_tr10td5"><a class="cs_txt_tr10td5">C</a></div></div></td>
                    <td class="addLine"><a id="tr10td6"></a></td>
                    <td><a id="tr10td7"></a></td>
                    <td><a id="tr10td8"></a></td>
                </tr>
                <tr>
                    <td class="addLine"><a id="tr11td1"></a></td>
                    <td><div class="mandatory_cont"><span id="tr11td2">경제적사고방식</span><div class="cs" id="cs_tr11td2"><a class="cs_txt_tr11td2">C</a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr11td3">마케팅관리</span><div class="cs" id="cs_tr11td3"><a class="cs_txt_tr11td3"></a></div></div></td>                    
                    <td class="addLine"><div class="mandatory_cont"><span id="tr11td4">경력설계와<br>창업입문2</span><div class="cs" id="cs_tr11td4"><a class="cs_txt_tr11td4"></a></div></div></td>
                    <td class="addLine"><div class="mandatory_cont"><span id="tr11td5">데이터베이스</span><div class="cs" id="cs_tr11td5"><a class="cs_txt_tr11td5">C</a></div></div></td>
                    <td class="addLine"><a id="tr11td6"></a></td>
                    <td class="addLine"><a id="tr11td7"></a></td>
                    <td><a id="tr11td8"></a></td>
                </tr>
                <tr>
                    <td class="addLine"><a id="tr12td1"></a></td>
                    <td><div class="mandatory_cont"><span id="tr12td2">경영정보시스템</span><div class="cs" id="cs_tr12td2"><a class="cs_txt_tr12td2">C</a></div></div></td>
                    <td><div class="mandatory_cont"><span id="tr12td3">생산운영관리</span><div class="cs" id="cs_tr12td3"><a class="cs_txt_tr12td3">C</a></div></div></td>
                    <td class="addLine"><a id="tr12td4"></a></td>
                    <td><div class="mandatory_cont"><span id="tr12td5">금융시계열분석과<br>투자전략</span><div class="cs" id="cs_tr12td5"><a class="cs_txt_tr12td5">C</a></div></div></td>
                    <td class="addLine"><a id="tr12td6"></a></td>
                    <td class="addLine"><a id="tr12td7"></a></td>
                    <td class="addLine"><a id="tr12td8"></a></td>
                </tr>
                <tr>
                    <td id="mark_m"><a id="tr13td1"><div class="m_mark">M</div><a class="m_text">Mandatory</a></a></td>
                    <td id="mark_c" class="addLine"><a id="tr13td2"><div class="c_mark">C</div><a class="c_text"> Core</a></a></td>
                    <td id="mark_s"><a id="tr13td3"><div class="s_mark">S</div><a class="s_text"> Support</a></a></td>
                    <td class="addLine"><a id="tr13td4"></a></td>
                    <td class="addLine"><a id="tr13td5"></a></td>
                    <td class="addLine"><a id="tr13td6"></a></td>
                    <td class="addLine"><a id="tr13td7"></a></td>
                    <td class="addLine"><a id="tr13td8"></a></td>
                </tr>
            </table>
        </div>
        <div class="jobs_section">
            <table class="jobs_table">
                <tr>
                    <th class="jobs_title"><span>CAREER PATH</span></th>
                </tr>
                <tr>
                    <td class="gi_jobs"><div id="gi_jobs">기업영업</div></td>
                </tr>
                <tr>
                    <td class="gi_jobs"><div id="gi_jobs2">PB영업</div></td>
                </tr>
                <tr>
                    <td class="gi_jobs"><div id="gi_jobs3">대체투자</div></td>
                </tr>
                <tr>
                    <td class="cd_jobs"><div id="cd_jobs">주식,채권 운용</div></td>
                </tr>
                <tr>
                    <td class="cd_jobs"><div id="cd_jobs2">파생상품 운용</div></td>
                </tr>
                <tr>
                    <td class="cd_jobs"><div id="cd_jobs3">금융상품개발</div></td>
                </tr>
                <tr>
                    <td class="cd_jobs"><div id="cd_jobs4">애널리스트</div></td>
                </tr>
                <tr>
                    <td class="cd_jobs"><div id="cd_jobs5">리스크 매니저</div></td>
                </tr>
                <tr>
                    <td class="de_jobs"><div id="de_jobs">보험계리사</div></td>
                </tr>
                <tr>
                    <td class="de_jobs"><div id="de_jobs2">손해사정사</div></td>
                </tr>
                <tr>
                    <td class="de_jobs"><div id="de_jobs3">회계사</div></td>
                </tr>
                <tr>
                    <td class="de_jobs"><div id="de_jobs4">세무사</div></td>
                </tr>
                <tr>
                    <td class="vc_jobs"><div id="vc_jobs">블록체인 설계</div></td>
                </tr>
                <tr>
                    <td class="vc_jobs"><div id="vc_jobs2">금융공학 대학원</div></td>
                </tr>                                                                
                <tr><td></td></tr>
            </table>
        </div>
        <div>
        </div>
    </section>
</body>
<script src="${pageContext.request.contextPath}/resources/fil/js/fil.js">
</script>
</html>