
//$(document).ready(function(e) {
//    $('.md_list').click(function(){
//        $.ajax({ 
//            url: '/brokurly/main_code', 
//            type: "GET",
//            data:{
//                "maincate_id": $(this).attr('value') //this는 우리가 클릭한 태그를 가져옴. 
//            },                           		    //.attr()은 요소(element)의 속성(attribute)의 값을 가져오거나 속성을 추가
//            success: function(data) {
//					console.log("받아온 데이터 : " + data);
//            },
//            error : function() {
//                alert('fail');
//            }
//        })
//    });
//});


$(document).ready(function() {
	$('#practice_btn').click(function() {
		$('#practice_text').val();	// js는 value, jq는 val
		//버튼을 눌렀을 때 작동하는 메서드 함수...
		//controller에 보내기
		$.ajax({	// JSON 타입이 되는거에요!
			url: "/brokurly/customer/practice",
			type: "GET",
			data: {
				"practice_id": $('#practice_text').val() // practice_id 로 오른쪽을 보낼거야
			},
			success:function(data) {	// data는 컨트롤러에서 리턴한 값
			alert("성공");				
			},
			error:function(data) {
			alert("실패");
			}
		})
	});
		

});