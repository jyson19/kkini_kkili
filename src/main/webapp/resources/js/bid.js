// 컨택참가(bid) 관련 스크립트
// 마감시간 카운트 다운
const countDownTimer = function (id, date) { 
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
			tag2.textContent = '마감 완료'; 
			tag_button.textContent = '　마감　';
			tag_button.style = 'pointer-events: none; cursor: default; border: 1px solid grey; color: grey;';
			return; 
		} 
		var days = Math.floor(distDt / _day); 
		var hours = Math.floor((distDt % _day) / _hour); 
		var minutes = Math.floor((distDt % _hour) / _minute); 
		var seconds = Math.floor((distDt % _minute) / _second); 
		//document.getElementById(id).textContent = date.toLocaleString() + "까지 : "; 
		tag1.textContent = hours + '시간 '; 
		tag1.textContent += minutes + '분 '; 
		tag1.textContent += seconds + '초'; } 
		timer = setInterval(showRemaining, 10); 
} 
var dateObj = new Date(); 
dateObj.setDate(dateObj.getDate() + 1); 
var tag1 = document.getElementById("count_time");
var tag2 = document.getElementById("count_time_con");
var tag_button = document.getElementById("bid");
console.log(tag2);
countDownTimer('count_time', tag1.textContent); 


// 입찰
$(function() {
	// $("#bid").click(function() {
	$(document).on("click","#bid",function(){

		let param = {
			lvc : $("#count_time_con").text().trim(),
			lastValue : $("#lastValue").text().trim(),
			hostId : $("#hostId").text().trim(),
			memberId : $("#memberId").text().trim(),
			loginFlag : $("#loginFlag").text().trim(),
			bidPrice : $("#bid_price").val().trim(),
			contactId : $("#contactId").text().trim()
		};
	
		$.ajax({
			type : 'post',
			data : param,
			url : 'bid_after.do',
			success : parseData
		});
	
		function parseData(result) {
			$("#bid_result").text(result);
			var result = result.trim();
			var iValue1 = result.indexOf(":");
			var iValue2 = result.indexOf("완료");
			
			// 최고가 변경시
			if(iValue1 != -1) {
				result = result.split(":");
				$("#bid_result").text(result[0]);
				$("#lastValue").text(result[1]);
				
			// 입찰 완료시 최고가 금액 변경
			} else if(iValue2 != -1){
				$("#lastValue").text(addComma($("#bid_price").val()) + "원");

				// 최근 입찰내역 업데이트
				$('tbody > tr > td:nth-child(2)').addClass('recentBid-1');
				$('tbody > tr > td:nth-child(3)').addClass('recentBid-2');
				$('tbody > tr > td:nth-child(4)').addClass('recentBid-3');

				let rb1 = document.getElementsByClassName("recentBid-1");
				let rb2 = document.getElementsByClassName("recentBid-2");
				let rb3 = document.getElementsByClassName("recentBid-3");

				for( var i = 2; i > 0; i--) {
					$(".recentBid-1")[i].textContent = rb1[i - 1].textContent;
					$(".recentBid-2")[i].textContent = rb2[i - 1].textContent;
					$(".recentBid-3")[i].textContent = rb3[i - 1].textContent;
				}
				
				$(".recentBid-1")[0].textContent = $("#upName").textContent;
				$(".recentBid-2")[0].textContent = $("#upBidTime").textContent;
				$(".recentBid-3")[0].textContent = $("#upPrice").textContent;
			}
		}
		
		//천단위 콤마 펑션
		function addComma(value){
			value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			return value; 
		}
	})
})
