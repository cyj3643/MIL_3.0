<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/hil/css/cil.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<header>
    <jsp:include page="include/hil/header.jsp"/>
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
                <th class="area_title"><span>TRACK</span></th>
            </tr>

            <tr>
                <td class="gi_wrap">
                    <img id="gi_but" src="${pageContext.request.contextPath}/resources/hil/img/areaIcon_IM.png">
                </td>
            </tr>
            <tr>
                <td class="cd_wrap">
                    <img id="cd_but" src="${pageContext.request.contextPath}/resources/hil/img/areaIcon_G.png">
                </td>
            </tr>
            <tr>
                <td class="de_wrap">
                    <img id="de_but" src="${pageContext.request.contextPath}/resources/hil/img/areaIcon_DC.png">
                </td>
            </tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
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
                <td colspan="2"><div class="mandatory_cont"><span id="tr2td1" class="colspan2">문:삶과 꿈, 사:시대와 정신<br>(1,2학기 중 선택 이수)<a id="tr2td2"></a></span><div class="cs" id="cs_tr2td1"><a class="cs_txt_tr2td1">C</a></div></div></td>
                <td colspan="2"><div class="mandatory_cont"><span id="tr2td3" class="colspan2">해:기호와 사유<br>(1,2학기 선택 이수)<a id="tr2td4"></a></span><div class="cs" id="cs_tr2td3"><a class="cs_txt_tr2td3">C</a></div></div></td>
                <td colspan="4"><div class="mandatory_cont"><span id="tr2td5" class="colspan4">인문인턴쉽<a id="tr2td6"></a><a id="tr2td7"></a><a id="tr2td8"></a></span><div class="cs" id="cs_tr2td5"><a class="cs_txt_tr2td5">C</a></div></div></td>
            </tr>
            <tr>
                <td colspan="2"><div class="mandatory_cont"><span id="tr3td1" class="colspan2">컴퓨팅사고, 컴퓨터와 인간<br>(1,2학기 중 선택 이수)<a id="tr3td2"></a></span><div class="cs" id="cs_tr3td1"><a class="cs_txt_tr3td1">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr3td3">데이터분석기초,<br>영어데이터분석기초 택1</span><div class="cs" id="cs_tr3td3"><a class="cs_txt_tr3td3">C</a></div></div></td>
                <td><a id="tr3td4"></a></td>
                <td><a id=tr3td5></a></td>
                <td><a id="tr3td6"></a></td>
                <td><a id="tr3td7"></a></td>
                <td><a id="tr3td8"></a></td>
            </tr>


            <!-- 한 줄 내림 한 줄 내림 -->

            <tr>
                <td colspan="2" class="addLine"><div class="mandatory_cont"><span id="tr4td1" class="colspan2">언어강독(한문,불어,중국어,일본어)<br>(1,2학기 중 선택 이수)<a id="tr4td2"></a></span><div class="cs" id="cs_tr4td1"><a class="cs_txt_tr4td1">C</a></div></div></td>
                <td><a id=tr4td3></a></td>
                <td class="addLine"><a id="tr4td4"></a></td>
                <td><div class="mandatory_cont"><span id="tr4td5" class="mandatory_span">역사융합세미나1<br>(캡스톤디자인)</span><div class="mandatory"><a>M</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr4td6">역사융합세미나2<br>(캡스톤디자인)</span><div class="cs" id="cs_tr4td6"><a class="cs_txt_tr4td6">C</a></div></div></td>
                <td><a id="tr4td7"></a></td>
                <td><a id="tr4td8"></a></td>
            </tr>
            <tr>
                <td><a id="tr5td1"></a></td>
                <td class="addLine"><a id="tr5td2"></a></td>
                <td><div class="mandatory_cont"><span id="tr5td3" class="mandatory_span">영문사료감독</span><div class="mandatory"><a>M</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr5td4">자기주도<br>진로선택</span><div class="cs" id="cs_tr5td4"><a class="cs_txt_tr5td4">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr5td5">고고학개론</span><div class="cs" id="cs_tr5td5"><a class="cs_txt_tr5td5">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr5td6">중국근현대사</span><div class="cs" id="cs_tr5td6"><a class="cs_txt_tr5td6">C</a></div></div></td>
                <td colspan="2"><div class="mandatory_cont"><span id="tr5td7" class="colspan2">산학협력전공실습1/2<a id="tr5td8"></a></span><div class="cs" id="cs_tr5td7"><a class="cs_txt_tr5td7">C</a></div></div></td>
            </tr>
            <tr>
                <td><div class="mandatory_cont"><span id="tr6td1">아주인성</span><div class="cs" id="cs_tr6td1"><a class="cs_txt_tr6td1">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr6td2">아주희망</span><div class="cs" id="cs_tr6td2"><a class="cs_txt_tr6td2">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr6td3">신화와<br>디지털 콘텐츠</span><div class="cs" id="cs_tr6td3"><a class="cs_txt_tr6td3">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr6td4" class="mandatory_span">한문사료감독</span><div class="mandatory"><a>M</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr6td5">박물관학개론</span><div class="cs" id="cs_tr6td5"><a class="cs_txt_tr6td5">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr6td6">일본근현대사</span><div class="cs" id="cs_tr6td6"><a class="cs_txt_tr6td6">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr6td7">디지털역사학입문</span><div class="cs" id="cs_tr6td7"><a class="cs_txt_tr6td7">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr6td8">디지털역사학연구<br>방법론</span><div class="cs" id="cs_tr6td8"><a class="cs_txt_tr6td8">C</a></div></div></td>
            </tr>
            <tr>
                <td><div class="mandatory_cont"><span id="tr7td1">영어2</span><div class="cs" id="cs_tr7td1"><a class="cs_txt_tr7td1">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr7td2">영어1</span><div class="cs" id="cs_tr7td2"><a class="cs_txt_tr7td2">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr7td3">영상매체와역사</span><div class="cs" id="cs_tr7td3"><a class="cs_txt_tr7td3">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr7td4">한국근세사</span><div class="cs" id="cs_tr7td4"><a class="cs_txt_tr7td4">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr7td5">중국근현대사</span><div class="cs" id="cs_tr7td5"><a class="cs_txt_tr7td5">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr7td6">아메리카사</span><div class="cs" id="cs_tr7td6"><a class="cs_txt_tr7td6">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr7td7">문화로역사읽기</span><div class="cs" id="cs_tr7td7"><a class="cs_txt_tr7td7">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr7td8">일본세미나</span><div class="cs" id="cs_tr7td8"><a class="cs_txt_tr7td8">C</a></div></div></td>
            </tr>
            <tr>
                <td><div class="mandatory_cont"><span id="tr8td1">글쓰기</span><div class="cs" id="cs_tr8td1"><a class="cs_txt_tr8td1">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr8td2" class="mandatory_span">역사학으로의 초대</span><div class="mandatory"><a>M</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr8td3">한국고중세사</span><div class="cs" id="cs_tr8td3"><a class="cs_txt_tr8td3">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr8td4">서양근세사</span><div class="cs" id="cs_tr8td4"><a class="cs_txt_tr8td4">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr8td5">일본근현대사</span><div class="cs" id="cs_tr8td5"><a class="cs_txt_tr8td5">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr8td6">디지털역사학<br>연구방법론</span><div class="cs" id="cs_tr8td6"><a class="cs_txt_tr8td6">C</a></div></div></td>
                <td><a id="tr8td7"></a></td>
                <td><div class="mandatory_cont"><span id="tr8td8">한중일국제관계사</span><div class="cs" id="cs_tr8td8"><a class="cs_txt_tr8td8">C</a></div></div></td>
            </tr>
            <tr>
                <td><div class="mandatory_cont"><span id="tr9td1">한국사입문</span><div class="cs" id="cs_tr9td1"><a class="cs_txt_tr9td1">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr9td2">아시아사입문</span><div class="cs" id="cs_tr9td2"><a class="cs_txt_tr9td2">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr9td3">서양고중세사</span><div class="cs" id="cs_tr9td3"><a class="cs_txt_tr9td3">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr9td4">유럽전통과<br>문화유산</span><div class="cs" id="cs_tr9td4"><a class="cs_txt_tr9td4">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr9td5">한국근현대사</span><div class="cs" id="cs_tr9td5"><a class="cs_txt_tr9td5">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr9td6">디지털역사학<br>데이터분석연습</span><div class="cs" id="cs_tr9td6"><a class="cs_txt_tr9td6">C</a></div></div></td>
                <td><a id="tr9td7"></a></td>
                <td><a id="tr9td8"></a></td>
            </tr>
            <tr>
                <td><div class="mandatory_cont"><span id="tr10td1">서양사입문</span><div class="cs" id="cs_tr10td1"><a class="cs_txt_tr10td1">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr10td2">역사와인물</span><div class="cs" id="cs_tr10td2"><a class="cs_txt_tr10td2">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr10td3">동양고중세사</span><div class="cs" id="cs_tr10td3"><a class="cs_txt_tr10td3">C</a></div></div></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr10td4">아시아의역사<br>문화콘텐츠</span><div class="cs" id="cs_tr10td4"><a class="cs_txt_tr10td4">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr10td5">서양근현대사</span><div class="cs" id="cs_tr10td5"><a class="cs_txt_tr10td5">C</a></div></div></td>
                <td class="addLine"><a id="tr10td6"></a></td>
                <td><a id="tr10td7"></a></td>
                <td><a id="tr10td8"></a></td>
            </tr>
            <tr>
                <td><div class="mandatory_cont"><span id="tr11td1">문화콘텐츠학입문</span><div class="cs" id="cs_tr11td1"><a class="cs_txt_tr11td1">C</a></div></div></td>
                <td class="addLine"><a id="tr11td2"></a></td>
                <td><a id="tr11td3"></a></td>
                <td class="addLine"><div class="mandatory_cont"><span id="tr11td4">유목민족의<br>역사와문화</span><div class="cs" id="cs_tr11td4"><a class="cs_txt_tr11td4">C</a></div></div></td>
                <td><div class="mandatory_cont"><span id="tr11td5">중국사상과예술</span><div class="cs" id="cs_tr11td5"><a class="cs_txt_tr11td5">C</a></div></div></td>
                <td class="addLine"><a id="tr11td6"></a></td>
                <td><a id="tr11td7"></a></td>
                <td><a id="tr11td8"></a></td>
            </tr>
            <tr>
                <td><a id="tr12td1"></a></td>
                <td class="addLine"><a id="tr12td2"></a></td>
                <td><a id="tr12td3"></a></td>
                <td class="addLine"><a id="tr12td4"></a></td>
                <td><div class="mandatory_cont"><span id="tr12td5">일본사상과예술</span><div class="cs" id="cs_tr12td5"><a class="cs_txt_tr12td5">C</a></div></div></td>
                <td class="addLine"><a id="tr12td6"></a></td>
                <td><a id="tr12td7"></a></td>
                <td><a id="tr12td8"></a></td>
            </tr>
            <tr>
                <td id="mark_td"><a id="tr13td1"><div class="m_mark">M</div><a class="m_text">: Mandatory</a></a></td>
                <td id="mark_td" class="addLine"><a id="tr13td2"><div class="c_mark">C</div><a class="c_text">: Core</a></a></td>
                <td id="mark_td"><a id="tr13td3"><div class="s_mark">S</div><a class="s_text">: Support</a></a></td>
                <td class="addLine"><a id="tr13td4"></a></td>
                <td><div class="mandatory_cont"><span id="tr13td5">디지털역사학입문</span><div class="cs" id="cs_tr13td5"><a class="cs_txt_tr13td5">C</a></div></div></td>
                <td class="addLine"><a id="tr13td6"></a></td>
                <td><a id="tr13td7"></a></td>
                <td><a id="tr13td8"></a></td>
            </tr>
        </table>
    </div>
    <div class="jobs_section">
        <table class="jobs_table">
            <tr>
                <th class="jobs_title"><span>CAREER PATH</span></th>
            </tr>
            <tr>
                <td class="gi_jobs"><div id="gi_jobs">일반대학원<br>(교수,연구원,학예사)</div></td>
            </tr>
            <tr>
                <td class="gi_jobs"><div id="gi_jobs2">교육 대학원(교사)</div></td>
            </tr>
            <tr>
                <td class="gi_jobs"><div id="gi_jobs3">지역 문화유산 전문가<br>(문화원)</div></td>
            </tr>
            <tr>
                <td class="gi_jobs"><div id="gi_jobs4">해외역사전문가</div></td>
            </tr>
            <tr>
                <td class="cd_jobs"><div id="cd_jobs">역사문화콘텐츠</div></td>
            </tr>
            <tr>
                <td class="cd_jobs"><div id="cd_jobs2">인문데이터분석</div></td>
            </tr>
            <tr>
                <td class="cd_jobs"><div id="cd_jobs3">역사문화프로그램 기획자</div></td>
            </tr>
            <tr>
                <td class="de_jobs"><div id="de_jobs">공무원,공공정책</div></td>
            </tr>
            <tr>
                <td class="vc_jobs"><div id="vc_jobs">신문/방송 미디어 및<br>일반 기업</div></td>
            </tr>
            <tr><td></td></tr>
        </table>
    </div>
    <div>
    </div>
</section>
</body>
<script src="${pageContext.request.contextPath}/resources/hil/js/cil.js">
</script>
</html>