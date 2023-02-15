<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webapp/resources/css/admin/mentor.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webapp/resources/css/admin/menu.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/webapp/resources/js/pop-up.js"></script>

    <script src="${pageContext.request.contextPath}/webapp/WEB-INF/views/cil.js"></script>

    <script type="text/javascript">
        addLoadEvent = function(func){if(typeof jQuery!="undefined")jQuery(document).ready(func);else if(typeof wpOnload!='function'){wpOnload=func;}else{var oldonload=wpOnload;wpOnload=function(){oldonload();func();}}};
        var ajaxurl = '/wordpress/wp-admin/admin-ajax.php',
            pagenow = 'mil-editor_page_mileditor_amam_mentor',
            typenow = '',
            adminpage = 'mil-editor_page_mileditor_amam_mentor',
            thousandsSeparator = ',',
            decimalPoint = '.',
            isRtl = 0;
    </script>
    <script type="text/javascript">
        window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/media-jobs.ajou.ac.kr\/wordpress\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.6"}};
        !function(a,b,c){function d(a){var c,d,e,f,g,h=b.createElement("canvas"),i=h.getContext&&h.getContext("2d"),j=String.fromCharCode;if(!i||!i.fillText)return!1;switch(i.textBaseline="top",i.font="600 32px Arial",a){case"flag":return i.fillText(j(55356,56806,55356,56826),0,0),!(h.toDataURL().length<3e3)&&(i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,65039,8205,55356,57096),0,0),c=h.toDataURL(),i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,55356,57096),0,0),d=h.toDataURL(),c!==d);case"diversity":return i.fillText(j(55356,57221),0,0),e=i.getImageData(16,16,1,1).data,f=e[0]+","+e[1]+","+e[2]+","+e[3],i.fillText(j(55356,57221,55356,57343),0,0),e=i.getImageData(16,16,1,1).data,g=e[0]+","+e[1]+","+e[2]+","+e[3],f!==g;case"simple":return i.fillText(j(55357,56835),0,0),0!==i.getImageData(16,16,1,1).data[0];case"unicode8":return i.fillText(j(55356,57135),0,0),0!==i.getImageData(16,16,1,1).data[0];case"unicode9":return i.fillText(j(55358,56631),0,0),0!==i.getImageData(16,16,1,1).data[0]}return!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i;for(i=Array("simple","flag","unicode8","diversity","unicode9"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
    </script>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var userSettings = {"url":"\/wordpress\/","uid":"1","time":"1676101465","secure":""};/* ]]> */
    </script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=jquery-core,jquery-migrate,utils&amp;ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.industry.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.mentor.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/kboard/pages/cosmosfarm-apis.js?ver=5.2'></script>

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
<div class="setting_mentor_wrap">
    <p class="form_title">멘토관리</p>
    <div id="setting_mentor">
        <p class="form_subtitle">멘토 관리 Tab</p>
        </br></br>
        <form id="create_mentor_form">
            <input type="hidden" name="track" value="" />
            <div class="row">
                <span class="input-addon">멘토 이름</span>
                <input
                        type="text"
                        class="input-text input-addon-select"
                        name="video_title"
                        placeholder="멘토 이름을 입력하세요"
                        value=""
                />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="set_mentor" class="select-addon" name="set_mentor">
                    <option disabled selected value>수정할 멘토 이름 선택</option>
                    <option value="선택없음">선택없음</option>
                    <script>
                        var option = jQuery('<option>').val('아이엠애드리퍼블릭'+'_'+'강나경');
                        option.text('아이엠애드리퍼블릭'+' '+'강나경');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('KBS'+'_'+'강자원');
                        option.text('KBS'+' '+'강자원');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('아주대 DFlab'+'_'+'강정화');
                        option.text('아주대 DFlab'+' '+'강정화');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('프리랜서'+'_'+'강창혁');
                        option.text('프리랜서'+' '+'강창혁');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('애플파이 스튜디오'+'_'+'강호경');
                        option.text('애플파이 스튜디오'+' '+'강호경');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('프리랜서'+'_'+'고민진');
                        option.text('프리랜서'+' '+'고민진');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('nhn'+'_'+'고서현');
                        option.text('nhn'+' '+'고서현');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('NHN D&T'+'_'+'고서현');
                        option.text('NHN D&T'+' '+'고서현');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('CJ오쇼핀'+'_'+'곽일선');
                        option.text('CJ오쇼핀'+' '+'곽일선');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('아주대 DFlab'+'_'+'김대환');
                        option.text('아주대 DFlab'+' '+'김대환');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('넥슨GT'+'_'+'김대희');
                        option.text('넥슨GT'+' '+'김대희');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('한국미디어네트워크 '+'_'+'김동찬');
                        option.text('한국미디어네트워크 '+' '+'김동찬');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('멜리펀트'+'_'+'김성규');
                        option.text('멜리펀트'+' '+'김성규');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('씨웨이브소프트'+'_'+'김순현');
                        option.text('씨웨이브소프트'+' '+'김순현');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('한국방송공사'+'_'+'김승용');
                        option.text('한국방송공사'+' '+'김승용');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('DFlab'+'_'+'김예람');
                        option.text('DFlab'+' '+'김예람');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('아주대 DFlab'+'_'+'김주찬');
                        option.text('아주대 DFlab'+' '+'김주찬');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('프리랜서'+'_'+'김준한');
                        option.text('프리랜서'+' '+'김준한');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('앨리스원더랩'+'_'+'김지환');
                        option.text('앨리스원더랩'+' '+'김지환');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('jtbc뉴스디자인팀'+'_'+'김충현');
                        option.text('jtbc뉴스디자인팀'+' '+'김충현');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('ogo3D'+'_'+'김태희');
                        option.text('ogo3D'+' '+'김태희');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('이성용'+'_'+'농협은행');
                        option.text('이성용'+' '+'농협은행');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('프리랜서'+'_'+'문대형');
                        option.text('프리랜서'+' '+'문대형');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('라인플러스'+'_'+'박건한');
                        option.text('라인플러스'+' '+'박건한');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('한국방송공사 '+'_'+'변예린');
                        option.text('한국방송공사 '+' '+'변예린');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('스튜디오 이온'+'_'+'손광원');
                        option.text('스튜디오 이온'+' '+'손광원');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('SK플래닛'+'_'+'송진석');
                        option.text('SK플래닛'+' '+'송진석');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('엔씨소프트'+'_'+'심나래');
                        option.text('엔씨소프트'+' '+'심나래');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('유소모바일'+'_'+'오연주');
                        option.text('유소모바일'+' '+'오연주');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('전북디지털산업진흥원 문화콘텐츠아카데미'+'_'+'오진욱');
                        option.text('전북디지털산업진흥원 문화콘텐츠아카데미'+' '+'오진욱');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('CookApps'+'_'+'유지명');
                        option.text('CookApps'+' '+'유지명');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('아주대 대학원 컴퓨터공학과'+'_'+'윤여훈');
                        option.text('아주대 대학원 컴퓨터공학과'+' '+'윤여훈');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('프리랜서'+'_'+'이대현');
                        option.text('프리랜서'+' '+'이대현');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('앨리스원더랩'+'_'+'이사무엘');
                        option.text('앨리스원더랩'+' '+'이사무엘');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('자라나는씨앗'+'_'+'이수호');
                        option.text('자라나는씨앗'+' '+'이수호');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('Redrover'+'_'+'이승기');
                        option.text('Redrover'+' '+'이승기');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('scanlineVFX'+'_'+'이시내');
                        option.text('scanlineVFX'+' '+'이시내');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('엔씨소프트'+'_'+'이재윤');
                        option.text('엔씨소프트'+' '+'이재윤');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('스마일게이트'+'_'+'이정연');
                        option.text('스마일게이트'+' '+'이정연');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('삼성전자'+'_'+'이종식');
                        option.text('삼성전자'+' '+'이종식');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('아주대 IElab'+'_'+'이진우');
                        option.text('아주대 IElab'+' '+'이진우');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('프리랜서'+'_'+'이학래');
                        option.text('프리랜서'+' '+'이학래');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('티맥스 소프트'+'_'+'이현주');
                        option.text('티맥스 소프트'+' '+'이현주');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('우주'+'_'+'이혜명');
                        option.text('우주'+' '+'이혜명');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('선데이포크'+'_'+'장인규');
                        option.text('선데이포크'+' '+'장인규');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('LG전자'+'_'+'전봉정');
                        option.text('LG전자'+' '+'전봉정');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('인디고 엔터테인먼트'+'_'+'정운설');
                        option.text('인디고 엔터테인먼트'+' '+'정운설');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('17정글'+'_'+'정일진');
                        option.text('17정글'+' '+'정일진');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('keb하나은행'+'_'+'제민규');
                        option.text('keb하나은행'+' '+'제민규');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('아주대'+'_'+'조원민');
                        option.text('아주대'+' '+'조원민');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('아주대 IElab'+'_'+'조진형');
                        option.text('아주대 IElab'+' '+'조진형');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('한주이앤엠'+'_'+'추진혁');
                        option.text('한주이앤엠'+' '+'추진혁');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('엔씨소프트'+'_'+'하정현');
                        option.text('엔씨소프트'+' '+'하정현');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('키움증권it부문'+'_'+'한상빈');
                        option.text('키움증권it부문'+' '+'한상빈');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('선데이토즈'+'_'+'허건');
                        option.text('선데이토즈'+' '+'허건');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('Redrover'+'_'+'허홍석');
                        option.text('Redrover'+' '+'허홍석');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('엔씨소프트'+'_'+'현명아');
                        option.text('엔씨소프트'+' '+'현명아');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('아주대 IElab'+'_'+'홍이경');
                        option.text('아주대 IElab'+' '+'홍이경');
                        jQuery('#set_mentor').append(option);
                        var option = jQuery('<option>').val('리데 크리에이티브 '+'_'+'황현영');
                        option.text('리데 크리에이티브 '+' '+'황현영');
                        Query('#set_mentor').append(option);
                    </script>
                </select>
                <br><br>

                <input type="hidden" name="user-id" id="user-id" value="" />
            </div>

            <br />

            <div class="row">
                <span class="input-addon">소속 기업 이름 </span>
                <input
                        type="text"
                        class="input-text"
                        name="industry_name"
                        placeholder="멘토가 근무하는 기업 이름을 입력하세요"
                        value=""
                />
            </div>

            <br />

            <div class="row">
                <span class="input-addon">이메일 주소</span>
                <input
                        type="text"
                        class="input-text"
                        name="email"
                        placeholder="멘토의 이메일을 입력하세요. 질문 발송에 이용됩니다."
                        value=""
                >
            </div>

            </br>

            <div class="row">
                <span class="input-addon">멘토가 해당하는 AREA</span>
                <select id="area" class="select-addon" name="area">
                    <option disabled selected value>AREA 선택</option>
                    <option  value="game">GAME</option>
                    <option  value="dd">DIGITAL DESIGN</option>
                    <option  value="df">DIGITAL FILM</option>
                    <option  value="it">IT PROGRAMMING</option>
                    <option  value="ct">CONVERGENCE TECHNOLOGY</option>
                </select>
            </div>
            </br></br>
            <button type='button' class='create_mentor_button'>멘토 추가하기</button>
        </form>
    </div>
</div>

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
<script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=hoverIntent,common,admin-bar,svg-painter,heartbeat,wp-auth-check&amp;ver=4.6'></script>
<script type="text/javascript">if(typeof wpOnload=='function')wpOnload();</script>
</body>
</html>