<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script type="text/javascript">
        addLoadEvent = function(func){if(typeof jQuery!="undefined")jQuery(document).ready(func);else if(typeof wpOnload!='function'){wpOnload=func;}else{var oldonload=wpOnload;wpOnload=function(){oldonload();func();}}};
        var ajaxurl = '/wordpress/wp-admin/admin-ajax.php',
            pagenow = 'mil-editor_page_mileditor_subject_media_contents',
            typenow = '',
            adminpage = 'mil-editor_page_mileditor_subject_media_contents',
            thousandsSeparator = ',',
            decimalPoint = '.',
            isRtl = 0;
    </script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/webapp/resources/css/admin/subject.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <script type="text/javascript">
        window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/media-jobs.ajou.ac.kr\/wordpress\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.6"}};
        !function(a,b,c){function d(a){var c,d,e,f,g,h=b.createElement("canvas"),i=h.getContext&&h.getContext("2d"),j=String.fromCharCode;if(!i||!i.fillText)return!1;switch(i.textBaseline="top",i.font="600 32px Arial",a){case"flag":return i.fillText(j(55356,56806,55356,56826),0,0),!(h.toDataURL().length<3e3)&&(i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,65039,8205,55356,57096),0,0),c=h.toDataURL(),i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,55356,57096),0,0),d=h.toDataURL(),c!==d);case"diversity":return i.fillText(j(55356,57221),0,0),e=i.getImageData(16,16,1,1).data,f=e[0]+","+e[1]+","+e[2]+","+e[3],i.fillText(j(55356,57221,55356,57343),0,0),e=i.getImageData(16,16,1,1).data,g=e[0]+","+e[1]+","+e[2]+","+e[3],f!==g;case"simple":return i.fillText(j(55357,56835),0,0),0!==i.getImageData(16,16,1,1).data[0];case"unicode8":return i.fillText(j(55356,57135),0,0),0!==i.getImageData(16,16,1,1).data[0];case"unicode9":return i.fillText(j(55358,56631),0,0),0!==i.getImageData(16,16,1,1).data[0]}return!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i;for(i=Array("simple","flag","unicode8","diversity","unicode9"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
    </script>

    <script type='text/javascript'>
        /* <![CDATA[ */
        var userSettings = {"url":"\/wordpress\/","uid":"1","time":"1676099509","secure":""};/* ]]> */
    </script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=jquery-core,jquery-migrate,utils&amp;ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.industry.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.mentor.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/kboard/pages/cosmosfarm-apis.js?ver=5.2'></script>

    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/webapp/resources/js/pop-up.js"></script>

    <script src="${pageContext.request.contextPath}/webapp/WEB-INF/views/cil.js"></script>

    <script>
        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, document.getElementById( 'wp-admin-canonical' ).href + window.location.hash );
        }
    </script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<script type="text/javascript">
    document.body.className = document.body.className.replace('no-js','js');
</script>

<script type="text/javascript">
    (function() {
        var request, b = document.body, c = 'className', cs = 'customize-support', rcs = new RegExp('(^|\\s+)(no-)?'+cs+'(\\s+|$)');

        request = true;

        b[c] = b[c].replace( rcs, ' ' );
        b[c] += ( window.postMessage && request ? ' ' : ' no-' ) + cs;
    }());
</script>

