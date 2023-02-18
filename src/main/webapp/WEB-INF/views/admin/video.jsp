<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webapp/resources/css/admin/video.css">
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
            pagenow = 'mil-editor_page_mileditor_industry_insight_media_contents',
            typenow = '',
            adminpage = 'mil-editor_page_mileditor_industry_insight_media_contents',
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
        var userSettings = {"url":"\/wordpress\/","uid":"1","time":"1676100032","secure":""};/* ]]> */
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
<div class="setting_mentor_video_wrap">
    <p class="form_title">전문가영상관리</p>
    <div id="setting_mentor_video">
        <p class="form_subtitle">전문가 영상 관리 Tab</p>
        </br></br>
        <form id="create_mentor_video_form">
            <input type="hidden" name="track" value="" />
            <div class="row">
                <span class="input-addon">영상 제목</span>
                <input
                        type="text"
                        class="input-text input-addon-select"
                        name="video_title"
                        placeholder="ex) 전문가1. 게임프로그래머"
                        value=""
                />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="set_video" class="select-addon" name="set_video">
                    <option disabled selected value>수정할 영상 선택</option>
                    <option value="선택없음">선택없음</option>
                    <script>
                        var option = jQuery("<option>").val("2018홈커밍데이");
                        option.text("2018홈커밍데이");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("강호경(프로젝트매니저)");
                        option.text("강호경(프로젝트매니저)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("고성진(게임앤인터랙티브)");
                        option.text("고성진(게임앤인터랙티브)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("김경주(교육컨텐츠개발자)");
                        option.text("김경주(교육컨텐츠개발자)");
                        jQuery("#set_video").append(option);
                        var option =
                            jQuery("<option>").val("김순현(그래픽스 엔지니어)");
                        option.text("김순현(그래픽스 엔지니어)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("김영민(영화제작프로듀서)");
                        option.text("김영민(영화제작프로듀서)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("김재복 (솔루션 개발)");
                        option.text("김재복 (솔루션 개발)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("김지환 대표(경영/창업)");
                        option.text("김지환 대표(경영/창업)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("문석호(뮤직비디오 감독)");
                        option.text("문석호(뮤직비디오 감독)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("박근우(영상프로듀서)");
                        option.text("박근우(영상프로듀서)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("박상수(웹사이트디자인)");
                        option.text("박상수(웹사이트디자인)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("백종일(데이터분석마케터)");
                        option.text("백종일(데이터분석마케터)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("신동혁(사운드디렉터)");
                        option.text("신동혁(사운드디렉터)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("심재민(게임프로그래머)");
                        option.text("심재민(게임프로그래머)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("안영훈(서버 관리)");
                        option.text("안영훈(서버 관리)");
                        jQuery("#set_video").append(option);
                        var option =
                            jQuery("<option>").val("윤기태(머신러닝 엔지니어)");
                        option.text("윤기태(머신러닝 엔지니어)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("이광호(게임데이터분석가)");
                        option.text("이광호(게임데이터분석가)");
                        jQuery("#set_video").append(option);
                        var option =
                            jQuery("<option>").val("이동호(디랩코드 교육연구원)");
                        option.text("이동호(디랩코드 교육연구원)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("이사무엘(ui디자인)");
                        option.text("이사무엘(ui디자인)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val(
                            "이재준(PIXAR FX Technical Director)"
                        );
                        option.text("이재준(PIXAR FX Technical Director)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("이정영(콘텐츠 디자인)");
                        option.text("이정영(콘텐츠 디자인)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("이주석(비주얼 컴퓨팅)");
                        option.text("이주석(비주얼 컴퓨팅)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("임홍준(미디어 데이터)");
                        option.text("임홍준(미디어 데이터)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("장석현(UX디자이너)");
                        option.text("장석현(UX디자이너)");
                        jQuery("#set_video").append(option);
                        var option =
                            jQuery("<option>").val("장인규(클라이언트프로그래밍)");
                        option.text("장인규(클라이언트프로그래밍)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("정다운(그래픽디자이너)");
                        option.text("정다운(그래픽디자이너)");
                        jQuery("#set_video").append(option);
                        var option =
                            jQuery("<option>").val("정운설(VR 프로젝트 매니저)");
                        option.text("정운설(VR 프로젝트 매니저)");
                        jQuery("#set_video").append(option);
                        var option =
                            jQuery("<option>").val("정일진 대표(영상기획제작)");
                        option.text("정일진 대표(영상기획제작)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("제민규(빅데이터분석가)");
                        option.text("제민규(빅데이터분석가)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("하정현(게임 프로그래머)");
                        option.text("하정현(게임 프로그래머)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("한상빈(it프로그래밍)");
                        option.text("한상빈(it프로그래밍)");
                        jQuery("#set_video").append(option);
                        var option = jQuery("<option>").val("허홍석(애니메이터)");
                        option.text("허홍석(애니메이터)");
                        jQuery("#set_video").append(option);
                    </script>
                </select>
            </div>

            <br />

            <div class="row">
                <span class="input-addon">영상 링크 ID </span>
                <input
                        type="text"
                        class="input-text"
                        name="video_link"
                        placeholder="ex) rCeM57e2BfU"
                        value=""
                />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 0.7rem">※ https://youtu.be/<span class="highlight" style="color: #3462dc">rCeM57e2BfU</span></span>
                <input type="hidden" name="thumbnail_url" value="" />
            </div>
        </form>

        <div class="row">
            <span class="input-addon">영상 썸네일 이미지 추가</span>
            <div class="column">
                <form
                        id="image_upload_form"
                        enctype="multipart/form-data"
                        method="post">
                    <br />
                    <input
                            id="input-file-video"
                            class="input-file"
                            type="file"
                            name="upload"
                            value="업로드된 파일: 없음"
                    />

                    <script>
                        jQuery("#input-file-video").on("click", function () {
                            jQuery("#input-file-video").change(function () {
                                jQuery("#image_upload_form input[name=upload_check]").val(
                                    true
                                );
                                var filename =
                                    jQuery("#input-file-video")[0].files[0]["name"];
                                var file_url =
                                    "http://media-jobs.ajou.ac.kr/wordpress/wp-content/uploads/2023/02/" +
                                    filename;
                                jQuery(
                                    "#create_mentor_video_form input[name=thumbnail_url]"
                                ).val(file_url);
                            });
                        });
                    </script>
                    <!-- <input
                       id="submit-button-mentor-video"
                       class="input-file-submit-button"
                       type="submit"
                       value="업로드된 파일: 없음"
                       class="ii_btn"
                    /> -->
                    <!-- &nbsp;&nbsp;업로드된 파일 : <span id="file-name-video"> 없음. </span> -->

                    <input type="hidden" name="upload_check" value="" />
                    <br />
                </form>
                <span class="description">업로드할 사진파일(png)을 선택하세요. </span>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="highlight" style="font-size: 0.7rem; color: #3462dc">※영문 파일명 사용</span>
        </div>
        </br>
        <div class="row">
            <form id="job_select_form">
                <span class="input-addon">직무 선택</span><br />
                <div id="job_name" name="job_name">
                    <select id="job1" class="select-addon">
                        <option disabled selected value>대분류 선택</option>
                        <option value="선택없음">선택없음</option>
                    </select>
                    <select id="job2" class="select-addon">
                        <option disabled selected value>트랙 선택</option>
                        <option value="선택없음">선택없음</option>
                        <option value="GI">게임&인터렉티브 콘텐츠</option>
                        <option value="CD">콘텐츠 디자인</option>
                        <option value="DE">디지털 엔터테인먼트</option>
                        <option value="VC">비주얼 컴퓨팅</option>
                        <option value="MD">미디어 데이터</option>
                    </select>
                    <select id="job3" class="select-addon">
                        <option disabled selected value>직무(능력단위) 선택</option>
                        <option value="선택없음">선택없음</option>
                        <option value="게임기획자">게임기획자</option>
                        <option value="게임프로그래머">게임프로그래머</option>
                        <option value="게임그래픽디자이너">게임그래픽디자이너</option>
                        <option value="게임사운드디자이너">게임사운드디자이너</option>
                        <option value="앱개발자">앱개발자</option>
                        <option value="웹사이트디자인">웹사이트디자인</option>
                        <option value="휴먼인터랙션디자인">휴먼인터랙션디자인</option>
                        <option value="사용자인터페이스디자인">사용자인터페이스디자인</option>
                        <option value="디지털간행물디자인">디지털간행물디자인</option>
                        <option value="영상연출가">영상연출가</option>
                        <option value="제작PD">제작PD</option>
                        <option value="브랜드디자이너(OAP)">브랜드디자이너(OAP)</option>
                        <option value="CG아티스트">CG아티스트</option>
                        <option value="모션그래픽디자이너">모션그래픽디자이너</option>
                        <option value="사운드슈퍼바이저">사운드슈퍼바이저</option>
                        <option value="미디어 대학원">미디어 대학원</option>
                        <option value="테크니컬 디렉터">테크니컬 디렉터</option>
                        <option value="테크니컬 아티스트">테크니컬 아티스트</option>
                        <option value="그래픽 관련 소프트웨어 개발">그래픽 관련 소프트웨어 개발</option>
                        <option value="데이터사이언스 대학원">데이터사이언스 대학원</option>
                    </select>
                    <!-- <script>
                       jQuery(document).ready(function () {
                          var job_category_name = jQuery("#text-12")
                             .find(".widget_title")
                             .text();
                          var job_category_btn =
                             jQuery("<button>").text(job_category_name);
                          job_category_btn.addClass("job_category_btn");
                          var job_category_div = jQuery("<div>").append(job_category_btn);
                          jQuery("#job_name").append(job_category_div);

                          var job_page_links = jQuery("#text-12").find("a");
                          for (var i = 0; i < job_page_links.length; i++) {
                             var job_name = jQuery(job_page_links[i]).text();
                             var wrap = jQuery("<div>").addClass("wrap-checkbox");
                             var label = jQuery("<label>").attr(
                                "for",
                                "checkbox-" + job_name
                             );
                             var input = jQuery("<input>").attr({
                                type: "checkbox",
                                name: "job_name[]",
                                id: "checkbox-" + job_name,
                                value: job_name,
                             });

                             jQuery(wrap).append(input);
                             jQuery(wrap).append(label);
                             jQuery(job_category_div).append(wrap);
                             label.html(job_name + " &nbsp;&nbsp;&nbsp;");
                             input.css("margin-top", "1px");
                             wrap.css({ "white-space": "nowrap", margin: "7px 3px" });
                          }
                          var job_category_name = jQuery("#nav_menu-41")
                             .find(".widget_title")
                             .text();
                          var job_category_btn =
                             jQuery("<button>").text(job_category_name);
                             job_category_btn.addClass("job_category_btn");
                          var job_category_div = jQuery("<div>").append(job_category_btn);
                          jQuery("#job_name").append(job_category_div);

                          var job_page_links = jQuery("#nav_menu-41").find("a");
                          for (var i = 0; i < job_page_links.length; i++) {
                             var job_name = jQuery(job_page_links[i]).text();
                             var wrap = jQuery("<div>").addClass("wrap-checkbox");
                             var label = jQuery("<label>").attr(
                                "for",
                                "checkbox-" + job_name
                             );
                             var input = jQuery("<input>").attr({
                                type: "checkbox",
                                name: "job_name[]",
                                id: "checkbox-" + job_name,
                                value: job_name,
                             });

                             jQuery(wrap).append(input);
                             jQuery(wrap).append(label);
                             jQuery(job_category_div).append(wrap);
                             label.html(job_name + " &nbsp;&nbsp;&nbsp;");
                             input.css("margin-top", "1px");
                             wrap.css({ "white-space": "nowrap", margin: "7px 3px" });
                          }
                          var job_category_name = jQuery("#text-14")
                             .find(".widget_title")
                             .text();
                          var job_category_btn =
                             jQuery("<button>").text(job_category_name);
                             job_category_btn.addClass("job_category_btn");
                          var job_category_div = jQuery("<div>").append(job_category_btn);
                          jQuery("#job_name").append(job_category_div);

                          var job_page_links = jQuery("#text-14").find("a");
                          for (var i = 0; i < job_page_links.length; i++) {
                             var job_name = jQuery(job_page_links[i]).text();
                             var wrap = jQuery("<div>").addClass("wrap-checkbox");
                             var label = jQuery("<label>").attr(
                                "for",
                                "checkbox-" + job_name
                             );
                             var input = jQuery("<input>").attr({
                                type: "checkbox",
                                name: "job_name[]",
                                id: "checkbox-" + job_name,
                                value: job_name,
                             });

                             jQuery(wrap).append(input);
                             jQuery(wrap).append(label);
                             jQuery(job_category_div).append(wrap);
                             label.html(job_name + " &nbsp;&nbsp;&nbsp;");
                             input.css("margin-top", "1px");
                             wrap.css({ "white-space": "nowrap", margin: "7px 3px" });
                          }

                          var boxes = jQuery(".job_category_btn").parent().find("input");
                          boxes.each(function (index, elem) {
                             var div = jQuery(elem).parent();
                             var job_category_btn = div.siblings("button");
                             if (
                                jQuery(elem).attr("checked") &&
                                !job_category_btn.hasClass("have-some-jobs")
                             )
                             job_category_btn.addClass("have-some-jobs");
                          });

                          jQuery(".job_category_btn").on(
                             "mouseenter mouseleave click",
                             function (e) {
                                if (e.type == "mouseenter")
                                   jQuery(this).css("font-weight", "bold");
                                else if (e.type == "mouseleave")
                                   jQuery(this).css("font-weight", "normal");
                                else if (e.type == "click") {
                                   e.preventDefault();
                                   jQuery(this)
                                      .parent()
                                      .find(".wrap-checkbox")
                                      .toggleClass("wrap-checkbox-active");
                                }
                             }
                          );
                       });
                    </script> -->
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </form>
        </div>
        </br></br>
        <button type="button" class="ii_btn create_mentor_video_button">
            전문가 영상 추가하기
        </button>
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
    <a href="subject.html"
    ><div class="menu2"><p>과목편집</p></div></a
    >
    <a href="video.html"
    ><div class="menu3"><p>전문가영상관리</p></div></a
    >
    <a href="mentor.html"
    ><div class="menu4"><p>멘토관리</p></div></a
    >
    <a href="mail.html"
    ><div class="menu5"><p>전체메일발송</p></div></a
    >
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