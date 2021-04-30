
$(function() {
	$(".qr_td").mouseenter(function() {
		$(this).css({"cursor":"pointer"});
	});
	
	$(".qr_td").mouseleave(function() {
		$(this).css({"cursor":"default"});
	});

//	$(".qr_td").click(function() {
//		alert("무야호")
//		let param = {
//				memberId : $("#div_memberId").text().trim()
//		};
//		
//		$.ajax({
//			type : 'post',
//			data : param,
//			url : '../kkini_kkili/contact/qr_check.do',
//			success : function() {
//				console.log("memberId 값 전달");	
//			}
//		});
//	})
})
