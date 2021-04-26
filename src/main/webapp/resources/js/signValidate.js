/*
name : 사용자명
email : 이메일
email_check : 이메일 중복확인
email_confirm : 이메일 유효값 설정
tel : 전화번호
password : 비밀번호 
cpassword : 비밀번호 확인
checkbox : 이용약관 체크

*/

/*테스트용
 * email = true; email_check=true; email_confirm = true; password = true; cpassword = true; checkbox = true;
 */

// 아이디 중복 여부 확인
	let email = false;
	let email_check = false;
	let email_confirm = false;
	let password = false;
	let cpassword = false;
	let checkbox = false;

$(()=>{

	// 이메일 매칭시 중복 확인 버튼 활성화
	$("#email").focusout(function(){
		if($("#email").val().match(/([\w-\.]+)@((?:[\w]+\.)+)([a-zA-Z])/)){
			$('#check').removeAttr("disabled","disabled");
			email = true;
		} else {
			$('#check').attr("disabled","disabled");
			email = false;
		}
	})
	
	// 이메일 중복 확인 버튼
	$('#check').click(function(){
		// ajax 통신
		$.ajax({
         	type :'post',
         	data : { "email" : $('#email').val()},               	
         	url : 'member/idCheck.do',
         	contentType : "application/x-www-form-urlencoded; charset=UTF-8",
         	success : suc,
        	error : function(err){
        		alert('error');
        		console.log(err);
        	}
		}); // end of ajax       	
	});
	
	// 이메일 인증 기능
	$('#confirm').click(function(){
		// ajax 통신

	});
	
	// 이용약관 체크
	$('#policy').click(function(){
		checkbox = $("input:checkbox[id='policy']").is(":checked")? true : false;
	})
	
	// 유효성 검사 - 비밀번호 특수문자 여부
	let regx ="/^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/";
	
	$('#password').focusout(pass_validate);
	
	function pass_validate(){
		if( $('#password').val().match(/^(?=.*[a-zA-z])(?=.*[0-7])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{6,12}$/) && $('#password').val().length>=6 && $('#password').val().length<=12 ){
			$("#explaination").css({"color":"black"});
			password = true;
		} else {
			$("#explaination").css({"color":"red"});
			password = false;
		}
	}
	
	// 유효성 검사 - 비밀번호 동일 여부
	$('#password').focusout(pass_same);
	$('#cpassword').focusout(pass_same);
	
	function pass_same(){
		if($('#password').val().length>1){
			if($('#password').val()==$('#cpassword').val()){
				$('#cpassword').css("border-bottom","green solid 1px");
				cpassword = true;
			} else {
				$('#cpassword').css("border-bottom","red solid 1px");
				cpassword = false;
			}			
		} else if($('#password').val().length==0){
			$('#cpassword').css("border","red solid 0px");
			$('#cpassword').css({"border-bottom":"1px solid #ccc"});
		}
	}
	
	
	// 기본 셋팅
	$.extend( $.validator.messages, {
		required: "필수 항목입니다.", 
		remote: "항목을 수정하세요.", 
		email: "유효하지 않은 E-Mail주소입니다.", 
		url: "유효하지 않은 URL입니다.",
		date: "올바른 날짜를 입력하세요.",
		dateISO: "올바른 날짜(ISO)를 입력하세요.", 
		number: "유효한 숫자가 아닙니다.", 
		digits: "숫자만 입력 가능합니다.", 
		creditcard: "신용카드 번호가 바르지 않습니다.", 
		equalTo: "같은 값을 다시 입력하세요.", 
		extension: "올바른 확장자가 아닙니다.", 
		maxlength: $.validator.format( "{0}자를 넘을 수 없습니다. " ), 
		minlength: $.validator.format( "{0}자 이상 입력하세요." ), 
		rangelength: $.validator.format( "문자 길이가 {0} 에서 {1} 사이의 값을 입력하세요." ), 
		range: $.validator.format( "{0} 에서 {1} 사이의 값을 입력하세요." ), 
		max: $.validator.format( "{0} 이하의 값을 입력하세요." ), 
		min: $.validator.format( "{0} 이상의 값을 입력하세요." ) 
	});
	
	//유효성 검사를 적용
	$('#registerForm').validate({
		rulse : {"name" : {
			required : true
		},
	
		"email" : {
			required : true
		},
		
		"tel" : {
			required : true,
			  digits : true,
			  maxlength: 11
		},
		
		"password" : {
			required:true, minlength:6, maxlength:12
		},
		
		"confirm-password" : {
			required:true, equalTo : "#password"
		}},
		
		messages : {
        	"name" : {required:"이름 필드가 필요합니다."},
        	"password" : {required:"비밀번호 필드가 필요합니다."},
        	"confirm-password" : {required:"비밀번호 확인 필드가 필요합니다.", equalTo:"입력한 비밀번호가 일치합니다."}
        }
	}); 
	
	// 이메일 인증키 관련 사항
	$('#confirm').click(function(){
		console.log("이메일 인증키 발송")
		if(email_check==true){
			// ajax 통신
			$.ajax({
	         	type :'post',
	         	data : { "email" : $('#email').val()},               	
	         	url : 'emailAuth/sendingEmail.do',
	         	contentType : "application/x-www-form-urlencoded; charset=UTF-8",
	         	
			}); // end of ajax    
		}
		
		alert("인증 메일 전송 완료 : 사용하는 메일에 따라 최대 5분 정도의 시간이 걸릴 수 있습니다. 스팸메일함도 확인해주세요.")
	})
	
	// 제출 버튼을 tab으로 옮겨서 들어오는 경우
	$('#submit_btn').focus(function(){
		// 이메일 인증 여부 최종 확인
		ajax_email_check();
	})
	
	// 제출 버튼에 마우스 올라갈 때
	$('#submit_btn').hover(function(){
		// 이메일 인증 여부 최종 확인
		ajax_email_check();
	})
	
	// 회원가입 버튼 클릭시 submit 발동 조건
	$('#submit_btn').click(function(){
		
		if(email_confirm == false){
			alert("이메일 인증이 아직 완료되지 않았습니다");
			return;
		}
		
		// 최종 검사
		console.log(email == true, email_check == true, email_confirm == true, 
			password == true, cpassword == true, checkbox == true);
		
		// 제출
		if(email == true && email_check == true && email_confirm == true && 
			password == true && cpassword == true && checkbox == true){
			$('#registerForm').submit(); 			
		}
		
	})

})

function ajax_email_check(){
	// 이메일 인증 여부 최종 확인
	if(email_check==true && email_confirm==false){
		// ajax 통신
		$.ajax({
         	type :'post',
         	data : { "email" : $('#email').val()},               	
         	url : 'emailAuth/signUp.do',
         	contentType : "application/x-www-form-urlencoded; charset=UTF-8",
         	success : email_auth_suc
//        	,error : function(err){
//        		alert('error');
//        		console.log(err);
//        	}
		}); // end of ajax    
	}
}

function email_auth_suc(data) {
	if(data == "1"){
		email_confirm = true;
	} else {
		email_confirm = false;
	}
}
	
function suc(data){
	if(data == "1"){
		$("#check_id").val("이미 사용중인 이메일입니다.");
		email_check = false;
	} else {
		$("#check_id").val("사용가능한 이메일입니다.");
		$("#email").attr("readonly", true);
		email_check = true;
	}
}

function err(e){
	console.log("에러발생: "+e);
}
