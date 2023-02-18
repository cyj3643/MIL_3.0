function open_pop_add(flag){
    $('#Modal_add').css('display', 'block');
};

function close_pop_add(flag){
    $('#Modal_add').hide();
};

function open_pop_subject(flag){
    $('#Modal_subject').css('display', 'block');
};

function close_pop_subject(flag){
    $('#Modal_subject').hide();
};

function open_pop_modify(flag){
    $('#Modal_modify').css('display', 'block');
};

function close_pop_modify(flag){
    $('#Modal_modify').hide();
};

function open_pop_enter(flag){
    $('#Modal_enter').css('display', 'block');
};

function close_pop_enter(flag){
    $('#Modal_enter').hide();
};


function trackClick(page_id, job_id){
    var ch_td;
    var core = new Array();
    var support = new Array();
    var url = "../../../WEB-INF/views/admin/curriculum.jsp";
    reset_color();

    $.ajax({
        type: 'POST',
        url: url,
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