<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>

<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<title>Insert title here</title>

<style>




.amam_main_cont{
	display: flex;
	flex-direction: row;
	justify-content: center;
}


blockquote, q {

	quotes: none;

}



blockquote : before, blockquote : after, q : before, q : after {

	content: '';

	content: none;

}



table {

	border-collapse: collapse;

	border-spacing: 0;

}

/*css 초기화*/


      #columns{
        column-width:250px;
        column-gap: 15px;
        padding-top:20px;
        padding-left : 20px;
      }
      #columns figure{
      	width : 100%;
        display: inline-block;
        border:1px solid rgba(0,0,0,0.2);
        margin:0px;
        margin-bottom : 15px;
        box-shadow: 2px 2px 5px rgba(0,0,0,0.5);;
      }
      .cil_table_section{
      	width:1250px;
      }
      /*table css*/
      table{
      	border-collapse : collapse;
		border-spacing : 0;
		width : 100%;
      }
      th{
      	width : 100%;
      }
      .th_gi{
      	background-color:#4da345;
		height : 20px;
		width : 100%;
      }
      .th_cd{
      	background-color:#F8AD40;
		height : 20px;
		width : 100%;
      }
      .th_de{
      	background-color:#C4ABD6;
		height : 20px;
      }
      .th_md{
      	background-color:#F2777C;
		height : 20px;
      }
      td{
      	padding : 0px 8px;
      }
	  td p{
	  	margin : 3px 0px;
	  	color : #585858;
	  	line-height : 30px;
	  	font-size:13px;
	  	width : 100%;
	  }
	  td h4{
	  	margin : 10px 0px;
	  }
      /*more-button*/
      .more_but{

      	margin-top : 50px;
      	margin-bottom : 10px;
      	height:50px;
      	width:100%;
      	background-color:#C7C7C7;

      	border:none;
      }
    </style>

</head>

<body>

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
            <div id="columns">
		      <figure>
		        <table>
		        	<tr><th class="th_gi"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>채널톡 소프트웨어 엔지니어, 조이코퍼레이션</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>프로그래밍에 대한 이해, 네트워크에 대한 기본 지식, 디자이너와의 커뮤니케이션 능력, 기술문서를 읽고 쓰는 능력</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure>
		 
		      <figure>
		        <table>
		        	<tr><th class="th_cd"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>NHN ACE / 웹서비스 개발 및 유지보수 / 사원</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>웹페이지 개발, 자바를 이용한 개발</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure>
		 
		      <figure>
		        <table>
		        	<tr><th class="th_gi"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>솔리데오시스템즈 개발자 팀원</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>없어요. 학교에서 알려준 수준까지만 알고 실전에서 배운다고 생각하세요</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="th_gi"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>한국전력공사 ICT직무</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>아이티.통신.보안.신기술에 대한 관심이 필요합니다. 아이티/신기술은 우리과에서도 습득할 수 있지만 통신이나 보안은 부족했던 것 같아서 통신은 따로 강의를 듣거나 보안은 웹보안 정도로 공부를 해놓으면 좋을 것 같습니다.</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="th_de"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>Framesotre, Senior Animator</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>일단 움직임을 관찰하는 시각이 가장 중요하다고 생각합니다. 그 자체에 흥미를 가지고 있어야 하기도 하구요. 학문적인 부분은 아무래도 애니메이션 기본이론과 툴에 대한 이해와 숙달 입니다.</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="th_gi"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>네이버 / Partnership and business development manager</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>커뮤니케이션 스킬, 프로젝트 관리 경험, IT 서비스 개발 배경지식, 기타 법무/세무/회계 담당자와 커뮤니케이션 할 수 있는 기본 지식이 필요합니다.</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="th_gi"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>삼성전자 DS부문 S.LSI사업부 자동화 소프트웨어 개발 및 IT 인프라 구축, 사원</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>미디어학과/소프트웨어학과에서 배우는 것들이랑, 영어회화요</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="th_gi"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>(주)GIANTSTEP의 Pipeline Technical Director 직무입니다.</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>기본적으로 아트 역량과 프로그래밍 역량이 모두 갖추어져 있어야합니다. 아트의 경우, pre-production, production, post-production에 대한 전체 과정에 대해 실제 경험과 이해를 갖추고 있어야 하며, 프로그래밍 역량에서는, python, pyQT, 데이터베이스, linux등의 역량이 있어야합니다.</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="th_md"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>gsshop AI Center / 데이터 사이언티스트, 머신 러닝 엔지니어 / e-commerce 추천시스템 개발</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>기본적인 개발 센스나 수학적 역량이 동시에 갖추어져 있으면 좋습니다. 둘 중 하나라도 소홀히 하면 일할때 힘듭니다. 물론 전 둘다 없었습니다.</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="th_gi"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>삼성전자 개발자</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>알고리즘, 설계능력</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="gm"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>채널톡 소프트웨어 엔지니어, 조이코퍼레이션</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>프로그래밍에 대한 이해, 네트워크에 대한 기본 지식, 디자이너와의 커뮤니케이션 능력, 기술문서를 읽고 쓰는 능력</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure><figure>
		        <table>
		        	<tr><th class="gm"></th></tr>
		        	<tr><td class="title"><h4>회사명/직무/직책</h4></td></tr>
		        	<tr><td class="contents"><p>채널톡 소프트웨어 엔지니어, 조이코퍼레이션</p></td></tr>
		        	<tr><td class="title"><h4>필요 역량</h4></td></tr>
		        	<tr><td class="contents"><p>프로그래밍에 대한 이해, 네트워크에 대한 기본 지식, 디자이너와의 커뮤니케이션 능력, 기술문서를 읽고 쓰는 능력</p></td></tr>
		        	<tr><td><button class="more_but" type="submit">더보기</button></td></tr>
		        </table>
		      </figure>  
		    </div>
        </div>
    </section>
</body>
</html>