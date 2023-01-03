

var gi_flag=1;
var cd_flag=1;
var de_flag=1;
var vc_flag=1;
var md_flag=1;

function getDetail(subjectCode){
	$.ajax({
			type: 'POST',
			url: '/cil/detail',
			async: true,
			data: { "subject" : subjectCode
			},
			success: function (data) {
				var modal = $("#detailModal");
                //modal.empty();
                //modal.append(data);
				modal.find(".course_cont").empty();
                modal.find(".course_cont").append(data.subjectDetailList[0].name);
				modal.find(".keyword_cont").empty();
                modal.find(".keyword_cont").append(data.subjectDetailList[0].keyword);
				modal.find(".detail_cont").empty();
                modal.find(".detail_cont").append(data.subjectDetailList[0].detail);
				modal.find(".tools_cont").empty();
                modal.find(".tools_cont").append(data.subjectDetailList[0].tool);
				modal.find(".pre_cont").empty();
                //modal.find(".pre_cont").append(data.subjectDetailList[0].name);
				modal.find(".related_cont").empty();
                modal.find(".related_cont").append(data.subjectDetailList[0].relate_subject);
                modal.find(".modal_wrap").attr("style", "display:flex");
                modal.find(".black_bg").attr("style", "display:block");
			},
			complete: function() {
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			}			
		});
}

function reset_color(){
    var ch_td;

    for(i=3;i<=14;i++)
    {
        for(j=1;j<=8;j++)
        {
            str = "tr"+i+"td"+j;
            
 			if(document.getElementById(str)){
				ch_td = document.getElementById(str);
				if(ch_td!=null)
            		ch_td.style.background = "#f5f5f5";
			}else{
			}
        }
    }
}
function trackClick(page_id){
    var ch_td;
	var core = new Array();
    var support = new Array();
    reset_color();

    $.ajax({
			type: 'POST',
			url: '/cil/track',
			async: true,
			data: {"page_id" : page_id},
			dataType : 'json',
			success: function (data) {
				for(var i=0; i<data.subjectTrackList.length; i++)
				{
					if(data.subjectTrackList[i].type=='core')
					{
						core.push('tr'+data.subjectTrackList[i].row_id+'td'+data.subjectTrackList[i].col_id);
					}
					if(data.subjectTrackList[i].type=='support')
					{
						support.push('tr'+data.subjectTrackList[i].row_id+'td'+data.subjectTrackList[i].col_id);
					}
				}
				switch(page_id)
				{
					case 129:
						deClick(core,support);
						break;
					case 130:
						cdClick(core,support);
						break;
					case 131:
						vcClick(core,support);
						break;
					case 132:
						mdClick(core,support);
						break;
					case 133:
						giClick(core,support);
						break;
				}
			},
			complete: function() {
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			}			
		});
}

function giClick(core,support)
{
	reset_color();
    if(gi_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#59bb4f";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#c1dfbf";
        }
    }
    if(gi_flag<0)
    {
        reset_color();
    }
    gi_flag*=-1;

    cd_flag=1;
    de_flag=1;
    vc_flag=1;
    md_flag=1;
}
function cdClick(core,support){
	reset_color();
    if(cd_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#f19a48";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#ecb887";
        }
    }
    if(cd_flag<0)
    {
        reset_color();
    }
    cd_flag*=-1;

    gi_flag=1;
    de_flag=1;
    vc_flag=1;
    md_flag=1;
}

function deClick(core,support){
	reset_color();
    if(de_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "rgb(191, 122, 231)";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "rgb(240, 213, 255)";
        }
    }
    if(de_flag<0)
    {
        reset_color();
    }
    de_flag*=-1;

    gi_flag=1;
    cd_flag=1;
    vc_flag=1;
    md_flag=1;
}

function vcClick(core,support){
	reset_color();
    if(vc_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#3bd1ff";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#caeff0";
        }
    }
    if(vc_flag<0)
    {
        reset_color();
    }
    vc_flag*=-1;

    gi_flag=1;
    cd_flag=1;
    de_flag=1;
    md_flag=1;
}

function mdClick(core,support){
	reset_color();
    if(md_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#ff6f6f";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#f7b9b9";
        }
    }
    if(md_flag<0)
    {
        reset_color();
    }
    md_flag*=-1;

    gi_flag=1;
    cd_flag=1;
    de_flag=1;
    vc_flag=1;
}