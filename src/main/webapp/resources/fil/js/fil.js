var gi_flag=1;
var cd_flag=1;
var de_flag=1;
var vc_flag=1;
var md_flag=1;

var gij_flag = 1;
var cdj_flag = 1;
var dej_flag = 1;
var vij_flag = 1;



function reset_color(){
    var ch_td;

	var subjects = ['cs_tr3td3',
					'cs_tr3td5',
					'cs_tr4td3',
					'cs_tr5td7',
					'cs_tr5td8',
					'cs_tr6td6',
					'cs_tr6td7',
					'cs_tr7td4',
					'cs_tr7td6',
					'cs_tr7td7',
					'cs_tr8td4',
					'cs_tr8td5',
					'cs_tr8td6',
					'cs_tr8td7',
					'cs_tr9td3',
					'cs_tr9td4',
					'cs_tr9td5',
					'cs_tr9td6',
					'cs_tr10td2',
					'cs_tr10td3',
					'cs_tr10td4',
					'cs_tr10td5',
					'cs_tr11td2',
					'cs_tr11td3',
					'cs_tr11td4',
					'cs_tr11td5',
					'cs_tr12td2',
					'cs_tr12td3',
					'cs_tr12td5',
	];
    for(i=2;i<=13;i++)
    {
        for(j=1;j<=8;j++)
        {
            str = "tr"+i+"td"+j;
		    if(subjects.includes("cs_"+str)) {
	            ch_td = document.getElementById(str);

				if(str=="tr4td5"||str=="tr4td6"||str=="tr4td7"||
				str=="tr5td3"||str=="tr5td4"||str=="tr5td5"||
				str=="tr6td1"||str=="tr6td2"||str=="tr6td3"||
				str=="tr6td4"||str=="tr6td5"||str=="tr7td1"||
				str=="tr7td2"||str=="tr7td3"||str=="tr7td5"||
				str=="tr8td1"||str=="tr8td2"||str=="tr8td3"||
				str=="tr9td1"||str=="tr9td2"){
					ch_td.style.background = "#d0d0d0";
				}else{
					ch_td.style.background = "#ffffff";
				}				
			}
        }
    }
	
	for(i=0; i<subjects.length; i++)
    {
		//alert(subjects[i]);
		var cs = document.querySelector('#'.concat(subjects[i]));
		//var cs = document.querySelector('#cs_tr8td8');
		
		if (cs.classList.contains('show')) {
   	 		cs.classList.remove('show');
		}
    }
}
function giClick(){
    var ch_td;

    reset_color();

	var c_mark = document.querySelector('.c_mark');
	var s_mark = document.querySelector('.s_mark');
	c_mark.style.background = "#EA8953";
	s_mark.style.background = "#f3ba9b";

    var gi_core = [ 'tr7td4', 'tr7td7', 'tr8td6', 'tr9td4',
                 'tr10td2', 'tr10td4', 'tr10td5', 'tr11td2',];
                 
    var gi_support = [ 'tr4td3', 'tr5td8',
                 'tr6td6', 'tr8td4', 'tr3td5',
                 'tr8td5', 'tr8td7', 'tr11td3',
                 'tr11td4', 'tr12td3'];
    

    //if(gi_flag>0)
    //{
        for(i=0;i<gi_core.length;i++)
        {
            ch_td = document.getElementById(gi_core[i]);
            ch_td.style.background = "#EA8953";
			var cs = document.querySelector('#cs_'.concat(gi_core[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(gi_core[i]));
			cs.classList.toggle('show');
			cs.style.background = "#EA8953";
			cs_text.innerText="C";
        }

        for(i=0;i<gi_support.length;i++)
        {
            ch_td = document.getElementById(gi_support[i]);
            ch_td.style.background = "#f3ba9b";
			var cs = document.querySelector('#cs_'.concat(gi_support[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(gi_support[i]));
			cs.classList.toggle('show');
			cs.style.background = "#f3ba9b";
			cs_text.innerText="S";
        }
    if(gi_flag<0)
    {
        reset_color();
    }
    gi_flag*=-1;

    cd_flag=1;
    de_flag=1;
	gij_flag=1;
	dej_flag=1;
	cdj_flag=1;
	vij_flag=1;
}

function cdClick(){
    
    reset_color();

	var c_mark = document.querySelector('.c_mark');
	var s_mark = document.querySelector('.s_mark');
	c_mark.style.background = "#00C7FF";
	s_mark.style.background = "#9eeaff";

    var cd_core = ['tr3td3','tr5td7', 'tr5td8',
    'tr9td6', 'tr9td3', 'tr10td3', 'tr6td7', 'tr11td5','tr9td5'];
    var cd_support = ['tr7td6', 'tr12td2', 'tr10td4', 'tr11td4',
    'tr3td5', 'tr6td6'];
    var ch_td;

    if(cd_flag>0)
    {
        for(i=0;i<cd_core.length;i++)
        {
            ch_td = document.getElementById(cd_core[i]);
            ch_td.style.background = "#00C7FF";
			var cs = document.querySelector('#cs_'.concat(cd_core[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(cd_core[i]));
			cs.classList.toggle('show');
			cs.style.background = "#00C7FF";
			cs_text.innerText="C";
        }

        for(i=0;i<cd_support.length;i++)
        {
            ch_td = document.getElementById(cd_support[i]);
            ch_td.style.background = "#9eeaff";
			var cs = document.querySelector('#cs_'.concat(cd_support[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(cd_support[i]));
			cs.classList.toggle('show');
			cs.style.background = "#9eeaff";
			cs_text.innerText="S";
        }
    }
    if(cd_flag<0)
    {
        reset_color();
    }
    cd_flag*=-1;

    gi_flag=1;
    de_flag=1;
	gij_flag=1;
	dej_flag=1;
	cdj_flag=1;
	vij_flag=1;
}
/*
function deClick(){
    reset_color();

	var c_mark = document.querySelector('.c_mark');
	var s_mark = document.querySelector('.s_mark');
	c_mark.style.background = "#21A6E6";
	s_mark.style.background = "#B3E8FF";

    var core = [ 'tr13td5','tr8td6', 'tr9td6','tr10td2','tr6td3','tr7td3','tr6td7','tr5td7','tr2td5','tr6td8'
				,'tr9td4', 'tr10td4', 'tr11td4', 'tr3td1', 'tr3td3','tr4td6'];
    var support = [ 'tr11td1','tr2td1','tr4td1', 'tr7td7','tr8td3','tr7td4','tr9td5'];
    var ch_td;

    if(de_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#21A6E6";
			var cs = document.querySelector('#cs_'.concat(core[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
			cs.classList.toggle('show');
			cs.style.background = "#21A6E6";
			cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#B3E8FF";
			var cs = document.querySelector('#cs_'.concat(support[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
			cs.classList.toggle('show');
			cs.style.background = "#B3E8FF";
			cs_text.innerText="S";
        }
    }
    if(de_flag<0)
    {
        reset_color();
    }
    
	de_flag=1;
    gi_flag=1;
    cd_flag=1;
	gij_flag=1;
	dej_flag=1;
	cdj_flag=1;
	vij_flag=1;
}
*/

// 영업, 대체투자
function giJobsClick(){
    reset_color();

	var c_mark = document.querySelector('.c_mark');
	var s_mark = document.querySelector('.s_mark');
	c_mark.style.background = "#AA87E6";
	s_mark.style.background = "#DFCDFE";
	
    var core = ['tr11td3', 'tr7td4', 'tr8td4', 'tr3td5', 'tr6td6', 'tr8td6',
    'tr7td7', 'tr8td7', ];
    var support = ['tr10td2', 'tr12td2', 'tr4td3', 'tr12td3', 'tr9td4', 'tr10td4',
    'tr11td4', 'tr8td5', 'tr10td5'];
    var ch_td;

	if(gij_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#AA87E6";
			var cs = document.querySelector('#cs_'.concat(core[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
			cs.classList.toggle('show');
			cs.style.background = "#AA87E6";
			cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#DFCDFE";
			var cs = document.querySelector('#cs_'.concat(support[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
			cs.classList.toggle('show');
			cs.style.background = "#DFCDFE";
			cs_text.innerText="S";
        }
    }
    if(gij_flag<0)
    {
        reset_color();
    }
    gij_flag*=-1;
	
	cd_flag=1;
    gi_flag=1;
    de_flag=1;
	dej_flag=1;
	cdj_flag=1;
	vij_flag=1;
}

// 운용, 애널리스트
function cdJobsClick(){
    reset_color();

	var c_mark = document.querySelector('.c_mark');
	var s_mark = document.querySelector('.s_mark');
	c_mark.style.background = "#E66E71";
	s_mark.style.background = "#FFCFD0";
	
    var core = ['tr10td2', 'tr11td2', 'tr7td4', 'tr8td4', 'tr9td4', 'tr10td4', 'tr8td5', 'tr12td5', 'tr7td6', 'tr7td7'];
    var support = ['tr12td2', 'tr10td3','tr10td5', 'tr8td6', 'tr9td6', 'tr5td7', 'tr6td7', 'tr8td7', 'tr5td8'];
    //var mandatory = ['tr5td3','tr4td5','tr8td2','tr6td4'];
    var ch_td;

    /*if(cdj_flag>0)
    {
        for(i=0;i<mandatory.length;i++)
        {
            ch_td = document.getElementById(mandatory[i]);
            ch_td.style.background = "#E66E71";
        }
    }*/
	if(cdj_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#E66E71";
			var cs = document.querySelector('#cs_'.concat(core[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
			cs.classList.toggle('show');
			cs.style.background = "#E66E71";
			cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#FFCFD0";
			var cs = document.querySelector('#cs_'.concat(support[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
			cs.classList.toggle('show');
			cs.style.background = "#FFCFD0";
			cs_text.innerText="S";
        }
    }
    if(cdj_flag<0)
    {
        reset_color();
    }
    cdj_flag*=-1;

	cd_flag=1;
    gi_flag=1;
    de_flag=1;
	gij_flag=1;
	dej_flag=1;
	vij_flag=1;
}

// 계리사 회계사 등
function deJobsClick(){
    reset_color();

	var c_mark = document.querySelector('.c_mark');
	var s_mark = document.querySelector('.s_mark');
	c_mark.style.background = "#E68739";
	s_mark.style.background = "#FFD2AC";

    var core = ['tr10td2', 'tr7td4', 'tr9td4', 'tr10td4', 'tr8td5', 'tr7td7'];
    var support = ['tr8td4', 'tr10td5', 'tr8td6'];
    var ch_td;

	if(dej_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#E68739";
			var cs = document.querySelector('#cs_'.concat(core[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
			cs.classList.toggle('show');
			cs.style.background = "#E68739";
			cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#FFD2AC";
			var cs = document.querySelector('#cs_'.concat(support[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
			cs.classList.toggle('show');
			cs.style.background = "#FFD2AC";
			cs_text.innerText="S";
        }
    }
    if(dej_flag<0)
    {
        reset_color();
    }
    dej_flag*=-1;
	
	cd_flag=1;
    gi_flag=1;
    de_flag=1;
	gij_flag=1;
	cdj_flag=1;
	vij_flag=1;
}



function viJobsClick(){
    reset_color();

	var c_mark = document.querySelector('.c_mark');
	var s_mark = document.querySelector('.s_mark');
	c_mark.style.background = "#71D3E6";
	s_mark.style.background = "#D9F9FF";
	
    var core = ['tr3td3', 'tr9td3', 'tr10td3', 'tr7td4', 'tr9td4',
    'tr10td4', 'tr8td5', 'tr10td5', 'tr12td5', 'tr7td6', 'tr9td6',
    'tr5td7', 'tr6td7'];
    var support = ['tr10td2', 'tr12td2', 'tr8td4', 'tr9td5', 'tr11td5', 'tr8td6',
    'tr7td7', 'tr8td7'];
    var ch_td;

	if(vij_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#71D3E6";
			var cs = document.querySelector('#cs_'.concat(core[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
			cs.classList.toggle('show');
			cs.style.background = "#71D3E6";
			cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#D9F9FF";
			var cs = document.querySelector('#cs_'.concat(support[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
			cs.classList.toggle('show');
			cs.style.background = "#D9F9FF";
			cs_text.innerText="S";
        }
    }
    if(vij_flag<0)
    {
        reset_color();
    }
    vij_flag*=-1;
	
	cd_flag=1;
    gi_flag=1;
    de_flag=1;
	gij_flag=1;
	dej_flag=1;
	cdj_flag=1;
}

/*
    area 클릭 이벤트
*/
const home = document.getElementById("title");
home.addEventListener("click", reset_color);

const gi = document.getElementById("gi_but");
gi.addEventListener("click", giClick);

const cd = document.getElementById("cd_but");
cd.addEventListener("click", cdClick);

const gi_jobs = document.getElementById("gi_jobs");
gi_jobs.addEventListener("click", giJobsClick);

const gi_jobs2 = document.getElementById("gi_jobs2");
gi_jobs2.addEventListener("click", giJobsClick);

const gi_jobs3 = document.getElementById("gi_jobs3");
gi_jobs3.addEventListener("click", giJobsClick);

const cd_jobs = document.getElementById("cd_jobs");
cd_jobs.addEventListener("click", cdJobsClick);

const cd_jobs2 = document.getElementById("cd_jobs2");
cd_jobs2.addEventListener("click", cdJobsClick);

const cd_jobs3 = document.getElementById("cd_jobs3");
cd_jobs3.addEventListener("click", cdJobsClick);

const cd_jobs4 = document.getElementById("cd_jobs4");
cd_jobs4.addEventListener("click", cdJobsClick);

const cd_jobs5 = document.getElementById("cd_jobs5");
cd_jobs5.addEventListener("click", cdJobsClick);

const de_jobs = document.getElementById("de_jobs");
de_jobs.addEventListener("click", deJobsClick);

const de_jobs2 = document.getElementById("de_jobs2");
de_jobs2.addEventListener("click", deJobsClick);

const de_jobs3 = document.getElementById("de_jobs3");
de_jobs3.addEventListener("click", deJobsClick);

const de_jobs4 = document.getElementById("de_jobs4");
de_jobs4.addEventListener("click", deJobsClick);

const vi_jobs = document.getElementById("vc_jobs");
vi_jobs.addEventListener("click", viJobsClick);

const vi_jobs2 = document.getElementById("vc_jobs2");
vi_jobs2.addEventListener("click", viJobsClick);

const body = document.querySelector('body');
const modal = document.querySelector('.modal');

const btnOpenPopup1 = document.querySelector('#tr3td3');
const btnOpenPopup2 = document.querySelector('#tr3td5');
const btnOpenPopup3 = document.querySelector('#tr4td3');
const btnOpenPopup4 = document.querySelector('#tr4td5');
const btnOpenPopup5 = document.querySelector('#tr4td6');
const btnOpenPopup6 = document.querySelector('#tr4td7');
const btnOpenPopup7 = document.querySelector('#tr5td3');
const btnOpenPopup8 = document.querySelector('#tr5td4');
const btnOpenPopup9 = document.querySelector('#tr5td5');
const btnOpenPopup10 = document.querySelector('#tr5td6');
const btnOpenPopup11 = document.querySelector('#tr5td7');
const btnOpenPopup12 = document.querySelector('#tr5td8');
const btnOpenPopup13 = document.querySelector('#tr6td1');
const btnOpenPopup14 = document.querySelector('#tr6td2');
const btnOpenPopup15 = document.querySelector('#tr6td3');
const btnOpenPopup16 = document.querySelector('#tr6td4');
const btnOpenPopup17 = document.querySelector('#tr6td5');
const btnOpenPopup18 = document.querySelector('#tr6td6');
const btnOpenPopup19 = document.querySelector('#tr6td7');
const btnOpenPopup20 = document.querySelector('#tr7td1');
const btnOpenPopup21 = document.querySelector('#tr7td2');
const btnOpenPopup22 = document.querySelector('#tr7td3');
const btnOpenPopup23 = document.querySelector('#tr7td4');
const btnOpenPopup24 = document.querySelector('#tr7td5');
const btnOpenPopup25 = document.querySelector('#tr7td6');
const btnOpenPopup26 = document.querySelector('#tr7td7');
const btnOpenPopup27 = document.querySelector('#tr8td1');
const btnOpenPopup28 = document.querySelector('#tr8td2');
const btnOpenPopup29 = document.querySelector('#tr8td3');
const btnOpenPopup30 = document.querySelector('#tr8td4');
const btnOpenPopup31 = document.querySelector('#tr8td5');
const btnOpenPopup32 = document.querySelector('#tr8td6');
const btnOpenPopup33 = document.querySelector('#tr8td7');
const btnOpenPopup34 = document.querySelector('#tr9td1');
const btnOpenPopup35 = document.querySelector('#tr9td2');
const btnOpenPopup36 = document.querySelector('#tr9td3');
const btnOpenPopup37 = document.querySelector('#tr9td4');
const btnOpenPopup38 = document.querySelector('#tr9td5');
const btnOpenPopup39 = document.querySelector('#tr9td6');
const btnOpenPopup40 = document.querySelector('#tr10td2');
const btnOpenPopup41 = document.querySelector('#tr10td3');
const btnOpenPopup42 = document.querySelector('#tr10td4');
const btnOpenPopup43 = document.querySelector('#tr10td5');
const btnOpenPopup44 = document.querySelector('#tr11td2');
const btnOpenPopup45 = document.querySelector('#tr11td3');
const btnOpenPopup46 = document.querySelector('#tr11td4');
const btnOpenPopup47 = document.querySelector('#tr11td5');
const btnOpenPopup48 = document.querySelector('#tr12td2');
const btnOpenPopup49 = document.querySelector('#tr12td3');
const btnOpenPopup50 = document.querySelector('#tr12td5');

function modalPopup(subject)
{
	var title = document.querySelector(".modal_title");
	var cont = document.querySelector(".modal_cont");
	var pre = document.querySelector(".modal_pre");
	var engYN = document.querySelector(".modal_engYN");
	var publicYN = document.querySelector(".modal_publicYN");

    if(subject == 1) //이산수학
   {
      title.innerText = "이산수학";
      cont.innerText = "기초 논리와 몇 가지 증명방법에 대해 살펴본 후, 관계, 순서 등 수학의 기본 개념과 의미에 대해 학습한다. \n\n이산구조를 다루는 기본적인 방법으로 생성함수, 포함배제의 원리 등에 대해 배우고, 그래프 이론에 등장하는 주요 개념과 문제 그리고 이를 해결하는 알고리즘에 대해 학습한다."
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : 수학과, 소프트웨어학과";
   }else if(subject == 2) //경력설계 현장프로젝트1
   {
      title.innerText = "경력설계 현장프로젝트1";
      cont.innerText = "경력설계 현장 프로젝트는 직무역량 강화로 인한 취업 경쟁력 제고에 목적이 있다.\n\n선정 기업 및 방문 회사에 대한 전반적인 이해를 돕고, 전공 관련 직무 선정, 지도 선배 지정 등의 과정을 거쳐 업무 프로세스를 체험한다.\n\n학교에서 배운 지식을 활용하여 지도 선배 지도하에 업무 수행 경험을 쌓으며, 프로젝트 전체 업무에 관한 내용 및 소감 정리의 체계적 단계로 취업역량을 함양한다."; 
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";   
   }else if(subject == 3) //조직행위론
   {
      title.innerText = "조직행위론";
      cont.innerText = "집단 및 조직에서의 인간의 행동과 조직 관리에 관한 기초 지식을 공부한다. 성격과 동기부여, 소집단역학, 커뮤니케이션, 의사결정, 리더십, 조직구조 설계 등 다양한 주제가 다루어진다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어)";
      publicYN.innerText = "공동개설 학과 : 경영학과";
   }else if(subject == 4) //EBP1
   {
      title.innerText = "EBP1";
      cont.innerText = "정보는 투자에 관한 의사결정에 필수적이다. 동 과정은 궁극적으로 Wall Street Journal, Financial Times, New York Times, Washington Post, Asian Wall-Street Journal, Bloomberg 등 주요 국제 뉴스 매체를 통해 전파 되는 경제 관련 뉴스를 신속하게 수집하고 분석하는 능력을 습득하는 것을 목적으로 한다.\n\n이를 위해 3학년 1학기 과정에서 국내 주요 일간지와 국내에서 발행되는 영문 매체의 경제 관련기사를 읽고 분석하는 습관과 능력을 키운다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";   
   }else if(subject == 5) //EBP2
   {
      title.innerText = "EBP2";
      cont.innerText = "동 과정은 2단계의 Early Bird Project 중에서 2단계에 해당된다. 2단계 과정에서는 국내에서 발행되는 영문 매체를 중심으로 진행하되, 저명 국제뉴스 매체의 비중을 점차적으로 증가시켜 영문 뉴스 분석 능력을 향상시키는 것을 목적으로 한다. 매주 또는 매달 팀별로 정보 분석 결과를 보고서로 제출한다. ";
      pre.innerText = "EBP1";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";
   }else if(subject == 6) //계산금융
   {
      title.innerText = "계산금융";
      cont.innerText = "본 수업에서는 기존에 학습했던 파생상품의 가격결정, 가치 측정, 위험 측정 및 관리, 헷징 시뮬레이션 등을 C++, Python 등 프로그래밍 언어를 이용하여 직접 수행해본다. \n\n 이를 위해 다양한 방법으로 파생상품 평가와 리스크 측정하는 원리를 배운다. 분석적 방법과 수치해석 방법에 대해 학습하고, Value at Risk와 Greeks, Option Pricing에 대해 학습한다.";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 7) //금융프로그래밍1
   {
      title.innerText = "금융프로그래밍1";
      cont.innerText = "금융 관련 소프트웨어를 개발하기 위해 필요한 전반적인 개변과 원리를 소개한다. 운영체제, 자료구조, 프로그래밍 언어, 이산수학 등을 포함한 기초 내용들을 폭넓게 다룰 것이다. \n\n프로그래밍 언어로는 금융 분야에서 최근에 많이 활용되고 있는 파이썬을 기본으로 학습하고, 데이터 분석에 필요한 다양한 프로그래밍 예제들을 학습하게 된다.";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";            
   }else if(subject == 8) //금융프로그래밍2
   {
      title.innerText = "금융프로그래밍2";
      cont.innerText = "금융공학은 가격 결정과 헷징, 위험관리, 포트폴리오 관리 등에 수학적인 방법론을 적용하는 것이다. 이를 실무에서 수행할 때는 컴퓨터를 이용하여 실제로 구현하는 것이 필요하다. \n\n이 과목은 금융공학 모형들을 실제로 컴퓨터 언어를 이용하여 프로그램하고 구현하여 실무를 배우는 것을 목적으로 한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";            
   }else if(subject == 9) //투자론
   {
      title.innerText = "투자론";
      cont.innerText = "투자대상들의 투자가치를 평가하는 문제를 다룬다. 이를 위해서 자본시장의 기능과 주식, 채권, 옵션 및 선물을 포함한 증권별 투자 특성의 분석, 자본 자산 가격 결정에 관한 모형 등을 다루는 현대 자본시장 이론 그리고 투자전략 등을 다룬다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";            
   }else if(subject == 10) //고정소득증권기초
   {
      title.innerText = "고정소득증권기초";
      cont.innerText = "채권은 전 세계에서 발행되는 모든 시장성 유가증권 가치의 60-70%를 차지할 정도로 중요하고 대표적인 금융상품이다. 채권은 정부와 기업 그리고 개인의 가장 중요한 자금조달 수단이며 동시에 투자 자산이기도 하다. 본 과목에서는 채권의 가치 평가와 투자전력에 대하여 체계적이고 구체적으로 다루고자 한다. 먼저 채권의 발행과 유통시장, 이자율의 기간구조, 채권의 가치 평가, 부동산담보증권 등에 대하여 공부한다. 그리고 채권의 듀레이션과 블록성 개념을 이용한 위험관리에 대하여 공부한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 11) //금융딥러닝기초
   {
      title.innerText = "금융딥러닝기초";
      cont.innerText = "딥러닝은 인공지능의 한 분야로 인간의 뇌신경망을 토대로 컴퓨터가 스스로 데이터 패턴 등을 학습할 수 있도록 하는 기술들을 연구하는 분야이다. 이 과목에서는 기계학습과 통계적 패턴 인식의 기초 내용들을 포괄적으로 소개할 것이다. 이 과목에서 다룰 주요 주제들로는 지도 학습, 비지도 학습, 강화 학습, 그리고 기초 학습 이론 등이 있다. 특히, 요즘 큰 주목을 받고 있는 심층 신경망을 중심으로 기계학습 내용을 다룰 것이다. 또한 심층 신경망이 컴퓨터 비전, 음성 인식, 금융 등에 어떻게 적용되고 있는지를 살펴볼 것이다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 12) //금융캡스톤디자인프로젝트
   {
      title.innerText = "금융공학캡스톤디자인프로젝트";
      cont.innerText = "본 교과목은 금융공학의 각 세부 전공에서 학습한 전공교과목 및 이론 등을 바탕으로 산업체 또는 사회가 필요로 하는 융·복합형 과제를 수행한다. 학생들은 스스로 팀을 구성하여 프로젝트 기획 및 문제해결, 개발을 수행한다. 지도교수는 학생들이 프로젝트를 수행하는데 필요한 기본지식을 제공하고, 프로젝트 수행과 관련된 방법론을 지도한다. 본 과목은 학생들을 대상으로 각 전공에서 학습한 전공 교과목 및 이론 등을 바탕으로 산업체와 연계하여 융·복합형 문제 해결을 수행하며, 지도교수는 학생들이 문제해결을 수행하기 위해서 필요한 기본지식과 문제 해결중심학습(Problem Based Learning)을 수행할 수 있도록 학생들과의 쌍방향 소통을 강화하여 단순 관리/감독을 넘어 산학연 공동 연구체로 거듭날 수 있는 기회를 마련한다. 국내외 산업체 연구진과 캡스톤 디자인을 수행하며 융·복합형 산업체 인턴십 수행을 목표로 한다. 학생들은 이 과목을 수행하는 끝에 인턴십 기업체를 찾을 수 있고, 방학 중 또는 다음 학기 중 인턴십 수행할 수 있도록 지도하고, 관리/감독을 병행한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 13) //수학1
   {
      title.innerText = "수학1";
      cont.innerText = "미분적분학은 수학의 기본적인 분야로 두 가지의 상호보완 적인 개념으로 이루어져 있다. 그중 하나인 미분은 직선의 기울기와 같은 변화율을 연구하는 것이다. 다른 하나인 적분은 곡선 아래의 면적, 체적 등과 같은 양들의 집적을 연구하는 것이다. 미분과 적분의 관계에 관한 미분적분학의 기본 정리를 배운다. 금융공학을 연구하기 위한 기초 수학 과목으로서 실수의 성질, 급수, Taylor 전개, 벡터 및 행렬과 행렬식, 공간의 곡선 등과 그 응용을 배운다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 14) //수학2
   {
      title.innerText = "수학2";
      cont.innerText = "본 강좌는 수학1(Calculus1) 강좌의 두 번째 강좌로 미분적분학의 실제 응용과 더불어 논리적 사고, 추상화와 증명법의 이용에 강조를 둔다. 특히 주로 다변수 함수와 벡터를 중점으로 다룬다. 다변수 함수의 미분과 적분, 벡터장, Green 정리, Stokes 정리 등의 내용을 깊고 자세히 배운다.";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 15) //금융미분방정식
   {
      title.innerText = "금융미분방정식";
      cont.innerText = "미적분학을 기초로 하여 변화율과 관계된 자연현상이나 사회현상을 설명하는데 필요한 미분방정식을 모델링하고, 다양한 미분 방정식에 맞는 여러 해법을 공부한다. 1. 미분방정식을 안다. 2. 미분방정식과 관련된 현상들을 수학적으로 모델링 한다. 3. 방정식에 맞는 해법을 찾아 방정식의 해를 구한다. 4. 방정식의 해를 해석한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 16) //고급금융통계
   {
      title.innerText = "고급금융통계";
      cont.innerText = "이론 통계학의 기초로서 확률분포에 관한 성질을 다루고 이산형 및 연속형 및 분포, 조건부 확률 및 독립성, 확률 변수, 중심극한정리, 신뢰구간을 다룬다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O\n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 17) //선물옵션
   {
      title.innerText = "선물옵션";
      cont.innerText = "우리는 이 과목에서 선물, 옵션과 같은 파생상품에 대해 공부한다. 우리는 파생상품 시장의 메커니즘과 그것의 가격 결정에 대해 공부한다. 또한 통합된 재무에 옵션의 적용을 공부하고, 몇몇 실증적인 리서치를 수행한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";
   }else if(subject == 18) //경력설계 현장프로젝트2
   {
      title.innerText = "경력설계 현장프로젝트2";
      cont.innerText = "경력설계 현장 프로젝트는 직무역량 강화로 인한 취업 경쟁력 제고에 목적이 있다. 선정 기업 및 방문 회사에 대한 전반적인 이해를 돕고, 전공 관련 직무 선정, 지도 선배 지정 등의 과정을 거쳐 업무 프로세스를 체험한다. 학교에서 배운 지식을 활용하여 지도 선배 지도하에 업무 수행 경험을 쌓으며, 프로젝트 전체 업무에 관한 내용 및 소감 정리의 체계적 단계로 취업역량을 함양한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";                
   }else if(subject == 19) //고급금융프로그래밍
   {
      title.innerText = "고급금융프로그래밍";
      cont.innerText = "본 강좌는 C와 C++ 언어에 대한 소개와 기초적인 응용법을 가르친다. 강좌 중에는 C와 C++의 기초적인 문법에 대해서 공부할 것이며 객체와 클래스 등 객체 지향 프로그래밍에 대한 기본 개념을 배울 것이다. 특히나 파이썬에서 다루지 않았던 포인터와 메모리에 관련된 내용을 상세히 다룰 예정이다.";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 20) // 금융공학입문
   {
      title.innerText = "금융공학입문";
      cont.innerText = "금융공학에 대하여 소개한다. 신입생이 금융공학이란 무엇인가라는 것을 이해하여 학습방향과 진로 설정을 잘 할 수 있도록 하는 과목이다. 금융공학의 핵심을 이루는 주제들, 파생 및 구조화 상품, 증권화, 위험관리, 시장 미시구조와 알고리즘 트레이딩, 자산 포트폴리오 운용전략 및 로보 어 드바이저, 블록체인 및 핀테크 등에 대하여 기술적인 내용을 지양하고 평범한 언어로 알기 쉽게 설명한다. 팀 프로젝트에 기초한 발표를 통하여 학생들이 각 주제에 대하여 스스로 연구하여 학습할 수 있도록 동기를 부여한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 21) // 경력설계와 창업입문1 
   {
      title.innerText = "경력설계와 창업입문1";
      cont.innerText = "대학 1학년생을 위한 과목으로 경영학도로서 기본적으로 갖추어야 하는 Business Ethics에 관하여 강의 및 기업 CEO 및 관련 종사자 특강을 통하여 의무적으로 교육하고 경영 학도로서의 진로 선택, 전문분야의 미래 예측 및 진로 탐색 등을 특강을 통하여 적극 지도한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 22) // 금융선형대수
   {
      title.innerText = "금융선형대수";
      cont.innerText = "기저, 특이값, 특이벡터, 직교성, 일반적인 벡터공간의 정의와 다양한 예, 그리고 내적 공간, 놈의 정의를 익힌 후 Singular value decomposition을 다룬다. 또한 이를 통한 응용문제도 생각해 본다. 선형대수는 그 폭넓은 활용성 때문에 이공학 뿐만 아니라, 인문, 사회과학의 여러 분야에서도 필요로 하는 기초적인 수학이다. 개념에 대한 논리적이고도 정확한 이해와 여러가지 계산을 능숙하게 할 수 있게 하는 것이 이 강의의 주안점이다.";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 23) // 고급재무관리
   {
      title.innerText = "고급재무관리";
      cont.innerText = "고급재무관리는 재무관리에 이어서 기업 재무의 심화된 내용을 다룬다. 재무관리에서 학습한 ‘화폐의 시간가치’와 ‘위험-수익률 상관관계’를 바탕으로 하여 기업 활동을 함에 있어서 주주들을 위해 기업 가치를 향상시키고 최대화시킬 수 있는 최적의 자본구조, 배당 정책을 모딜리아니-밀러 정리에 기초하여 학습하고 이와 관련하여 기업 간 인수합병 및 비즈니스 리스크의 헤징을 통한 기업가치 향상에 관해 공부한다.";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 24) // 금융해석학
   {
      title.innerText = "금융해석학";
      cont.innerText = "본 과목은 해석학의 입문 과정에 해당한다. 실수와 복소수 체계, 집합론과 위상수학의 기초, 수열의 극한과 무한급수, 함수의 극한과 연속성 등을 주로 공부한다. ";
      pre.innerText = "수학1";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 25) // 주식시장의 퀀트투자전략
   {
      title.innerText = "주식시장의 퀀트투자전략";
      cont.innerText = "이 과목은 헷지펀드 등 소위 스마트머니가 보편적으로 활용하고 있는 주식시장의 다양한 투자전략들을 소개하며, 각 투자전략의 성과가 발생하는 경제적 원리를 설명한다. 한편 주식시장 자료를 활용하여 투자전략의 성과 측정 및 백테스팅 방법을 연습한다. 이를 통해 시장 효율성 및 자산가격의 결정요인에 대한 이해를 높이는 것을 목표로 하며, 아울러 시장 효율성에 위배되는 여러 이상현상들이 투자 실무에서 어떻게 활용될 수 있는지 살펴보는 기회를 제공한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 26) // 국제재무관리
   {
      title.innerText = "국제재무관리";
      cont.innerText = "글로벌 경영 환경에서 기업의 경영활동은 국제적으로 이루어진다. 그리고 이는 필연적으로 국제적 규제 및 환율 및 이자율 변동 등 각종 리스크에 기업이 노출됨을 의미한다. 국제재무관리는 이러한 국제적인 기업 활동에 있어서 가장 핵심이 되는 외환 및 이자율과 관련된 기본적인 이론과 함께 그 위험의 헷징을 통한 기업 가치의 향상에 관해 학습한다. 또한 이와 관련된 주제로 각종 외국인 투자 및 다국적 금융시장에 관해서 공부한다.";
      pre.innerText = "재무관리";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 27) // 기초금융통계	
   {
      title.innerText = "기초금융통계";
      cont.innerText = "비결정적 현상을 기술하고 분석하는데 사용되는 수학적 도구로써 확률모형을 소개한다. 확률과 확률변수, 확률 분포 와 기대치, 표본분포, 중심극한정리, 점추정과 신뢰 구간, 가설 검정과 오류, 범주형 자료와 분류표 분석, 측정형 자료의 분석 등에 대하여 공부한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 28) // 데이터 분석기초
   {
      title.innerText = "데이터 분석기초";
      cont.innerText = "대표적인 오피스용 데이터 처리 도구인 EXCEL과 통계처리 도구로 널리 사용되고 있는 R을 활용하여 기초적인 데이터 처리 및 통계 처리 프로그래밍 역량을 배양한다. 통계 관련 지식보다는 도구 사용 능력을 배양하는 데 초점을 둔다. 프로그래밍 관련 지식이 전무한 비전공자 학생들을 대상으로 하여 데이터 분석 프로그래밍에 대한 이해를 갖는 것도 이 과목의 주요 목표이다. 본 과목을 통해 배양되는 데이터 분석 프로그래밍 역량 및 이해를 바탕으로 추후 전공 분야에 서의 심도 있고 유의미한 데이터 분석을 보다 수월하게 할 수 있을 것이다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 29) // 재무관리
   {
      title.innerText = "재무관리";
      cont.innerText = "이 과목의 목표는 학생들이 재무관리의 기본이론과 기법에 대한 폭넓은 지식을 얻는 데 있다. 이 과목에서 학생들은 자본의 조달 및 운용에 관한 구조적인 측면과 기능적인 측면 을 배우게 된다. 자본 및 금융시장에서의 자금의 조달방법, 자본비용 계산, 투자안의 분석 및 평가, 자본예산 편성, 기업의 유동성 관리, 자본구조 정책, 배당 정책, 재무예측 등 이 이 과목에서 다루어지는 주요 주제들이다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 30) // 금융론
   {
      title.innerText = "금융론";
      cont.innerText = "금융시장의 기능 및 효율성에 대하여 논의하고, 금융시장에 존재하는 각종 금융상품 및 유가증권들에 대해 심도 있게 분석해 본다. 또한 금융시장에서 가장 중요한 역할을 하는 이자율이 어떻게 결정되고 그 구조는 어떻게 되어 있는가에 대해 살펴본다. ";
      pre.innerText = "재무관리";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 31) // 금융거시경제학
   {
      title.innerText = "금융거시경제학";
      cont.innerText = "본 수업에서는 금융시장의 균형 이론을 학습한다. 먼저 금융 상품의 가격을 결정하는 메커니즘과 이자율 결정 모형을 배우고 금융 상품들의 균형 시장 가격과 수량을 결정하는데 중요한 영향을 끼치는 위험 및 요소들의 역할을 배운다. 이후 시장 참여자들의 행태에 대한 가정에 따라 달라지는 금융 시장의 가격 형성 이론을 학습하며 다양한 금융 상품이 동시적 또는 순차적으로 거래되는 시장뿐만 아니라 국제 시장에 적용되는 현상들을 학습하여 거시경제학과 금융시장의 유기적 연결성을 학습한다. 거시금융시장에 대한 종합적인 내용을 학습하기 위하여 미국 서브프라임 모기지로부터 출발한 경제 위기 및 같은 시기의 유럽 경제 위기 등의 케이스를 자세히 살펴보며 이에 관련된 이자율, 환율 변동 추이와 각종 통화, 재정 정책들의 메커니즘을 연구하고 이 정책들의 실효성을 진단한다.";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 32) // 금융기관
   {
      title.innerText = "금융기관";
      cont.innerText = "금융기관의 경제 구조에서의 역할을 중심으로, 금융기관의 기능, 금융기관에 영향을 미치는 이자율에 대한 이해, 통화의 확대 과정에 대한 이해, 금융기관의 특성에 대한 이론적인 측면을 살펴보고, 우리나라 금융기관에 대한 공부를 통하여 금융기관에 대한 이론적 접근과 실제에 대한 접근을 시도한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 33) // 행동경제학
   {
      title.innerText = "행동경제학";
      cont.innerText = "소비자선택이론과 게임이론을 포함하는 전통적 경제학을 중심으로 하되, 심리학 내의 일부 분과(특히 판단과 의사결정)에서의 연구 결과와 방법을 수용해 지식을 생산하는 분야가 행동경제학이다. 지난 25~30년간 행동경제학자들의 주목을 받아온 주제들을 학부수준에서 소개하는게 이 과목의 목표이다. 보다 최근에는 정책 대안(예를 들어, 이른바‘넛지’에 포함되는 다양한 방식들)의 제시도 행동경제학에서 활발하게 이루어지고 있는데 그 대안들에서 발견되는 특징들도 논의된다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 34) // 경제원론1
   {
      title.innerText = "경제원론1";
      cont.innerText = "이 과목은 시장경제의 기본 원리를 소개하고 실제 발생하는 현상들을 경제 원리에 의해 설명하고 분석할 수 있는 능력을 배양하는데 그 목적이 있다. 효율적인 강의 이해를 위해서 기본적인 미분 및 함수, 방정식에 대한 수리 지식이 요구되며 교환, 기회비용, 한계비용 등 기본 경제학 개념 및 수요 공급 분석을 통한 시장 메커니즘의 이해, 소비자-생산자 이론, 상품 시장과 경쟁, 생산요소 시장과 소득분배, 국제무역 등이며 미시경제학의 전반적인 부분들을 살펴본다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 35) // 회계학원론
   {
      title.innerText = "회계학원론";
      cont.innerText = "* 재무회계의 Framework 회계기분, 회계 등식과 복식부기 system. 현금주의 회계와 발생주의 회계의 차이점, 회계 순환과정, 거래의 분석과 분개, 기초 재무제표, 자산, 자본과 부채의 가치 평가, 내부통제 system, 현금 통제 " +
         "\n * 회계 원리와 개념 재무보고의 목적, 회계정보의 질적 특성 등 재무제표 작성의 기초가 되는 회계 개념, 원칙과 가정. " +
         "\n * 기업회계 주식회사의 특징, 기업회계와 관련된 문제점, 회사의 재무 제표 작성. " +
         "\n * 재무제표의 분석과 해석 재무제표의 분석과 해석의 필요성과 분석방법 – 비율분석과 현금 흐름표의 분석 방법, 기초적인 재무 비율 계산법과 해석, 비율분석의 한계점. " ;
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 36) // 자료구조
   {
      title.innerText = "자료구조";
      cont.innerText = "자료구조는 데이터를 처리하는 입장에서 데이터 사이에 존재하는 관계를 개념적으로 설계하는 기법들을 의미하며, 효율적이고 안정적인 컴퓨터 시스템 개발을 위한 컴퓨터 과학 및 공학 분야의 중요한 기초 지식이다. 즉 소프트웨어를 효과적으로 설계, 구현하기 위해서는 프로그래밍 기술뿐만 아니라, 프로그래밍의 재료인 자료구조와 제작법으로서 알고리즘에 관한 기초적인 학습이 요구된다. 특히 컴퓨터 프로 그래밍에서 다루는 물리적인 기본 데이터구조로 시작하여, 추상적인 문제를 실체화하는 논리적인 자료구조로 단계적으로 학습하며, 이를 적용한 알고리즘 학습을 통해 자료구조 별 특징과 자료구조의 활용 방법을 이해하는 것을 목적으로 한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 37) // 금융미시경제학
   {
      title.innerText = "금융미시경제학";
      cont.innerText = "이 과정은 수강생들이 재무의 기본적인 개념과 경제 논리를 이해하고 익숙해지는데 주목적이 있다. 수강생들은 mean-variance analysis, portfolio selection, valuation of cash flows, no arbitrage principle, 그리고 market efficiency를 배우게 된다. 이 과정은 그 주제들에 대해 논리적이고 분석적인 접근법을 사용하기 때문에 수강생들에게 기본적인 수학적 지식과 태도가 요구된다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }
   else if(subject == 38) // 수치해석
   {
      title.innerText = "수치해석";
      cont.innerText = "C, Fortran, Matlab 등의 컴퓨터 언어와 수학1,2를 수강한 학생이면 누구나 부담 없이 수강할 수 있다. 수학적 논리 전개에 따른 공식과 해법 등을 바탕으로 오차의 종류와 계산법, 고차방정식과 선형계 방정식의 수치해법 그리고 곡선의 수치적 구성법, 보간법, 나아가 상미분방정식의 해법과 그 알고리즘들을 익히고 이것을 프로그래밍하여 보다 좋은 numerical output을 얻는 것을 익힌다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }
   else if(subject == 39) // 금융머신러닝기초
   {
      title.innerText = "금융머신러닝기초";
      cont.innerText = "본 강좌는 기계학습에 대한 소개와 그 이론 및 기초적인 응용법을 가르친다. 강좌 중에는 KNN, random forest 등 실제 데이터 처리 때 쓰이는 기계학습 방법론을 다양하게 배울 것이다. 또한 강의 후반부에서는 딥러닝에 대한 간단한 소개 및 실제 사례도 배울 것이다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }
   else if(subject == 40) // 경제원론2
   {
      title.innerText = "경제원론2";
      cont.innerText = "이 과목은 거시경제의 주요 변수들을 습득하고 기본 원리를 이해하는 것에 초점을 둔다. 기초적인 거시경제 변수들을 소개하고 총 수요곡선과 총 공급곡선을 이용하여 균형소득과 물가의 결정원리를 설명한다. 이어 AS-AD 모델을 이용한 인플레이션과 실업의 관계를 분석하여 재정정책의 역할을 살펴본다. 또한 통화량 결정요인을 통해 화폐수요 및 화폐공급 곡선, 통화 구조, 이자율을 공부하여 국가의 통화정책이 거시경제에 미치는 영향을 분석한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }
   else if(subject == 41) // 객체지향프로그래밍실습
   {
      title.innerText = "객체지향프로그래밍실습";
      cont.innerText = "객체지향프로그래밍은 현재 모든 소프트웨어분야에서 공통적으로 사용되는 필수적인 패러다임이다. 이 강좌는 기본적인 프로그래밍 개념을 배운 학생을 대상으로 객체지향프로그래밍언어의 기본구성요소인 객체와 클래스, 상속등의 개념과 이들을 활용하여 프로그래밍하는 기법을 공부한다. 객체지향프로그래밍의 핵심 개념인 데이터추상화, 캡슐화, 다형성등을 공부하고, 이들을 이용하여 객체지향프로그램이 어떻게 소프트웨어의 재사용과 확장성을 제공하는지에 대해서도 공부한다. 가장 널리 사용되는 객체지향언어인 Java 언어를 이용하여 객체지향프로그래밍언어의 개념을 공부하고 실습을 병행하여 프로그래밍능력을 배양한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }
   else if(subject == 42) // 금융계량경제학
   {
      title.innerText = "금융계량경제학";
      cont.innerText = "본 교과목에서는 금융 자료 분석에 필요한 선형 회귀 모형에 필요한 기초적인 지식과 이론을 제공한다. 본 교과목의 주요 목표는 최소자승법을 이해하는 것이며, 최소자승법에 의한 모수 추정에 필요한 자료의 구조와 가정들을 이해하는 것이다. 최소자승법을 배운 후, 횡단면과 시계열 자료의 차이점과 필요한 분석 방법을 이해하며, 각 자료의 특성에 알맞은 모수 추정 방법을 토론한다. 교과목 수강 후, 학생은 더미 변수, 다중공선성, 이분산성, 내생 변수 등에 대해 이해하며 이 개념을 금융 자료 분석에 적용 시킬 수 있다. 마지막으로 최대우도추정 방법의 기초에 대한 이해를 통해 로짓 모형과 콕스 모형 등을 추정할 수 있다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 43) // 게임이론 및 응용
   {
      title.innerText = "게임이론 및 응용";
      cont.innerText = "합리적 개인들의 의사결정이 상호의존적 관계에서 만들어 내는 전략적 균형 개념들에 대해 공부하고 이를 현실의 경제적, 사회적 문제들에 적용하여 본다. 게임이론은 경제학의 각 분야 및 사회과학 전반에서 의사결정자들의 상호의존적 관계를 이해하고 분석하는 방법론으로 널리 사용되고 있다.  ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 44) // 경제적사고방식
   {
      title.innerText = "경제적사고방식";
      cont.innerText = "이 과목의 목적은 학생들이 시장·기업·정부·화폐라는 제도적 장치가 진화한 과정을 역사적·이론적 시각에서 넓고 깊게 관찰하고, 이 동태적 과정을 유도·추진한 체제와 이념의 본질을 이해하도록 도와주려는 것이다. 동시에 여건에 도전하고 난관을 극복하기 위한 조직과 정책을 전개하면서 나타나는 다양한 목적과 수단 간의 갈등과 조화, 특히 정부와 시장의 관계를 조명하고 현실 경제의 저변에 있는 구조적 틀을 규명한다. 학생들은 이 과목을 통해서 정통 경제학의 근원에 있는 인간행동과 사회동학의 논리를 규명하는 한편, 부분적으로 정통 경제학의 한계를 넘어 경제를 통찰하는 분석안을 갖춤으로써 경제학과 현실 경제를 좀 더 근접하여 이해할 수 있을 것이다. 특히 정형적인 교과서를 중심으로 하는 통상적인 강의와 달리, 학생의 지식수준을 감안하여 주제별로 엄선한 석학들의 글을 (영문) 원전으로 읽고 발표 하고 토론하는 방법으로 진행된다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 45) // 마케팅관리
   {
      title.innerText = "마케팅관리";
      cont.innerText = "기업들의 성패는 궁극적으로 시장에서 결정된다. 시장에서의 성공을 위하여 고객을 창조하고 유지하기 위한 활동이 바로 마케팅이다. 본 과정은 마케팅개념에 대한 기본적 이해와 기업의 관리자로서 마케팅문제의 파악 및 해결능력을 배양시키는데 목적이 있으며, 마케팅 전략과 마케팅믹스의 관리적 측면을 숙지하게 된다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 46) // 경력설계와 창업입문2
   {
      title.innerText = "경력설계와 창업입문2";
      cont.innerText = "적성진로를 열어가는 계획과 실천에 관한 일체를 포함한다. 일이 어떻게 변동하며 재조직되고 있는지 연구하며 이를 경력개척에 응용하고, 가려진 직업시장을 이해하고 창조적 직업서치방법에 대해 연구한다. 개인의 능력강점을 반영한 능력서 또는 이력서와 자기소개서를 만드는 과정을 연구하고, 실제로 만들어 본다. 고용자에게 접근하는 방법을 여러 각도에서 살피고 상대적 이점을 알도록 한다. 특별히 정보수집 인터뷰, 고용자접근서신, 채용면접의 성격, 면접방법의 변화, 면접 후 처리 등에 대해서 자세히 구체적으로 연구한다. 취업에서 창업으로 진로가 전환되는 기회를 연구한다. 그리고 개인의 강점 능력이 어떻게 사업화 될 수 있을 것인지 이해한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 47) // 데이터베이스
   {
      title.innerText = "데이터베이스";
      cont.innerText = "본 강좌는 프로그래머로서 배워야할 데이터베이스의 기본적인 개념, 설계 그리고 구현에 대해서 강의한다. 데이터베이스는 방대한 크기의 데이터를 컴퓨터에 저장하고 필요한 데이터를 얻어오는 기법에 대한 것으로 컴퓨터 응용 프로그램에서 컴퓨터 시스템에 이르기까지 영향을 미치는 전산학에서 매우 중요한 분야이다. 본 교과에서는 데이터베이스 전반에 대한 이해를 목표로 하며 특히 사용자 입장에서 데이터베이스 시스템을 다루는 것에 중점을 둔다. 데이터베이스의 기본적인 개념, 관계 데이터베이스 개념, 관계데이터모델, 데이터 종속성과 무결성 등 데이터베이스 설계에 관한 기본적인 원리와 기법을 학습한다. 그리고 이러한 지식을 기반으로 설계와 구현을 통해서 프로그래밍과 관련된 다양한 기술들을 학생들이 배양할 수 있도록 한다. ";
      pre.innerText = "자료구조";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : 소프트웨어학과";
   }else if(subject == 48) // 경영정보시스템
   {
      title.innerText = "경영정보시스템";
      cont.innerText = "본 과목은 정보기술과 관련된 모든 주제를 다루는 입문 과목이다. 경영학의 여러 분야들, 즉 생산, 마케팅, 재무, 인사, 회계 등을 총괄하는 경영학원론 또는 경영학총론 과목이 있듯이 경영에 활용되는 정보기술을 원론 수준에서 다루는 과목이 경영정보시스템과목이다. 본 과목에서는 학생들 로 하여금 정보 시스템의 유형 및 각종 정보관련기술에 관한 지식을 습득케 함으로써 정보화시대의 경영자로서의 자질을 갖추게 한다. 정보기술은 과거의 단순한 자료축적 및 생성을 위한 도구단계를 지나서 현대에는 치열한 경쟁에서 살아남기 위하여 필요불가결한 경쟁무기로 쓰이고 있다. 그러므로, 본 과목에서는 정보기술을 경쟁무기로 활용하기 위하여 요구되는 기본지식 및 각종 활용방안 등을 습득케 함으로써 정보경쟁 시대에 창의력 있게 대처할 수 있는 능력을 갖추게 한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 49) // 생산운영관리
   {
      title.innerText = "생산운영관리";
      cont.innerText = "조직의 합리적인 운영에 필요한 개념, 기술 및 과정에 관한 과학적인 분석 및 연구를 통하여 모형에 기초를 둔 시스템을 설계하고, 실행하는데 관계되는 모든 실제적인 문제를 연구한다. 주요 내용으로는 판매예측, 생산통제, 재고통제, 시설계획, 품질 및 과정통제 등 계량적 접근방법 및 JIT, TQC, Lean방식 등 개념적인 경영기법 등에 대한 소개가 포함된다. ";
      pre.innerText = "경영통계와 자료분석";
      engYN.innerText = "외국어 강의여부 : O \n(영어 100%)";
      publicYN.innerText = "공동개설 학과 : X";         
   }else if(subject == 50) // 금융시계열분석과 투자전략
   {
      title.innerText = "금융시계열분석과 투자전략";
      cont.innerText = "시계열 데이터 분석에서는 시계열 데이터의 특성을 알고, 분석하는 방법을 배운다. 특히 대부분의 금융 관련 데이터는 시계열 자료이므로 금융 시계열 자료의 종류와 특성에 관한 수리통계적 이론과 프로그래밍 실습을 제공하는 교과목이다. 자기 상관성 (AR 모형), 이동평균 (MA) 모형 등에 대한 이론적 배경을 배우며, 정상성(stationarity), 차분(difference), 에르고딕(ergodicity)성 등 시계열 자료를 이해하기 위한 기초적인 확률적 성질을 배운다. 이와 더불어 벡터자기회귀모형(VAR)과 벡터오차수정모형(VECM) 추정 방법을 학습한 후 실제 주식 가격, 수익률, 변동성 분석 프로그래밍 실습을 수행한다. ";
      pre.innerText = "";
      engYN.innerText = "외국어 강의여부 : X";
      publicYN.innerText = "공동개설 학과 : X";         
   }

	modal.classList.toggle('show');

	if (modal.classList.contains('show')) {
   	 	body.style.overflow = 'hidden';
	}
}

btnOpenPopup1.addEventListener("click", function(){modalPopup(1)});
btnOpenPopup2.addEventListener("click", function(){modalPopup(2)});
btnOpenPopup3.addEventListener("click", function(){modalPopup(3)});
btnOpenPopup4.addEventListener("click", function(){modalPopup(4)});
btnOpenPopup5.addEventListener("click", function(){modalPopup(5)});
btnOpenPopup6.addEventListener("click", function(){modalPopup(6)});
btnOpenPopup7.addEventListener("click", function(){modalPopup(7)});
btnOpenPopup8.addEventListener("click", function(){modalPopup(8)});
btnOpenPopup9.addEventListener("click", function(){modalPopup(9)});
btnOpenPopup10.addEventListener("click", function(){modalPopup(10)});
btnOpenPopup11.addEventListener("click", function(){modalPopup(11)});
btnOpenPopup12.addEventListener("click", function(){modalPopup(12)});
btnOpenPopup13.addEventListener("click", function(){modalPopup(13)});
btnOpenPopup14.addEventListener("click", function(){modalPopup(14)});
btnOpenPopup15.addEventListener("click", function(){modalPopup(15)});
btnOpenPopup16.addEventListener("click", function(){modalPopup(16)});
btnOpenPopup17.addEventListener("click", function(){modalPopup(17)});
btnOpenPopup18.addEventListener("click", function(){modalPopup(18)});
btnOpenPopup19.addEventListener("click", function(){modalPopup(19)});
btnOpenPopup20.addEventListener("click", function(){modalPopup(20)});
btnOpenPopup21.addEventListener("click", function(){modalPopup(21)});
btnOpenPopup22.addEventListener("click", function(){modalPopup(22)});
btnOpenPopup23.addEventListener("click", function(){modalPopup(23)});
btnOpenPopup24.addEventListener("click", function(){modalPopup(24)});
btnOpenPopup25.addEventListener("click", function(){modalPopup(25)});
btnOpenPopup26.addEventListener("click", function(){modalPopup(26)});
btnOpenPopup27.addEventListener("click", function(){modalPopup(27)});
btnOpenPopup28.addEventListener("click", function(){modalPopup(28)});
btnOpenPopup29.addEventListener("click", function(){modalPopup(29)});
btnOpenPopup30.addEventListener("click", function(){modalPopup(30)});
btnOpenPopup31.addEventListener("click", function(){modalPopup(31)});
btnOpenPopup32.addEventListener("click", function(){modalPopup(32)});
btnOpenPopup33.addEventListener("click", function(){modalPopup(33)});
btnOpenPopup34.addEventListener("click", function(){modalPopup(34)});
btnOpenPopup35.addEventListener("click", function(){modalPopup(35)});
btnOpenPopup36.addEventListener("click", function(){modalPopup(36)});
btnOpenPopup37.addEventListener("click", function(){modalPopup(37)});
btnOpenPopup38.addEventListener("click", function(){modalPopup(38)});
btnOpenPopup39.addEventListener("click", function(){modalPopup(39)});
btnOpenPopup40.addEventListener("click", function(){modalPopup(40)});
btnOpenPopup41.addEventListener("click", function(){modalPopup(41)});
btnOpenPopup42.addEventListener("click", function(){modalPopup(42)});
btnOpenPopup43.addEventListener("click", function(){modalPopup(43)});
btnOpenPopup44.addEventListener("click", function(){modalPopup(44)});
btnOpenPopup45.addEventListener("click", function(){modalPopup(45)});
btnOpenPopup46.addEventListener("click", function(){modalPopup(46)});
btnOpenPopup47.addEventListener("click", function(){modalPopup(47)});
btnOpenPopup48.addEventListener("click", function(){modalPopup(48)});
btnOpenPopup49.addEventListener("click", function(){modalPopup(49)});
btnOpenPopup50.addEventListener("click", function(){modalPopup(50)});



modal.addEventListener('click', (event) => {
     if (event.target === modal) {
         modal.classList.toggle('show');

     if (!modal.classList.contains('show')) {
         body.style.overflow = 'auto';
    }
   }
});