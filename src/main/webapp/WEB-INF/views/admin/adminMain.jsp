<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/curriculum.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pop-up.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/curriculum.js"></script>

</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

<div class="main_contents">
    <p class="main_contents_title">교과과정 편집</p>
    <div class="content_box">

        <div class="admin_page_header">
            <p class="admin_page_title">디지털미디어 교과과정 편집</p>
            <div class="admin_page_tool_bar">
                <button class="mil_btn mil_add_btn" type="button" onclick="open_pop_add();" style="cursor: pointer;" >+ 추가하기</button>
            </div>
        </div>

        <div class="admin_page_content">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>페이지 이름</th>
                    <th>항목</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:set var="index" value="0"/>
                <c:forEach var="curriList" items="${curriList}">
                    <tr>
                        <td class="menu_page_id">
                            <c:out value="${curriList.page_id}"/>
                        </td>
                        <td class="menu_name">
                            <c:out value="${curriList.name}"/>
                        </td>
                        <td class="menu_category">
                            <c:out value="${curriList.category}"/>
                        </td>
                        <td class="menu_action">
                            <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                            <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                            <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%eb%94%94%ec%a7%80%ed%84%b8%eb%94%94%ec%9e%90%ec%9d%b4%eb%84%88/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                            <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="701"  style="cursor: pointer;">삭제</button>
                        </td>
                    </tr>
                    <c:set var="index" value="${index+1}"/>
                </c:forEach>
                </tbody>
            </table>
        </div>


        <div class="Modal mileditor_wrap" id="Modal_add">
            <form id="admin_create_curriculum_page_form">

                <input type="hidden" name="page_type" value="create">
                <input type="hidden" name="page_id">

                <div class="page">
                    <span class="setting_title">교과과정표 설정</span>
                    <div class="setting_table_wrap">
                        <div class="name">
                            <span>페이지 명</span>
                            <input class="mil_input" name="milpage_name" placeholder="보여질 페이지의 이름입니다 (ex: Game)" rows={1} type="text" />
                        </div>
                        <div class="slug">
                            <span>페이지 슬러그</span>
                            <input class="mil_input" name="milpage_slug" placeholder="게시판 슬러그는 초기 설정값에서 변경할 수 없습니다" rows={1} type="text" />
                        </div>
                        <div class="short-code">
                            <span>페이지 숏코드</span>
                            <input class="mil_input" name="milpage_shortcode" placeholder="이 숏코드를 만든 Page에 붙여넣으면 교과과정표가 보입니다" rows={1} type="text" />
                        </div>
                        <div class="row1">
                            <span class="mandatory">Mandatory</span>
                            <div class="mandatory-color">
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_color_mandatory">
                                </div>
                                <span id="explain1">Mandatory 과목의 배경색을 지정하세요</span>
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_bordercolor_mandatory">
                                </div>
                                <span id="explain2">Mandatory 과목의 선색을 지정하세요</span>
                            </div>
                            <span class="core">Core</span>
                            <div class="core-color">
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_color_core">
                                </div>
                                <span id="explain1">Core 과목의 배경색을 지정하세요</span>
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_bordercolor_core">
                                </div>
                                <span id="explain2">Core 과목의 선색을 지정하세요</span>
                            </div>
                        </div>
                        <div class="row2">
                            <span class="support">Support</span>
                            <div class="support-color">
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_color_support">
                                </div>
                                <span id="explain1">Support 과목의 배경색을 지정하세요</span>
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_bordercolor_support">
                                </div>
                                <span id="explain2">Support 과목의 선색을 지정하세요</span>
                            </div>
                            <span class="type">Type</span>
                            <div class="type-sort">
                                <div>
                                    <input class="game" type="checkbox" name="milpage_page_type[]" value="game">
                                    <label class="game">Game&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                    <input class="digital-film" type="checkbox" name="milpage_page_type[]" value="df">
                                    <label class="digital-film">Digital Film</label>
                                </div>
                                <div>
                                    <input class="digital-design" type="checkbox" name="milpage_page_type[]" value="dd">
                                    <label class="digital-design">Digital Design</label>
                                    <input class="it-programming" type="checkbox" name="milpage_page_type[]" value="it">
                                    <label class="it-programming">IT Programming</label>
                                </div>
                                <span id="explain1">이 교육과정이 포함하고 있는 분야를 선택해주세요. (중복 가능)</span>
                            </div>
                        </div>
                        <div class="row3">
                            <span class="major-details">Major details</span>
                            <div class="select">
                                <select class="selection" name="milpage_major_type">
                                    <option value="digital_media" selected='selected'>&nbsp; 디지털미디어 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    <option value="digital_media">&nbsp; 디지털미디어 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    <option value="digital_media">&nbsp; 디지털미디어 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    <option value="digital_media">&nbsp; 디지털미디어 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                </select>
                                <div><span class="explain1">이 교육과정이 속해 있는 세부 전공을 선택해주세요</span></div>
                            </div>
                        </div>
                    </div>
                    <br></br>
                    <div class="bottom">
                        <button type="button" class="mil_btn mil_green_btn mil_create_page_button">페이지 생성</button>
                        <div class="close" onclick="close_pop_add();">
                            <span class="close_btn">취소</span>
                        </div>
                    </div>
                </div>
            </form>


        </div>

        <div class="Modal mileditor_wrap" id="Modal_subject">
            <div class="close" onclick="close_pop_subject() ;" style="cursor: pointer">
                <span class="close_btn"> X </span>
            </div>
            <div class="setting_block" style="display: flex;">
                <div class="setting_block_left">
                    <span class="setting_title">과목등록</span>
                    <br/>
                    <span class="subtitle">과목을 클릭하여 Core인지 Support인지 정해주세요</span>
                    <div id="mil_subject_table_wrap">
                        <table id="mil_subject_table">
                            <thead>
                            <tr>
                                <td><div>1-1</div></td>
                                <td><div>1-2</div></td>
                                <td><div>2-1</div></td>
                                <td><div>2-2</div></td>
                                <td><div>3-1</div></td>
                                <td><div>3-2</div></td>
                                <td><div>4-1</div></td>
                                <td><div>4-2</div></td>
                            </tr>
                            </thead>
                            <tbody>
                            <c:set var="index" value="0"/>
                            <c:set var="row" value="2"/>
                            <%
                                for(int i=0; i<15; i++)
                                {
                            %>
                            <tr>
                                <c:set var="col" value="1"/>
                                <c:choose>
                                    <c:when test="${row==2}">
                                        <td><span class="must_math">수학1</span></td>
                                        <td><span class="must_math">확률 및 통계1</span></td>
                                        <c:set var="col" value="3"/>
                                        <%for(int j=0; j<6; j++){ %>
                                        <td><div class="mandatory_cont">
                                            <c:if test = "${subjectList[index].row_id==row}">
                                                <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                                    <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>

                                                    <c:set var="index" value="${index+1}"/>
                                                </c:if>
                                            </c:if>
                                        </div>
                                        </td>
                                        <c:set var="col" value="${col+1}"/>
                                        <%} %>
                                    </c:when>
                                    <c:when test="${row==16}">
                                        <td id="mark_td"><a id="tr13td1"></a></td>
                                        <td id="mark_td" class="addLine"><a id="tr13td2"></a></td>
                                        <td id="mark_td"><a id="tr13td3"></a></td>
                                        <c:set var="col" value="4"/>
                                        <%for(int j=0; j<5; j++){ %>
                                        <td><div class="mandatory_cont">
                                            <c:if test = "${subjectList[index].row_id==16}">
                                                <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                                    <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>
                                                    <c:set var="index" value="${index+1}"/>
                                                </c:if>
                                            </c:if>
                                        </div>
                                        </td>
                                        <c:set var="col" value="${col+1}"/>
                                        <%} %>
                                    </c:when>
                                    <c:otherwise>
                                        <%for(int j=0; j<8; j++){ %>
                                        <td><div class="mandatory_cont">
                                            <c:if test = "${subjectList[index].row_id==row}">
                                                <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                                    <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>

                                                    <c:if test = "${subjectList[index].is_mandatory == 'T'}">
                                                        <div class="cs_m" ><a>M</a></div>
                                                    </c:if>
                                                    <c:set var="index" value="${index+1}"/>
                                                </c:if>
                                            </c:if>
                                        </div>
                                        </td>
                                        <c:set var="col" value="${col+1}"/>
                                        <%} %>
                                    </c:otherwise>
                                </c:choose>
                                <c:set var="row" value="${row+1}"/>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div style="width: 7%;">
                </div>

                <div class="setting_block_right">
                    <section class="regidit_subject-type">
                        <span class="setting_title">과목 Type 설정</span>
                        <br/>
                        <input type="hidden" name="page_id" value=701>
                        <input type="hidden" name="track" value=media_contents>
                        <input type="hidden" name="td_id">
                        <br/>
                        <div style="display: flex;">
                            <input type="radio" name="milpage_subject_type" value="core">Core
                        </div>
                        <div style="display: flex;">
                            <input type="radio" name="milpage_subject_type" value="support">Support
                        </div>
                        <br/>
                        <button type="button" class="mil_btn mil_green_btn milpage_regidit_type_button">등록</button>
                        <button type="button" class="mil_btn mil_blue_btn milpage_modify_type_button">수정</button>
                        <button type="button" class="mil_btn mil_red_btn milpage_delete_type_button">삭제</button>
                    </section>
                </div>
            </div>

        </div>
        <div class="Modal Modal_modify" id="Modal_modify">
            <div class="close" onclick="close_pop_modify() ;" style="cursor: pointer">
                <span class="close_btn"> X </span>
            </div>
            <div class="page">
            </div>
        </div>
        <div class="Modal Modal_enter" id="Modal_enter">
            <div class="page">
            </div>
        </div>

    </div>
</div>

<!--
왼쪽 메뉴 소스 header처럼 include 소스로 빼기
-->
<div class="left_menu">
    <meta name="viewport" content="height=device-height">
    <jsp:include page="include/menu.jsp" />
</div>

</body>
<script src="${pageContext.request.contextPath}/resources/js/curriculum.js"></script>
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

    $(document).ready(function(){
        /*$.ajax({ url: "/cil/subject",
            context: document.body,
            success: (data) => {console.log(data);}
        });*/
        $.ajax({
            type:"get",
            url:"subjects",
            success:function(productList){
                $("#listView").empty();
                $.each(productList,function(i,product){
                    $("#listView").append(product.id+" "+product.name+" "+product.maker+" "+product.price+"<br>").css("background","pink");
                });
            }
        });//ajax
    });
</script>
</html>
