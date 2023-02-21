/*
* parameter
* -. page_id : 교과과정 코드
* */
function deleteCurriculum(page_id){
    alert("삭제!");
    /*$.ajax({
        type: 'DELETE',
        url: '/admin/curriculum/delete',
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
            $("#admin_page_content").load("/admin/curriculum #admin_page_content");
        }
    });
}