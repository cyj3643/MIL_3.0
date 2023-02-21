function getMentorDetail(id){
    alert("멘토"+id);
    $.ajax({
        type: 'POST',
        url: '/admin/mentor/detail',
        async: true,
        data: { "id" : id
        },
        success : function (data){
            $("#create_mentor_form").load("/admin/mentor/detail #create_mentor_form");
        }
    });
}