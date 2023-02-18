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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/menu.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pop-up.js"></script>

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
                            <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="701"  style="cursor: pointer;">삭제</button>
                            <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%eb%94%94%ec%a7%80%ed%84%b8%eb%94%94%ec%9e%90%ec%9d%b4%eb%84%88/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
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
                            <tr>
                                <td id="td11"></td>
                                <td id="td12"></td>
                                <td id="td13"></td>
                                <td id="td14"></td>
                                <td id="td15"></td>
                                <td id="td16"></td>
                                <td id="td17"></td>
                                <td id="td18"></td>
                            </tr>
                            <!--2nd row-->
                            <tr>
                                <td id="td21" colspan="2"><div class="table_bg"
                                                               style="width: 150px;">
                                    <span>물리학, 생명과학, 선형대수1, 수학2, 이산수학 중 택 1</span></div></td>
                                <td id="td23"></td>
                                <td id="td24"></td>
                                <td id="td25"></td>
                                <td id="td26"></td>
                                <td id="td27"></td>
                                <td id="td28"></td>
                            </tr>
                            <!--3rd row-->
                            <tr>
                                <td id="td31"></td>
                                <td id="td32"></td>
                                <td id="td33"></td>
                                <td id="td34"></td>
                                <td id="td35"></td>
                                <td id="td36"></td>
                                <td id="td37"></td>
                                <td id="td38"></td>
                            </tr>

                            <!--4th row-->
                            <tr>
                                <td id="td41"></td>
                                <td id="td42"></td>
                                <td id="td43"></td>
                                <td id="td44"></td>
                                <td id="td45"></td>
                                <td id="td46"></td>
                                <td id="td47"></td>
                                <td id="td48"></td>
                            </tr>

                            <!--5th row-->
                            <tr>
                                <td id="td51"></td>
                                <td id="td52"></td>
                                <td id="td53"></td>
                                <td id="td54"></td>
                                <td id="td55"></td>
                                <td id="td56"></td>
                                <td id="td57"></td>
                                <td id="td58"></td>
                            </tr>

                            <!--6th row-->
                            <tr>
                                <td id="td61"></td>
                                <td id="td62"></td>
                                <td id="td63"></td>
                                <td id="td64"></td>
                                <td id="td65"></td>
                                <td id="td66"></td>
                                <td id="td67"></td>
                                <td id="td68"></td>
                            </tr>

                            <!--7th row-->
                            <tr>
                                <td id="td71"></td>
                                <td id="td72"></td>
                                <td id="td73"></td>
                                <td id="td74"></td>
                                <td id="td75"></td>
                                <td id="td76"></td>
                                <td id="td77"></td>
                                <td id="td78"></td>
                            </tr>

                            <!--8th row-->
                            <tr>
                                <td id="td81"></td>
                                <td id="td82"></td>
                                <td id="td83"></td>
                                <td id="td84"></td>
                                <td id="td85"></td>
                                <td id="td86"></td>
                                <td id="td87"></td>
                                <td id="td88"></td>
                            </tr>

                            <!--9th row-->
                            <tr>
                                <td id="td91"></td>
                                <td id="td92"></td>
                                <td id="td93"></td>
                                <td id="td94"></td>
                                <td id="td95"></td>
                                <td id="td96"></td>
                                <td id="td97"></td>
                                <td id="td98"></td>
                            </tr>

                            <!--10th row-->
                            <tr>
                                <td id="td101"></td>
                                <td id="td102"></td>
                                <td id="td103"></td>
                                <td id="td104"></td>
                                <td id="td105"></td>
                                <td id="td106"></td>
                                <td id="td107"></td>
                                <td id="td108"></td>
                            </tr>

                            <!--11th row-->
                            <tr>
                                <td id="td111"></td>
                                <td id="td112"></td>
                                <td id="td113"></td>
                                <td id="td114"></td>
                                <td id="td115"></td>
                                <td id="td116"></td>
                                <td id="td117"></td>
                                <td id="td118"></td>
                            </tr>

                            <!--12th row-->
                            <tr>
                                <td id="td121"></td>
                                <td id="td122"></td>
                                <td id="td123"></td>
                                <td id="td124"></td>
                                <td id="td125"></td>
                                <td id="td126"></td>
                                <td id="td127"></td>
                                <td id="td128"></td>
                            </tr>

                            <!--13th row-->
                            <tr>
                                <td id="td131"></td>
                                <td id="td132"></td>
                                <td id="td133"></td>
                                <td id="td134"></td>
                                <td id="td135"></td>
                                <td id="td136"></td>
                                <td id="td137"></td>
                                <td id="td138"></td>
                            </tr>

                            <!--14th row-->
                            <tr>
                                <td id="td141"></td>
                                <td id="td142"></td>
                                <td id="td143"></td>
                                <td id="td144"></td>
                                <td id="td145"></td>
                                <td id="td146"></td>
                                <td id="td147"></td>
                                <td id="td148"></td>
                            </tr>

                            <!--15th row-->
                            <tr>
                                <td id="td151"></td>
                                <td id="td152"></td>
                                <td id="td153"></td>
                                <td id="td154"></td>
                                <td id="td155"></td>
                                <td id="td156"></td>
                                <td id="td157"></td>
                                <td id="td158"></td>
                            </tr>
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
            <div class="close" onclick="close_pop_subject();">
                <span class="close_btn">close</span>
            </div>
        </div>
        <div class="Modal Modal_modify" id="Modal_modify">
            <div class="page">
            </div>
            <div class="close" onclick="close_pop_modify();">
                <span class="close_btn">close</span>
            </div>
        </div>
        <div class="Modal Modal_enter" id="Modal_enter">
            <div class="page">
            </div>
            <div class="close" onclick="close_pop_enter();">
                <span class="close_btn">close</span>
            </div>
        </div>

    </div>
</div>

<!--
왼쪽 메뉴 소스 header처럼 include 소스로 빼기
-->
<div class="left_menu">
    <div class="mil_logo">
        <div class="title" onclick="location.href='./main.html'"  style=" cursor: pointer;">
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
