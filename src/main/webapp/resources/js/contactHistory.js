
$(function() {
	$(".qr_td").mouseenter(function() {
		$(this).css({"cursor":"pointer"});
	});
	
	$(".qr_td").mouseleave(function() {
		$(this).css({"cursor":"default"});
	});

//	$(".qr_td").click(function() {
//		$(location).attr('href', getContextPath() + '/contact/qr_check.do');
//	})
})