<div class="setting_block">
    <p class="setting_block_title">과목편집</p>
    <div class="setting_block_content">
        <div class="setting_block_left">
            <div class="setting_title">Subject List</div>
            <div id="mil_subject_table_wrap">
                <table id="mil_subject_table">
                    <thead>
                    <tr style="background-color: #F4F4F4;">
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
                        <td id="td21" colspan="2">
                            <div class="table_bg" style="width: 130px;">
                      <span
                      >물리학, 생명과학, 선형대수1, 수학2, 이산수학 중 택
                        1</span
                      >
                            </div>
                        </td>
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

        <div style="width: 1%"></div>

        <div class="setting_block_right">
            <form id="mil_create_subject_form">
                <input type="hidden" name="td_id" value="" />
                <input type="hidden" name="track" value="social_media" />
                <div class="setting_title">Subject Info</div>
                <div class="setting_table_wrap">
                    <table>
                        <tr>&nbsp;</tr>
                        <tr>
                            <th>과목 코드</th>
                            <td>
                                <input
                                        type="text"
                                        class="mil_input"
                                        name="mil_subject_code"
                                        value=""
                                        placeholder="과목 코드를 입력해주세요 (ex: DMED100)"
                                />
                            </td>
                        </tr>
                        <tr>
                            <th>과목 이름</th>
                            <td>
                                <input
                                        type="text"
                                        class="mil_input"
                                        name="mil_subject_name"
                                        value=""
                                        placeholder="띄어쓰기가 줄넘김으로 표시됩니다"
                                />
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                <button
                                        type="button"
                                        class="mil_btn get_subject_info_by_name_button">
                                    과목 가져오기
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th>권장 이수 학기</th>
                            <td>
                                <select
                                        class="mil_input_select"
                                        name="mil_subject_semester"
                                >
                                    <option value="1">1-1</option>
                                    <option value="2">1-2</option>
                                    <option value="3">2-1</option>
                                    <option value="4">2-2</option>
                                    <option value="5">3-1</option>
                                    <option value="6">3-2</option>
                                    <option value="7">4-1</option>
                                    <option value="8">4-2</option>
                                </select>
                                <div class="description_container">
                      <span class="description"
                      >과목의 권장 이수 학기를 선택해주세요</span
                      >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>과목 키워드</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_keyword"
                                        rows="1"
                                        cols="50"
                                        placeholder="과목의 키워드를 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                        <tr>
                            <th>과목 요강</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_detail"
                                        rows="4"
                                        cols="50"
                                        placeholder="과목의 설명을 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                        <tr>
                            <th>전공 과목 여부</th>
                            <td>
                                <input
                                        id="major"
                                        type="checkbox"
                                        name="mil_subject_mandatory"
                                        value="T"
                                >
                                <label>
                                    전공 과목
                                </label>
                                <div class="description_container">
                      <span class="description">
                        과목이 전공 과목이면 체크해주세요
                      </span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>사용 프로그램</th>
                            <td>
                                <input
                                        type="text"
                                        class="mil_input"
                                        name="mil_subject_tool"
                                        value=""
                                        placeholder="과목에서 사용하는 프로그램을 입력해주세요 (ex:
                      Maya)"
                                />
                            </td>
                        </tr>
                        <tr>
                            <th>선수 과목</th>
                            <td id="presubject_selects">
                                <select
                                        class="mil_input_select last_select"
                                        name="mil_subject_presubject_select[]"
                                >
                                    <option value="None">None</option>
                                    <option value="CAJ0114">아주희망</option>
                                    <option value="CSE104">컴퓨터프로그래밍및실습</option>
                                    <option value="CSE134">컴퓨터프로그램설계</option>
                                    <option value="CSE200">자료구조</option>
                                    <option value="CSE231">객체지향 프로그래밍및실습</option>
                                    <option value="CSE311">운영체제</option>
                                    <option value="CSE332">데이터베이스</option>
                                    <option value="CSE350">알고리즘</option>
                                    <option value="DGMC474">창업현장실습1~2</option>
                                    <option value="DGMD10">창의미디어</option>
                                    <option value="DGMD121">발상과 시각화</option>
                                    <option value="DGMD2110">3D캐릭터애니메이션</option>
                                    <option value="DGMD22">스토리텔링</option>
                                    <option value="DGMD23">미디어심리학</option>
                                    <option value="DGMD25">비주얼커뮤니케이션 디자인</option>
                                    <option value="DGMD30">미디어융합연구</option>
                                    <option value="DGMD31">게임FX</option>
                                    <option value="DGMD319">3D캐릭터리깅</option>
                                    <option value="DGMD34">영상처리</option>
                                    <option value="DGMD344">GPU프로그래밍</option>
                                    <option value="DGMD43">기계학습및 데이터마이닝</option>
                                    <option value="DGMD471">창업실습1~2</option>
                                    <option value="DGMD491">해외인턴쉽1~2</option>
                                    <option value="DKFE21">렌더링이론</option>
                                    <option value="DMED100">디지털미디어</option>
                                    <option value="DMED130">디자인기초</option>
                                    <option value="DMED201">영상제작미학</option>
                                    <option value="DMED202">디지털타이포그래피</option>
                                    <option value="DMED204">미디어와창업2</option>
                                    <option value="DMED205">미디어와창업</option>
                                    <option value="DMED210">게임엔진프로그래밍</option>
                                    <option value="DMED212">게임의이해</option>
                                    <option value="DMED230">그래픽디자인</option>
                                    <option value="DMED235">피지컬인터랙션디자인</option>
                                    <option value="DMED240">3D그래픽디자인</option>
                                    <option value="DMED242">게임애니메이션</option>
                                    <option value="DMED244">크로키</option>
                                    <option value="DMED256">영상미학</option>
                                    <option value="DMED270">컴퓨터프로그래밍</option>
                                    <option value="DMED310">게임기획이론</option>
                                    <option value="DMED311">게임프로그래밍2</option>
                                    <option value="DMED312">게임스토리텔링</option>
                                    <option value="DMED316">게임기획개론</option>
                                    <option value="DMED317">게임스토리텔링</option>
                                    <option value="DMED323">앱프로젝트</option>
                                    <option value="DMED324">디지털사운드기초</option>
                                    <option value="DMED330">정보디자인</option>
                                    <option value="DMED331">모션그래픽디자인</option>
                                    <option value="DMED336">인포그래픽스</option>
                                    <option value="DMED347">3D어셋크리에이션</option>
                                    <option value="DMED348">VR스튜디오</option>
                                    <option value="DMED350">영상연출</option>
                                    <option value="DMED356">영상편집론</option>
                                    <option value="DMED370">컴퓨터그래픽스</option>
                                    <option value="DMED388">창의적콘텐츠디자인2</option>
                                    <option value="DMED389">창의적콘텐츠디자인1</option>
                                    <option value="DMED401">미디어집중교육1</option>
                                    <option value="DMED402">미디어집중교육2</option>
                                    <option value="DMED404"></option>
                                    <option value="DMED413">게임상호작용디자인</option>
                                    <option value="DMED420">영상사운드제작</option>
                                    <option value="DMED421">영상사운드제작</option>
                                    <option value="DMED422">공간음향제작</option>
                                    <option value="DMED434">인터랙션디자인</option>
                                    <option value="DMED437">UX디자인</option>
                                    <option value="DMED438">뉴미디어와모션그래픽스</option>
                                    <option value="DMED441">영상합성</option>
                                    <option value="DMED462">미디어현장실습1~6</option>
                                    <option value="DMED471">애니메이션이론</option>
                                    <option value="DMED483">이머징미디어특론</option>
                                    <option value="DMED484">인터내셔널세미나</option>
                                    <option value="DMED485">창업실습1,2</option>
                                    <option value="DMED486">미디어경영</option>
                                    <option value="DMED4911">미디어산업혁명기획</option>
                                    <option value="DMED493">미디어현장실습1~6</option>
                                    <option value="DMED497">창업실습1~2</option>
                                    <option value="DMED498">인터네셔널세미나</option>
                                    <option value="DMED499">미디어프로젝트</option>
                                    <option value="DMED666">수학1</option>
                                    <option value="DMED788">확률및통계1</option>
                                    <option value="DMEDO3312">인포그래픽스</option>
                                    <option value="ENG111">영어1</option>
                                    <option value="ENG112">영어2</option>
                                    <option value="G066">선형대수</option>
                                    <option value="INFO401">해외인턴쉽1</option>
                                    <option value="INFO402">해외인턴쉽</option>
                                    <option value="INFO403">해외봉사실천1~2</option>
                                    <option value="INFO404">해외봉사실천2</option>
                                    <option value="KOR101">글쓰기</option>
                                    <option value="MATH102">수학1</option>
                                    <option value="MATH251">확률과통계1</option>
                                    <option value="MIBS101">소셜미디어</option>
                                    <option value="MIBS131">미디어통계</option>
                                    <option value="MIBS221">소셜미디어 프로그래밍</option>
                                    <option value="MIBS231">미디어애널리틱스</option>
                                    <option value="MIBS232">소셜미디어애널리틱스</option>
                                    <option value="MIBS252">소셜미디어휴먼</option>
                                    <option value="MIBS253">미디어조사방법론</option>
                                    <option value="MIBS311">소셜미디어기획</option>
                                    <option value="MIBS312">광고이론및제작</option>
                                    <option value="MIBS321">모바일 프로그래밍2</option>
                                    <option value="MIBS322">모바일프로그래밍</option>
                                    <option value="MIBS323">웹앱프로그래밍</option>
                                    <option value="MIBS324">소셜앱프로젝트</option>
                                    <option value="MIBS325">소셜앱프로젝트</option>
                                    <option value="MIBS331">애널리틱스프로젝트</option>
                                    <option value="MIBS332">시리어스게임 애널리틱스</option>
                                    <option value="MIBS351">미디어이론</option>
                                    <option value="MIBS352">창의성과데이터</option>
                                    <option value="MIBS353">사물인터넷 구축및활용</option>
                                    <option value="MIBS354">
                                        데이터와과학적 창의프로젝트
                                    </option>
                                    <option value="MIBS374">인지과학응용</option>
                                    <option value="MIBS381">창업현장실습1</option>
                                    <option value="MIBS382">창업현장실습2</option>
                                    <option value="MIBS412">미디어및UCC</option>
                                    <option value="MIBS421">데이터사이언스개론</option>
                                    <option value="MIBS422">미디어융합기획</option>
                                    <option value="MIBS431">데이터시각화</option>
                                    <option value="MIBS432">데이터사이언스 이론과응용</option>
                                    <option value="MIBS433">시리어스게임분석</option>
                                    <option value="MIBS461">뉴미디어기획</option>
                                    <option value="MIBS462">뉴미디어와 디지털방송</option>
                                    <option value="MIBS463">데이터사이언스와 UX</option>
                                    <option value="MIBS465">텍스트마이닝과 감정분석</option>
                                    <option value="MIBS471">러닝사이언스</option>
                                    <option value="MIBS483">
                                        엔터테인먼트엔지니 어링디자인세미나
                                    </option>
                                    <option value="SCE431">컴퓨터비젼</option>
                                    <option value="TEAT444">
                                        크리에이티브미디어 프로그래밍
                                    </option>
                                    <option value="TEST555">몰입형미디어 프로그래밍</option>
                                    <option value="TEST666">
                                        미디어소프트웨어 엔지니어링
                                    </option>
                                    <option value="TEST777">기계학습</option>
                                    <option value="TEST888">데이터마이닝</option>
                                    <option value="TESTCODE01">데이터마이닝</option>
                                    <option value="TMDD543">인디게임제작</option>
                                </select>
                                <br />
                                <script>
                                    jQuery(".last_select").change(function () {
                                        if (jQuery(this).val() != "None") {
                                            jQuery(this).removeClass("last_select");
                                            var option = jQuery("<option>");
                                            option.val("None");
                                            option.text("None");
                                            var select = jQuery("<select>");
                                            select.addClass("mil_input_select last_select");
                                            select.attr(
                                                "name",
                                                "mil_subject_presubject_select[]"
                                            );
                                            select.append(option);

                                            var option = jQuery("<option>").val("CAJ0114");
                                            option.text("아주희망");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE104");
                                            option.text("컴퓨터프로그래밍및실습");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE134");
                                            option.text("컴퓨터프로그램설계");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE200");
                                            option.text("자료구조");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE231");
                                            option.text("객체지향 프로그래밍및실습");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE311");
                                            option.text("운영체제");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE332");
                                            option.text("데이터베이스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE350");
                                            option.text("알고리즘");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMC474");
                                            option.text("창업현장실습1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD10");
                                            option.text("창의미디어");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD121");
                                            option.text("발상과 시각화");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD2110");
                                            option.text("3D캐릭터애니메이션");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD22");
                                            option.text("스토리텔링");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD23");
                                            option.text("미디어심리학");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD25");
                                            option.text("비주얼커뮤니케이션 디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD30");
                                            option.text("미디어융합연구");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD31");
                                            option.text("게임FX");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD319");
                                            option.text("3D캐릭터리깅");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD34");
                                            option.text("영상처리");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD344");
                                            option.text("GPU프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD43");
                                            option.text("기계학습및 데이터마이닝");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD471");
                                            option.text("창업실습1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD491");
                                            option.text("해외인턴쉽1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DKFE21");
                                            option.text("렌더링이론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED100");
                                            option.text("디지털미디어");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED130");
                                            option.text("디자인기초");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED201");
                                            option.text("영상제작미학");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED202");
                                            option.text("디지털타이포그래피");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED204");
                                            option.text("미디어와창업2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED205");
                                            option.text("미디어와창업");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED210");
                                            option.text("게임엔진프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED212");
                                            option.text("게임의이해");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED230");
                                            option.text("그래픽디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED235");
                                            option.text("피지컬인터랙션디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED240");
                                            option.text("3D그래픽디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED242");
                                            option.text("게임애니메이션");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED244");
                                            option.text("크로키");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED256");
                                            option.text("영상미학");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED270");
                                            option.text("컴퓨터프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED310");
                                            option.text("게임기획이론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED311");
                                            option.text("게임프로그래밍2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED312");
                                            option.text("게임스토리텔링");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED316");
                                            option.text("게임기획개론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED317");
                                            option.text("게임스토리텔링");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED323");
                                            option.text("앱프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED324");
                                            option.text("디지털사운드기초");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED330");
                                            option.text("정보디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED331");
                                            option.text("모션그래픽디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED336");
                                            option.text("인포그래픽스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED347");
                                            option.text("3D어셋크리에이션");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED348");
                                            option.text("VR스튜디오");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED350");
                                            option.text("영상연출");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED356");
                                            option.text("영상편집론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED370");
                                            option.text("컴퓨터그래픽스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED388");
                                            option.text("창의적콘텐츠디자인2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED389");
                                            option.text("창의적콘텐츠디자인1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED401");
                                            option.text("미디어집중교육1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED402");
                                            option.text("미디어집중교육2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED404");
                                            option.text("  ");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED413");
                                            option.text("게임상호작용디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED420");
                                            option.text("영상사운드제작");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED421");
                                            option.text("영상사운드제작");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED422");
                                            option.text("공간음향제작");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED434");
                                            option.text("인터랙션디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED437");
                                            option.text("UX디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED438");
                                            option.text("뉴미디어와모션그래픽스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED441");
                                            option.text("영상합성");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED462");
                                            option.text("미디어현장실습1~6");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED471");
                                            option.text("애니메이션이론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED483");
                                            option.text("이머징미디어특론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED484");
                                            option.text("인터내셔널세미나");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED485");
                                            option.text("창업실습1,2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED486");
                                            option.text("미디어경영");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED4911");
                                            option.text("미디어산업혁명기획");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED493");
                                            option.text("미디어현장실습1~6");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED497");
                                            option.text("창업실습1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED498");
                                            option.text("인터네셔널세미나");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED499");
                                            option.text("미디어프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED666");
                                            option.text("수학1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED788");
                                            option.text("확률및통계1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMEDO3312");
                                            option.text("인포그래픽스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("ENG111");
                                            option.text("영어1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("ENG112");
                                            option.text("영어2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("G066");
                                            option.text("선형대수");
                                            select.append(option);
                                            var option = jQuery("<option>").val("INFO401");
                                            option.text("해외인턴쉽1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("INFO402");
                                            option.text("해외인턴쉽");
                                            select.append(option);
                                            var option = jQuery("<option>").val("INFO403");
                                            option.text("해외봉사실천1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("INFO404");
                                            option.text("해외봉사실천2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("KOR101");
                                            option.text("글쓰기");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MATH102");
                                            option.text("수학1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MATH251");
                                            option.text("확률과통계1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS101");
                                            option.text("소셜미디어");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS131");
                                            option.text("미디어통계");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS221");
                                            option.text("소셜미디어 프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS231");
                                            option.text("미디어애널리틱스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS232");
                                            option.text("소셜미디어애널리틱스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS252");
                                            option.text("소셜미디어휴먼");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS253");
                                            option.text("미디어조사방법론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS311");
                                            option.text("소셜미디어기획");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS312");
                                            option.text("광고이론및제작");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS321");
                                            option.text("모바일 프로그래밍2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS322");
                                            option.text("모바일프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS323");
                                            option.text("웹앱프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS324");
                                            option.text("소셜앱프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS325");
                                            option.text("소셜앱프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS331");
                                            option.text("애널리틱스프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS332");
                                            option.text("시리어스게임 애널리틱스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS351");
                                            option.text("미디어이론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS352");
                                            option.text("창의성과데이터");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS353");
                                            option.text("사물인터넷 구축및활용");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS354");
                                            option.text("데이터와과학적 창의프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS374");
                                            option.text("인지과학응용");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS381");
                                            option.text("창업현장실습1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS382");
                                            option.text("창업현장실습2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS412");
                                            option.text("미디어및UCC");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS421");
                                            option.text("데이터사이언스개론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS422");
                                            option.text("미디어융합기획");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS431");
                                            option.text("데이터시각화");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS432");
                                            option.text("데이터사이언스 이론과응용");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS433");
                                            option.text("시리어스게임분석");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS461");
                                            option.text("뉴미디어기획");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS462");
                                            option.text("뉴미디어와 디지털방송");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS463");
                                            option.text("데이터사이언스와 UX");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS465");
                                            option.text("텍스트마이닝과 감정분석");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS471");
                                            option.text("러닝사이언스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS483");
                                            option.text("엔터테인먼트엔지니 어링디자인세미나");
                                            select.append(option);
                                            var option = jQuery("<option>").val("SCE431");
                                            option.text("컴퓨터비젼");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEAT444");
                                            option.text("크리에이티브미디어 프로그래밍 ");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEST555");
                                            option.text("몰입형미디어 프로그래밍 ");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEST666");
                                            option.text("미디어소프트웨어 엔지니어링 ");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEST777");
                                            option.text("기계학습");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEST888");
                                            option.text("데이터마이닝");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TESTCODE01");
                                            option.text("데이터마이닝");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TMDD543");
                                            option.text("인디게임제작");
                                            select.append(option);
                                            select.insertBefore(
                                                jQuery("#presubject_selects .description_container")
                                            );
                                            jQuery(this).unbind("change");
                                            jQuery(".last_select").change(arguments.callee);
                                        }
                                    });
                                </script>
                                <div class="description_container">
                      <span class="description">
                        과목의 선수 과목을 선택해주세요</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>연계 과목</th>
                            <td>
                                <select
                                        class="mil_input_select"
                                        name="mil_subject_relsubject_select"
                                >
                                    <option value="None">None</option>
                                    <option value="CAJ0114">아주희망</option>
                                    <option value="CSE104">컴퓨터프로그래밍및실습</option>
                                    <option value="CSE134">컴퓨터프로그램설계</option>
                                    <option value="CSE200">자료구조</option>
                                    <option value="CSE231">객체지향 프로그래밍및실습</option>
                                    <option value="CSE311">운영체제</option>
                                    <option value="CSE332">데이터베이스</option>
                                    <option value="CSE350">알고리즘</option>
                                    <option value="DGMC474">창업현장실습1~2</option>
                                    <option value="DGMD10">창의미디어</option>
                                    <option value="DGMD121">발상과 시각화</option>
                                    <option value="DGMD2110">3D캐릭터애니메이션</option>
                                    <option value="DGMD22">스토리텔링</option>
                                    <option value="DGMD23">미디어심리학</option>
                                    <option value="DGMD25">비주얼커뮤니케이션 디자인</option>
                                    <option value="DGMD30">미디어융합연구</option>
                                    <option value="DGMD31">게임FX</option>
                                    <option value="DGMD319">3D캐릭터리깅</option>
                                    <option value="DGMD34">영상처리</option>
                                    <option value="DGMD344">GPU프로그래밍</option>
                                    <option value="DGMD43">기계학습및 데이터마이닝</option>
                                    <option value="DGMD471">창업실습1~2</option>
                                    <option value="DGMD491">해외인턴쉽1~2</option>
                                    <option value="DKFE21">렌더링이론</option>
                                    <option value="DMED100">디지털미디어</option>
                                    <option value="DMED130">디자인기초</option>
                                    <option value="DMED201">영상제작미학</option>
                                    <option value="DMED202">디지털타이포그래피</option>
                                    <option value="DMED204">미디어와창업2</option>
                                    <option value="DMED205">미디어와창업</option>
                                    <option value="DMED210">게임엔진프로그래밍</option>
                                    <option value="DMED212">게임의이해</option>
                                    <option value="DMED230">그래픽디자인</option>
                                    <option value="DMED235">피지컬인터랙션디자인</option>
                                    <option value="DMED240">3D그래픽디자인</option>
                                    <option value="DMED242">게임애니메이션</option>
                                    <option value="DMED244">크로키</option>
                                    <option value="DMED256">영상미학</option>
                                    <option value="DMED270">컴퓨터프로그래밍</option>
                                    <option value="DMED310">게임기획이론</option>
                                    <option value="DMED311">게임프로그래밍2</option>
                                    <option value="DMED312">게임스토리텔링</option>
                                    <option value="DMED316">게임기획개론</option>
                                    <option value="DMED317">게임스토리텔링</option>
                                    <option value="DMED323">앱프로젝트</option>
                                    <option value="DMED324">디지털사운드기초</option>
                                    <option value="DMED330">정보디자인</option>
                                    <option value="DMED331">모션그래픽디자인</option>
                                    <option value="DMED336">인포그래픽스</option>
                                    <option value="DMED347">3D어셋크리에이션</option>
                                    <option value="DMED348">VR스튜디오</option>
                                    <option value="DMED350">영상연출</option>
                                    <option value="DMED356">영상편집론</option>
                                    <option value="DMED370">컴퓨터그래픽스</option>
                                    <option value="DMED388">창의적콘텐츠디자인2</option>
                                    <option value="DMED389">창의적콘텐츠디자인1</option>
                                    <option value="DMED401">미디어집중교육1</option>
                                    <option value="DMED402">미디어집중교육2</option>
                                    <option value="DMED404"></option>
                                    <option value="DMED413">게임상호작용디자인</option>
                                    <option value="DMED420">영상사운드제작</option>
                                    <option value="DMED421">영상사운드제작</option>
                                    <option value="DMED422">공간음향제작</option>
                                    <option value="DMED434">인터랙션디자인</option>
                                    <option value="DMED437">UX디자인</option>
                                    <option value="DMED438">뉴미디어와모션그래픽스</option>
                                    <option value="DMED441">영상합성</option>
                                    <option value="DMED462">미디어현장실습1~6</option>
                                    <option value="DMED471">애니메이션이론</option>
                                    <option value="DMED483">이머징미디어특론</option>
                                    <option value="DMED484">인터내셔널세미나</option>
                                    <option value="DMED485">창업실습1,2</option>
                                    <option value="DMED486">미디어경영</option>
                                    <option value="DMED4911">미디어산업혁명기획</option>
                                    <option value="DMED493">미디어현장실습1~6</option>
                                    <option value="DMED497">창업실습1~2</option>
                                    <option value="DMED498">인터네셔널세미나</option>
                                    <option value="DMED499">미디어프로젝트</option>
                                    <option value="DMED666">수학1</option>
                                    <option value="DMED788">확률및통계1</option>
                                    <option value="DMEDO3312">인포그래픽스</option>
                                    <option value="ENG111">영어1</option>
                                    <option value="ENG112">영어2</option>
                                    <option value="G066">선형대수</option>
                                    <option value="INFO401">해외인턴쉽1</option>
                                    <option value="INFO402">해외인턴쉽</option>
                                    <option value="INFO403">해외봉사실천1~2</option>
                                    <option value="INFO404">해외봉사실천2</option>
                                    <option value="KOR101">글쓰기</option>
                                    <option value="MATH102">수학1</option>
                                    <option value="MATH251">확률과통계1</option>
                                    <option value="MIBS101">소셜미디어</option>
                                    <option value="MIBS131">미디어통계</option>
                                    <option value="MIBS221">소셜미디어 프로그래밍</option>
                                    <option value="MIBS231">미디어애널리틱스</option>
                                    <option value="MIBS232">소셜미디어애널리틱스</option>
                                    <option value="MIBS252">소셜미디어휴먼</option>
                                    <option value="MIBS253">미디어조사방법론</option>
                                    <option value="MIBS311">소셜미디어기획</option>
                                    <option value="MIBS312">광고이론및제작</option>
                                    <option value="MIBS321">모바일 프로그래밍2</option>
                                    <option value="MIBS322">모바일프로그래밍</option>
                                    <option value="MIBS323">웹앱프로그래밍</option>
                                    <option value="MIBS324">소셜앱프로젝트</option>
                                    <option value="MIBS325">소셜앱프로젝트</option>
                                    <option value="MIBS331">애널리틱스프로젝트</option>
                                    <option value="MIBS332">시리어스게임 애널리틱스</option>
                                    <option value="MIBS351">미디어이론</option>
                                    <option value="MIBS352">창의성과데이터</option>
                                    <option value="MIBS353">사물인터넷 구축및활용</option>
                                    <option value="MIBS354">
                                        데이터와과학적 창의프로젝트
                                    </option>
                                    <option value="MIBS374">인지과학응용</option>
                                    <option value="MIBS381">창업현장실습1</option>
                                    <option value="MIBS382">창업현장실습2</option>
                                    <option value="MIBS412">미디어및UCC</option>
                                    <option value="MIBS421">데이터사이언스개론</option>
                                    <option value="MIBS422">미디어융합기획</option>
                                    <option value="MIBS431">데이터시각화</option>
                                    <option value="MIBS432">데이터사이언스 이론과응용</option>
                                    <option value="MIBS433">시리어스게임분석</option>
                                    <option value="MIBS461">뉴미디어기획</option>
                                    <option value="MIBS462">뉴미디어와 디지털방송</option>
                                    <option value="MIBS463">데이터사이언스와 UX</option>
                                    <option value="MIBS465">텍스트마이닝과 감정분석</option>
                                    <option value="MIBS471">러닝사이언스</option>
                                    <option value="MIBS483">
                                        엔터테인먼트엔지니 어링디자인세미나
                                    </option>
                                    <option value="SCE431">컴퓨터비젼</option>
                                    <option value="TEAT444">
                                        크리에이티브미디어 프로그래밍
                                    </option>
                                    <option value="TEST555">몰입형미디어 프로그래밍</option>
                                    <option value="TEST666">
                                        미디어소프트웨어 엔지니어링
                                    </option>
                                    <option value="TEST777">기계학습</option>
                                    <option value="TEST888">데이터마이닝</option>
                                    <option value="TESTCODE01">데이터마이닝</option>
                                    <option value="TMDD543">인디게임제작</option>
                                </select>
                                <br />
                                <!-- <textarea
                                  class="mil_input"
                                  name="mil_subject_relsubject"
                                  rows="4"
                                  cols="50"
                                ></textarea> -->
                                <div class="description_container">
                      <span class="description">
                        과목의 연계 과목을 선택해주세요</span>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

                <!-- button type="button" class="mil_btn mil_green_btn mil_create_subject_button">과목 생성</button -->
                <button
                        type="button"
                        class="mil_btn mil_blue_btn mil_modify_subject_button"
                >
                    과목 설정
                </button>
                <button
                        type="button"
                        class="mil_btn mil_green_btn mil_delete_subject_at_curriculum_button"
                >
                    커리큘럼에서 제외
                </button>
                <button
                        type="button"
                        class="mil_btn mil_red_btn mil_delete_subject_button"
                >
                    과목 완전 삭제
                </button>
                <br /><br />
            </form>
        </div>
    </div>
</div>
<script>
    var td = document.getElementById("td71");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("컴퓨터프로그래밍및실습");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td63");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("자료구조");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td72");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("객체지향");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-3px");
    var text = document.createTextNode("프로그래밍및실습");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td115");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("운영체제");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td86");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("데이터베이스");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td26");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("알고리즘");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td98");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("창업현장실습1~2");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td81");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("창의미디어");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td92");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("발상과");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-3px");
    var text = document.createTextNode("시각화");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td44");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("3D캐릭터애니메이션");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td73");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("스토리텔링");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td83");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어심리학");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td34");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("비주얼커뮤니케이션");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-3px");
    var text = document.createTextNode("디자인");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td55");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어융합연구");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td135");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("3D캐릭터리깅");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td125");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("영상처리");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td35");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("GPU프로그래밍");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td127");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("창업실습1~2");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td58");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("해외인턴쉽1~2");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td68");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("렌더링이론");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td124");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("영상제작미학");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td64");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("디지털타이포그래피");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td114");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어와창업");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td65");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("게임엔진프로그래밍");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td134");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("게임의이해");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td82");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("그래픽디자인");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td103");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("3D그래픽디자인");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td43");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("디지털사운드기초");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td36");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("정보디자인");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td67");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("모션그래픽디자인");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td104");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("3D어셋크리에이션");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td106");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("VR스튜디오");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td95");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("영상연출");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td46");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("영상편집론");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td94");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("컴퓨터그래픽스");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td66");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어집중교육1");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td47");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어집중교육2");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td37");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("영상사운드제작");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td76");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("공간음향제작");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td116");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("인터랙션디자인");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td57");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("UX디자인");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td105");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("영상합성");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td88");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어현장실습1~6");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td87");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("애니메이션이론");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td78");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어경영");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td75");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어산업혁명기획");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td108");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("인터네셔널세미나");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td77");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어프로젝트");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td11");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("수학1");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td12");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("확률및통계1");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td45");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("인포그래픽스");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td117");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("해외봉사실천1~2");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td53");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어통계");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td74");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어애널리틱스");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td85");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어조사방법론");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td93");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("모바일프로그래밍");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td96");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("데이터사이언스개론");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td54");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어융합기획");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td97");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("데이터시각화");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td107");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("시리어스게임분석");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td84");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("뉴미디어와");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-3px");
    var text = document.createTextNode("디지털방송");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.8em";
    text_wrap.style.fontSize = "0.75em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td56");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("컴퓨터비젼");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td24");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("크리에이티브미디어");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-3px");
    var text = document.createTextNode("프로그래밍");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-6px");
    var text = document.createTextNode("");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.8em";
    text_wrap.style.fontSize = "0.75em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td25");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("몰입형미디어");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-3px");
    var text = document.createTextNode("프로그래밍");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-6px");
    var text = document.createTextNode("");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.8em";
    text_wrap.style.fontSize = "0.75em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td27");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("미디어소프트웨어");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-3px");
    var text = document.createTextNode("엔지니어링");
    var linebreak = document.createElement("br");
    text_wrap.appendChild(text);
    text_wrap.appendChild(linebreak);
    jQuery(text_wrap).css("margin-top", "-6px");
    var text = document.createTextNode("");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.8em";
    text_wrap.style.fontSize = "0.75em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td137");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("기계학습");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td48");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("데이터마이닝");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
    var td = document.getElementById("td126");
    var bg = document.createElement("DIV");
    bg.className = "table_bg";
    var text_wrap = document.createElement("SPAN");
    var text = document.createTextNode("인디게임제작");
    text_wrap.appendChild(text);
    text_wrap.style.fontSize = "0.2em";
    bg.appendChild(text_wrap);
    td.appendChild(bg);
