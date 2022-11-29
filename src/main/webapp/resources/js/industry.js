function getVideo(videoCode){
	$.ajax({
			type: 'POST',
			url: '/industry/video',
			async: true,
			data: { "videoCode" : videoCode
			},
			success: function (data) {
				//alert("success"+data.getVideoCode[0].video_link);
				var modal = $("#videoView");
				modal.find(".video_title").empty();
                modal.find(".video_title").append(data.getVideoCode[0].video_title);
				$(".video").attr("src", data.getVideoCode[0].video_link);
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