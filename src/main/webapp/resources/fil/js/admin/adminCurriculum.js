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
                        if (data.subjectDetailList[0].is_mandatory == 1) {
                            document.getElementById("major").checked = true;
                        }else{
                            if(document.getElementById("major").checked == true) {
                                document.getElementById("major").checked = null;
                            }
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