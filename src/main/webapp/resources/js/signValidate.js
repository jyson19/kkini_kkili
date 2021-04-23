/*
user-name : 사용자명
email : 이메일
email_check : 이메일 중복확인
email_confirm : 이메일 유효값 설정
tel : 전화번호
password : 비밀번호 
cpassword : 비밀번호 확인
checkbox : 이용약관 체크

*/

// 아이디 중복 여부 확인
	let name = false;
	let email = false;
	let email_check = false;
	let email_confirm = false;
	let password = false;
	let cpassword = false;
	let checkbox = false;
	
	// 중복확인 버튼
	let overlap_button = '#check';

$(()=>{

	// 중복확인은 글자 길이가 더 클 때 활성화
	let email_input = "#email";
	$(name_input).focusout(function(){
		if($(name_input).val().length >= 1){
			$('#check').removeAttr("disabled","disabled");
		} else {
			$('#check').attr("disabled","disabled");
		}
	})
	
	// 유효성검사 - 아이디
	$(overlap_button).click(function(){
		ck_all();
	});
	
	// 유효성 검사 - 비밀번호 
	$('#wrap > form > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=password]').focusout(function(){
		if($(this).val().length >= 1){
			$('#wrap > form > table > tbody > tr:nth-child(3) > td:nth-child(2) > input[type=password]').removeAttr("disabled","disabled");
			pass_same();
		} else {
			$('#wrap > form > table > tbody > tr:nth-child(3) > td:nth-child(2) > input[type=password]').attr("disabled","disabled");
			$('#wrap > form > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=password]').attr("placeholder","비밀번호 1자 이상 입력 바랍니다.");
			pass_pass = false;
			pass_same();
			ck_all();
		}
	})
	
	// 유효성 검사 - 비밀번호 동일 여부
	
	$('#wrap > form > table > tbody > tr:nth-child(3) > td:nth-child(2) > input[type=password]').focusout(pass_same);
	
	function pass_same(){
		if($('#wrap > form > table > tbody > tr:nth-child(3) > td:nth-child(2) > input[type=password]').val() == $('#wrap > form > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=password]').val()){
			$('#wrap > form > table > tbody > tr:nth-child(3) > td:nth-child(2) > input[type=password]').css("border","green solid 1px");
			pass_pass = true;
			ck_all();
		} else {
			$('#wrap > form > table > tbody > tr:nth-child(3) > td:nth-child(2) > input[type=password]').css("border","red solid 1px");
			pass_pass = false;
			ck_all();
		}
	}
	
	// 유효성 검사 이름
	$('#wrap > form > table > tbody > tr:nth-child(4) > td:nth-child(2) > input[type=text]').focusout(function(){
		if($(this).val().length >= 1){
			name_pass = true;
			ck_all();
		} else {
			name_pass = false;
			ck_all();
		}
	})
	
})
	
// ID check
function openWin(){
	$.ajax({
		type : 'get',
		url : 'CheckId.jsp',
		data : { userId : $('input[name=id]').val() },
		dataType : 'text',
		success : suc,
		error : err,
	});
}

function suc(result){
	if(result.trim() == "NO"){
		$("#wrap > form > table > tbody > tr:nth-child(1) > td:nth-child(2) p").remove();
		$(overlap_button).append("<p>이미 사용중인 아이디입니다</p>");
		id_pass = false;
		ck_all();
	} else {
		$("#wrap > form > table > tbody > tr:nth-child(1) > td:nth-child(2) p").remove();
		$(overlap_button).append("<p>사용가능한 아이디입니다</p>");
		id_pass = true;
		ck_all();
	}
}

function err(e){
	// alert("에러발생");
	console.log(e);
}

// 유효성 검사 전체 판정
function ck_all(){
	if( id_pass == true && pass_pass == true && name_pass == true ){
		$('#wrap > form > table > tbody > tr:nth-child(7) > td:nth-child(1) > input[type=submit]').removeAttr("disabled","disabled");
	} else {
		$('#wrap > form > table > tbody > tr:nth-child(7) > td:nth-child(1) > input[type=submit]').attr("disabled","disabled");
	}
}