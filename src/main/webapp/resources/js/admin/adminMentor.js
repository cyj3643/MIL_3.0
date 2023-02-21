function getMentorDetail(id){
    alert("멘토"+id);
    $.ajax({
        type: 'POST',
        url: '/admin/mentor/detail',
        async: true,
        data: { "id" : id
        },
        success : function (data){
            $("#admin_page_content").load("/admin/curriculum #admin_page_content");
        }
    });
}