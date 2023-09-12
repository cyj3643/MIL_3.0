/*
* parameter
* -. page_id : 교과과정 코드
* */
function deleteCurriculum(page_id){
    alert("삭제!");
    /*$.ajax({
        type: 'DELETE',
        url: '/fil/admin/curriculum/delete',
        async: true,
        data: { "page_id" : page_id
        }
    });*/
    $.ajax({
        type: "POST",
        url: '/admin/curriculum/delete',
        async: true,
        data: { "page_id" : page_id
        },
        success : function (data){
            $("#admin_page_content").load("/fil/admin/curriculum #admin_page_content");
        }
    });
}


var pos = 0;
function HighlightTD(target){
    if(pos){
        pos.style.borderColor = '#C2C2C2';
    }
    target.style.borderColor = '#3462DC';
    pos = target;
}
function saveSubject(){
    alert("정보 저장 완료");

}

function deleteSubject(){
    alert("정보 삭제 완료");
}
function getSubjectInfo(code){
    $.ajax({
            type: 'POST',
            url: '/admin/subject/SubjectInfo',
            async: true,
            data: {"code": code},
            success: function (data) {
                    if (data.subjectDetailList[0] != null){
                        document.getElementById("subject_code").value = (data.subjectDetailList[0].subject);
                        document.getElementById("subject_name").value = (data.subjectDetailList[0].name);
                        document.getElementById("subject_semester").value = (data.subjectDetailList[0].semester);
                        document.getElementById("subject_detail").value = (data.subjectDetailList[0].detail);
                        /* 행에 -1을 해줘야함*/
                        document.getElementById("row").value = (data.subjectPositionList[0].row_id - 1);
                        document.getElementById("column").value = (data.subjectPositionList[0].col_id);
                        if (data.subjectDetailList[0].is_mandatory == 1) {
                            document.getElementById("major").checked = true;
                        }else{
                            if(document.getElementById("major").checked == true) {
                                document.getElementById("major").checked = null;
                            }
                        }
                        if (data.subjectDetailList[0].original_language == 1) {
                            document.getElementById("origin").checked = true;
                        }else{
                            if(document.getElementById("origin").checked == true) {
                                document.getElementById("origin").checked = null;
                            }
                        }

                        var ps_list = ["presubject_select1","presubject_select2","presubject_select3"];
                        var rs_list = ["related_subject_select1", "related_subject_select2", "related_subject_select3"];
                        var jt_list = ["joint1","joint2","joint3"];

                        for(var k =0 ; k<3; k++){

                            document.getElementById(ps_list[k]).options[0].selected = true;
                            document.getElementById(rs_list[k]).options[0].selected = true;
                            document.getElementById(jt_list[k]).value = null;

                        }
                        var ps_code = [];
                        var rs_code = [];
                        var jt_dpt = [];

                        for(var i=0; i<data.subjectDetailList.length; i++) {
                            if (data.subjectDetailList[i].pre_subject_code != null) {
                                ps_code[ps_code.length] = data.subjectDetailList[i].pre_subject_code;
                            }
                            if (data.subjectDetailList[i].relate_subject_code != null) {
                                rs_code[rs_code.length] = data.subjectDetailList[i].relate_subject_code;
                            }
                            if (data.subjectDetailList[i].joint_department != null) {
                                jt_dpt[jt_dpt.length] = data.subjectDetailList[i].joint_department;
                            }
                        }

                        Array.from(new Set(ps_code));
                        Array.from(new Set(rs_code));
                        Array.from(new Set(jt_dpt));

                        for (var p =0; p < ps_code.length ; p++){
                            const ps = document.getElementById(ps_list[p]);
                            for(var i = 0; i < ps.options.length ; i++) {
                                if (ps.options[i].value == (ps_code[p])) {
                                    ps.options[i].selected = true;
                                }
                            }
                        }
                        for (var r =0; r < rs_code.length ; r++){
                            const rs = document.getElementById(rs_list[r]);
                            for(var i = 0; i < rs.options.length ; i++) {
                                if (rs.options[i].value == (rs_code[r])) {
                                    rs.options[i].selected = true;
                                }
                            }
                        }
                        for (var j =0; j < jt_dpt.length ; j++){
                            document.getElementById(jt_list[j]).value = jt_dpt[j];
                        }

                    } else {

                    }
                }
                ,
        complete: function() {
        },
        error:function(request, status, error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

        }
    });
}
function setSubjectInfoReset(){
    document.getElementById("subject_name").value = null;
    document.getElementById("subject_semester").value = null;
    document.getElementById("subject_detail").value = null;
    /* 행에 -1을 해줘야함*/
    document.getElementById("row").value = null;
    document.getElementById("column").value = null;
    document.getElementById("major").checked = null;
    document.getElementById("origin").checked = null;

    var ps_list = ["presubject_select1","presubject_select2","presubject_select3"];
    var rs_list = ["related_subject_select1", "related_subject_select2", "related_subject_select3"];
    var jt_list = ["joint1","joint2","joint3"];

    for(var k =0 ; k<3; k++){

        document.getElementById(ps_list[k]).options[0].selected = true;
        document.getElementById(rs_list[k]).options[0].selected = true;
        document.getElementById(jt_list[k]).value = null;

    }
}