<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
              pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/dashboard.css"> -->
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/curriculum.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="jquery/jquery-3.5.1.min.js"></script>
    <script src="jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="js/includeHTML.js"></script>
    <script src="js/cil.js"></script>

    <script src="js/pop-up.js"></script>
</head>
<!-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   -->
<body>

<div class="main_contents">
    <p class="main_contents_title">교과과정 편집</p>
    <div class="content_box">
        <div class="content_top">
            <p class="content_box_title">미디어콘텐츠 교과과정 편집</p>
            <button class="add_btn" type="button" onclick="open_pop_add();" style="cursor: pointer;" >+ 추가하기</button>
        </div>

        <table>
            <tr>
                <th>ID</th>
                <th>페이지 이름</th>
                <th>Shortcode</th>
                <th>항목</th>
                <th>Actions</th>
            </tr>
            <tr>
                <td>701</td>
                <td>디지털디자이너</td>
                <td>milpage dg_dg</td>
                <td>
                    <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                    <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                </td>
                <td>
                    <button class="action_bnt" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                    <button class="action_bnt" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                    <button class="action_bnt" type="button" onclick="open_pop_delete();" style="cursor: pointer;">삭제</button>
                    <button class="action_bnt" type="button" onclick="open_pop_enter();" style="cursor: pointer;">페이지 보기</button>
                </td>
            </tr>
        </table>

        <div class="Modal Modal_add" id="Modal_add">
            <div class="page">
                <span class="title">교과과정표 설정</span>
                <div class="content">
                    <div class="name">
                        <span>페이지 명</span>
                        <input id="input" placeholder="보여질 페이지의 이름입니다 (ex: Game)" rows={1} type="text" />
                    </div>
                    <div class="slug">
                        <span>페이지 슬러그</span>
                        <input id="input" placeholder="게시판 슬러그는 초기 설정값에서 변경할 수 없습니다" rows={1} type="text" />
                    </div>
                    <div class="short-code">
                        <span>페이지 숏코드</span>
                        <input id="input" placeholder="이 숏코드를 만든 Page에 붙여넣으면 교과과정표가 보입니다" rows={1} type="text" />
                    </div>
                    <div class="row1">
                        <span class="mandatory">Mandatory</span>
                        <div class="mandatory-color">
                            <div style="display: flex;">
                                <div class="square1"></div>
                                <span id="code1">#D9D9D9</span>
                            </div>
                            <span id="explain1">Mandatory 과목의 배경색을 지정하세요</span>
                            <div style="display: flex;">
                                <div class="square2"></div>
                                <span id="code2">#6D6E71</span>
                            </div>
                            <span id="explain2">Mandatory 과목의 선색을 지정하세요</span>
                        </div>
                        <span class="core">Core</span>
                        <div class="core-color">
                            <div style="display: flex;">
                                <div class="square1"></div>
                                <span id="code1">#F8AD40</span>
                            </div>
                            <span id="explain1">Core 과목의 배경색을 지정하세요</span>
                            <div style="display: flex;">
                                <div class="square2"></div>
                                <span id="code2">#F4911E</span>
                            </div>
                            <span id="explain2">Core 과목의 선색을 지정하세요</span>
                        </div>
                    </div>
                    <div class="row2">
                        <span class="support">Support</span>
                        <div class="support-color">
                            <div style="display: flex;">
                                <div class="square1"></div>
                                <span id="code1">#FEEED6</span>
                            </div>
                            <span id="explain1">Support 과목의 배경색을 지정하세요</span>
                            <div style="display: flex;">
                                <div class="square2"></div>
                                <span id="code2">#FBCE8C</span>
                            </div>
                            <span id="explain2">Support 과목의 선색을 지정하세요</span>
                        </div>
                        <span class="type">Type</span>
                        <div class="type-sort">
                            <div>
                                <input class="game" type="checkbox" name="type" value="Game">
                                <label class="game">Game&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input class="digital-film" type="checkbox" name="type" value="Digital Film">
                                <label class="digital-film">Digital Film</label>
                            </div>
                            <div>
                                <input class="digital-design" type="checkbox" name="type" value="Digital Design">
                                <label class="digital-design">Digital Design</label>
                                <input class="it-programming" type="checkbox" name="type" value="IT Programming">
                                <label class="it-programming">IT Programming</label>
                            </div>
                        </div>
                    </div>
                    <div class="row3">
                        <span class="major-details">Major details</span>
                        <div class="select">
                            <select class="selection">
                                <option value="미디어컨텐츠 전공">&nbsp; 미디어컨텐츠 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                <option value="미디어컨텐츠 전공">&nbsp; 미디어컨텐츠 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                <option value="미디어컨텐츠 전공">&nbsp; 미디어컨텐츠 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                <option value="미디어컨텐츠 전공">&nbsp; 미디어컨텐츠 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                            </select>
                            <div><span>이 교육과정이 속해 있는 세부 전공을 선택해주세요</span></div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="close" onclick="close_pop_add();">
                <span class="close_btn">close</span>
            </div>
        </div>
        <div class="Modal Modal_subject" id="Modal_subject">
            <div class="page" style="display: flex;">
                <div>
                    <span class="title">과목등록</span>
                    <span class="subtitle">과목을 클릭하여 Core인지 Support인지 정해주세요</span>
                    <section class="subject-list">
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
                                <td><span class="must_math">수학1</span></td>
                                <td><span class="must_math">확률 및 통계1</span></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><span class="must_basic">물리학,  중 택 1</span></td>
                                <td></td>
                                <td></td>
                                <td><span id="tr3td4" onclick="getDetail('TEAT444')">크리에이티브미디어<br>프로그래밍 </span></td>
                                <td><span id="tr3td5" onclick="getDetail('TEST555')">몰입형미디어<br>프로그래밍</span></td>
                                <td><span id="tr3td6" onclick="getDetail('CSE350')">알고리즘</span></td>
                                <td><span id="tr3td7" onclick="getDetail('TEST666')">미디어소프트웨어<br>엔지니어링</span></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><span id="tr4td4" onclick="getDetail('DGMD25')">비주얼커뮤니케이션<br>디자인</span></td>
                                <td><span id="tr4td5" onclick="getDetail('DGMD344')">GPU프로그래밍</span></td>
                                <td><span id="tr4td6" onclick="getDetail('DMED330')">정보디자인</span></td>
                                <td><span id="tr4td7" onclick="getDetail('DMED420')">영상사운드제작</span></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><span id="tr5td3" onclick="getDetail('DMED324')">디지털사운드기초</span></td>
                                <td><span id="tr5td4" onclick="getDetail('DMED242')">게임애니메이션</span></td>
                                <td><span id="tr5td5" onclick="getDetail('DMED336')">인포그래픽스 </span></td>
                                <td><span id="tr5td6" onclick="getDetail('DMED356')">영상편집론</span></td>
                                <td><span id="tr5td7" onclick="getDetail('DMED402')">미디어집중교육2</span></td>
                                <td><span id="tr5td8" onclick="getDetail('TEST888')">데이터마이닝</span></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><span id="tr6td3" onclick="getDetail('MIBS131')">미디어통계</span></td>
                                <td><span id="tr6td4" onclick="getDetail('MIBS422')">미디어융합기획</span></td>
                                <td><span id="tr6td5" onclick="getDetail('DGMD30')">미디어융합연구</span></td>
                                <td><span id="tr6td6" onclick="getDetail('SCE431')">컴퓨터비젼</span></td>
                                <td><span id="tr6td7" onclick="getDetail('DMED437')">UX디자인</span></td>
                                <td><span id="tr6td8" onclick="getDetail('DGMD491')">해외인턴쉽1~2</span></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><span id="tr7td3" onclick="getDetail('CSE200')">자료구조</span></td>
                                <td><span id="tr7td4" onclick="getDetail('DMED202')">디지털타이포그래피</span></td>
                                <td><span id="tr7td5" onclick="getDetail('DMED210')">게임엔진프로그래밍</span></td>
                                <td><span id="tr7td6" onclick="getDetail('DMED401')">미디어집중교육1</span></td>
                                <td><span id="tr7td7" onclick="getDetail('DMED331')">모션그래픽디자인</span></td>
                                <td><span id="tr7td8" onclick="getDetail('DKFE21')">렌더링이론</span></td>
                            </tr>
                            <tr>
                                <td><span id="tr8td1" onclick="getDetail('CSE104')">컴퓨터프로그래밍<br>및실습</span></td>
                                <td><span id="tr8td2" onclick="getDetail('CSE231')">객체지향<br>프로그래밍및실습</span></td>
                                <td><span id="tr8td3" onclick="getDetail('DGMD22')">스토리텔링</span></td>
                                <td><span id="tr8td4" onclick="getDetail('MIBS231')">미디어애널리틱스</span></td>
                                <td><span id="tr8td5" onclick="getDetail('DMED4911')">미디어산업혁명기획</span></td>
                                <td><span id="tr8td6" onclick="getDetail('DMED422')">공간음향제작</span></td>
                                <td><span id="tr8td7" onclick="getDetail('DMED499')">미디어프로젝트</span></td>
                                <td><span id="tr8td8" onclick="getDetail('미디어경영')">미디어경영</span></td>
                            </tr>
                            <tr>
                                <td><span id="tr9td1" onclick="getDetail('DGMD10')">창의미디어</span></td>
                                <td><span id="tr9td2" onclick="getDetail('DMED230')">그래픽디자인</span></td>
                                <td><span id="tr9td3" onclick="getDetail('DGMD23')">미디어심리학</span></td>
                                <td><span id="tr9td4" onclick="getDetail('MIBS462')">뉴미디어와<br>디지털방송</span></td>
                                <td><span id="tr9td5" onclick="getDetail('MIBS253')">미디어조사방법론</span></td>
                                <td><span id="tr9td6" onclick="getDetail('CSE332')">데이터베이스</span></td>
                                <td><span id="tr9td7" onclick="getDetail('DMED471')">애니메이션이론</span></td>
                                <td><span id="tr9td8" onclick="getDetail('DMED493')">미디어현장실습1~6</span></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><span id="tr10td2" onclick="getDetail('DGMD121')">발상과 시각화</span></td>
                                <td><span id="tr10td3" onclick="getDetail('MIBS322')">모바일프로그래밍</span></td>
                                <td><span id="tr10td4" onclick="getDetail('DMED370')">컴퓨터그래픽스</span></td>
                                <td><span id="tr10td5" onclick="getDetail('DMED350')">영상연출</span></td>
                                <td><span id="tr10td6" onclick="getDetail('MIBS421')">데이터사이언스개론</span></td>
                                <td><span id="tr10td7" onclick="getDetail('데이터시각화')">데이터시각화</span> </td>
                                <td><span id="tr10td8" onclick="getDetail('DGMC474')">창업현장실습1~2</span></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><span id="tr11td3" onclick="getDetail('DMED240')">3D그래픽디자인</span></td>
                                <td><span id="tr11td4" onclick="getDetail('DMED347')">3D어셋크리에이션</span> </td>
                                <td><span id="tr11td5" onclick="getDetail('DMED441')">영상합성</span></td>
                                <td><span id="tr11td6" onclick="getDetail('DMED348')">VR스튜디오</span></td>
                                <td><span id="tr11td7" onclick="getDetail('MIBS433')">시리어스게임분석</span></td>
                                <td><span id="tr11td8" onclick="getDetail('DMED498')">인터네셔널세미나</span></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><span id="tr12td4" onclick="getDetail('DMED205')">미디어와창업</span></td>
                                <td><span id="tr12td5" onclick="getDetail('CSE311')">운영체제</span></td>
                                <td><span id="tr12td6" onclick="getDetail('DMED434')">인터랙션디자인</span></td>
                                <td><span id="tr12td7" onclick="getDetail('해외봉사실천1~2')">해외봉사실천1~2</span></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><span id="tr13td4" onclick="getDetail('DMED201')">영상제작미학</span></td>
                                <td><span id="tr13td5" onclick="getDetail('DGMD34')">영상처리</span></td>
                                <td><span id="tr13td6" onclick="getDetail('DGMD31')">게임FX</span></td>
                                <td><span id="tr13td7" onclick="getDetail('DGMD471')">창업실습1~2</span></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><span id="tr14td4" onclick="getDetail('DMED212')">게임의이해</span></td>
                                <td></td>
                                <td><span id="tr14td6" onclick="getDetail('TMDD543')">인디게임제작</span></td>
                                <td><span id="tr14td7" onclick="getDetail('TEST777')">기계학습</span></td>
                                <td></td>
                            </tr>
                        </table>
                    </section>
                </div>
                <div>
                    <section class="subject-type">
                        <span class="title">과목 Type 설정</span>
                        <div><input type="radio" id="Core" name="CoreOrSupport" value="Core"><label for="Core">Core</label></div>
                        <div><input type="radio" id="Support" name="CoreOrSupport" value="Support"><label for="Support">Support</label></div>
                        <button class="action_bnt" type="button" onclick="register();" style="cursor: pointer;">등록</button>
                        <button class="action_bnt" type="button" onclick="modify();" style="cursor: pointer;">수정</button>
                        <button class="action_bnt" type="button" onclick="del();" style="cursor: pointer;">삭제</button>
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

<div class="left_menu">
    <div class="mil_logo">
        <div class="title">
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
