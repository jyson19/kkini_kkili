// 컨택 관련 script

//페이지 번호 이동
$('#pagingDiv a').click(function(e) {
	e.preventDefault();
	$('#pageNum').val($(this).attr("href"));
	pagingForm.submit();
});
//게시글에 pageNum넘기기
$('table a').click(
	function(e) {
		e.preventDefault();
		var html = "<input type='hidden' name='idx' value='"+ $(this).attr("href") + "'>";
		$('#pagingFrm').append(html);
		$('#pagingFrm').attr("action", "getContent.do");
		$('#pagingFrm').submit();
});
		
		
		
		
// 마감시간 카운트 다운
const countDownTimer = function (id, date, i) { 
	//alert('체크');
	var _vDate = new Date(date); // 전달 받은 일자 
	var _second = 1000; 
	var _minute = _second * 60; 
	var _hour = _minute * 60; 
	var _day = _hour * 24; 
	var timer; 
	function showRemaining() { 
		var now = new Date(); 
		var distDt = _vDate.setDate(_vDate.getDate()+1) - now; 
		if (distDt < 0) { 
			clearInterval(timer); 
			classtag2[i].textContent = '마감 완료'; 
			class_button[i].textContent = '　마감　';
			class_button[i].style = 'pointer-events: none; cursor: default; border: 1px solid grey; color: grey;';
			return; 
		} 
		var days = Math.floor(distDt / _day); 
		var hours = Math.floor((distDt % _day) / _hour); 
		var minutes = Math.floor((distDt % _hour) / _minute); 
		var seconds = Math.floor((distDt % _minute) / _second); 
		//document.getElementById(id).textContent = date.toLocaleString() + "까지 : "; 
		classtag1[i].textContent = hours + '시간 '; 
		classtag1[i].textContent += minutes + '분 '; 
		classtag1[i].textContent += seconds + '초'; } 
		timer = setInterval(showRemaining, 10); 
} 
var dateObj = new Date(); 
dateObj.setDate(dateObj.getDate() + 1); 
var classtag1 = document.getElementsByClassName("count_time");
var classtag2 = document.getElementsByClassName("count_time_con");
var class_button = document.getElementsByClassName("contact-submit");
console.log(classtag2);
for(var i=0; i < classtag1.length; i++) {
	countDownTimer('count_time', classtag1[i].textContent, i); 
}
