$(()=>{
	// Form값 유효성 체크
    //  - password : 8~16자 영문, 숫자, 특수문자 조합
    //  - confirmPassword : 8~16자 영문, 숫자, 특수문자 조합(비밀번호 확인)

	// 기본 설정 셋팅
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
		minlength: $.validator.format( "특수문자 포함 {0}자 이상 입력하세요." ), 
		rangelength: $.validator.format( "문자 길이가 {0} 에서 {1} 사이의 값을 입력하세요." ), 
		range: $.validator.format( "{0} 에서 {1} 사이의 값을 입력하세요." ), 
		max: $.validator.format( "{0} 이하의 값을 입력하세요." ), 
		min: $.validator.format( "{0} 이상의 값을 입력하세요." ) 
	});
	
	// 레지스터 폼 유효성 검사
    $("#registerForm").validate({
        onfocusout : function (element) {
            $(element).valid();
        },

        rules : {
        	"user-name" : {required:true},
        	"email" : {required : true},
        	"tel" : {required : true, digits : true},
            "password" : {required:true, minlength:8, maxlength:16, regx:/^(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@@#$%^&+=]).*$/},
            "confirm-password" : {required:true, equalTo:"#password"}
        },

        messages : {
        	"user-name" : {required:"아이디 필드가 필요합니다."},
        	"password" : {required:"비밀번호 필드가 필요합니다.", regx:"비밀번호 형식이 잘못되었습니다."},
        	"confirm-password" : {required:"비밀번호 확인 필드가 필요합니다.", equalTo:"입력한 비밀번호가 서로 일치합니다."}
        }, 


        invalidHandler : function(form, validator) {

            var errors = validator.numberOfInvalids();
            if( errors ) 
            {
                $("h3 span.ok").html("(유효성 검사 실패)"); 
                alert(validator.errorList[0].message);
                validator.errorList[0].element.focus();
            }
        }, 

        submitHandler: function(form) {
//            $("h3 span.ok").html("(유효성 검사 성공)"); 
        }

    });

});
	
	
	
	
	// 비밀번호 유효성
//	$.validator.addMethod(
//
//		    "extraMethod",
//
//		    function (value, element) {
//
//		        if(value != "") {
//
//		            reutrn true;
//
//		        } else {
//
//		            return false;
//
//		        }
//
//		    },
//
//		    "값이 없습니다."
//
//		);
//	
//	$("#registerForm").validate({
//	    submitHandler: function(form) {
//	        // 필요에 따라 ajax를 사용한 제출등으로 변경가능.
//	    	alert("z");
//	        form.submit();
//	    }
//	});