</script>

<div class="left_menu">
    <meta name="viewport" content="height=device-height">
    <jsp:include page="include/menu.jsp" />
</div>

<script type="text/javascript">
    (function ($) {
        $(document).ajaxSend(function (event, jqxhr, settings) {
            if (settings.url &&
                -1 < settings.url.indexOf('admin-ajax.php') &&
                ! ( settings.url.indexOf( '_fs_blog_admin' ) > 0 )
            ) {
                if (settings.url.indexOf('?') > 0) {
                    settings.url += '&';
                } else {
                    settings.url += '?';
                }

                settings.url += '_fs_blog_admin=true';

            }
        });
    })(jQuery);
</script>
<script type="text/javascript">
    (function ($) {
        $('.fs-submenu-item.wp-support-forum').parent().attr('target', '_blank');
    })(jQuery);
</script>

<script type='text/javascript'>
    /* <![CDATA[ */
    var commonL10n = {"warnDelete":"\uc774\ub4e4 \uc544\uc774\ud15c\uc744 \uc601\uad6c\uc801\uc73c\ub85c \uc0ad\uc81c\ud558\ub824\uace0 \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n  \uc911\uc9c0\ud558\ub824\uba74 '\ucde8\uc18c'\ub97c, \uc0ad\uc81c\ub294 'OK'.","dismiss":"\uc774 \uc54c\ub9bc \ubb34\uc2dc\ud558\uae30."};var heartbeatSettings = {"nonce":"04d416c604"};var authcheckL10n = {"beforeunload":"\uc138\uc158\uc774 \ub9cc\ub8cc\ub410\uc2b5\ub2c8\ub2e4. \uc774 \ud398\uc774\uc9c0\uc5d0\uc11c \ub2e4\uc2dc \ub85c\uadf8\uc778\ud558\uac70\ub098 \ub85c\uadf8\uc778 \ud398\uc774\uc9c0\ub85c \uc774\ub3d9\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.","interval":"180"};/* ]]> */
</script>
<script type='text/javascript'
        src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=hoverIntent,common,admin-bar,svg-painter,heartbeat,wp-auth-check&amp;ver=4.6'>
</script>
<script type="text/javascript">if(typeof wpOnload=='function')wpOnload();</script>
</body>
</html>