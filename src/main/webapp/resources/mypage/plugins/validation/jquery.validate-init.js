$(document).ready(function() {
    jQuery.validator.addMethod("regx", function(value, element) {
            return this.optional(element) || /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/.test(value);
    });
$(".form-valide").validate({
    ignore: [],
    errorClass: "invalid-feedback animated fadeInDown",
    errorElement: "div",
    errorPlacement: function(e, a) {
        jQuery(a).parents(".form-group > div").append(e)
    },
    highlight: function(e) {
        jQuery(e).closest(".form-group").removeClass("is-invalid").addClass("is-invalid")
    },
    success: function(e) {
        jQuery(e).closest(".form-group").removeClass("is-invalid"), jQuery(e).remove()
    },
    
    rules: {
        "val-username": {
            required: !0,
            minlength: 3
        },
        "password": {
        	required: !0
        },
        "password2": {
        	required: !0,
            regx: true
        },
        "password3": {
        	required: !0,
            equalTo: "#password2"
        },
        "val-select2": {
            required: !0
        },
        "val-select2-multiple": {
            required: !0,
            minlength: 2
        },
        "val-suggestions": {
            required: !0,
            minlength: 5
        },
        "val-skill": {
            required: !0
        },
        "val-currency": {
            required: !0,
            currency: ["$", !0]
        },
        "val-website": {
            required: !0,
            url: !0
        },
        "val-phoneus": {
            required: !0,
            phoneUS: !0
        },
        "val-digits": {
            required: !0,
            digits: !0
        },
        "val-number": {
            required: !0,
            number: !0
        },
        "val-range": {
            required: !0,
            range: [1, 5]
        },
        "val-terms": {
            required: !0
        }
    },
    messages: {
        "val-username": {
            required: "Please enter a username",
            minlength: "Your username must consist of at least 3 characters"
        },
        "password": {
        	required: "비밀번호를 입력해주세요."
        },
        "password2": {
        	required: "변경할 비밀번호를 입력해주세요.",
            regx: "비밀번호 형식이 틀렸습니다."
        },
        "password3": {
        	required: "변경할 비밀번호를 입력해주세요.",
            equalTo: "변경할 비밀번호와 같지 않습니다."
        },
        "val-select2": "Please select a value!",
        "val-select2-multiple": "Please select at least 2 values!",
        "val-suggestions": "What can we do to become better?",
        "val-skill": "Please select a skill!",
        "val-currency": "Please enter a price!",
        "val-website": "Please enter your website!",
        "val-phoneus": "Please enter a US phone!",
        "val-digits": "Please enter only digits!",
        "val-number": "Please enter a number!",
        "val-range": "Please enter a number between 1 and 5!",
        "val-terms": "You must agree to the service terms!"
    },
    invalidHandler:function(form, validator){
    	var errors = validator.numberOfInvalids();
    	if(errors){
    		alert(validator.errorList[0].message);
    	}
    },
    submitHandler: function(){		
    	if(confirm("수정하시겠습니까?")){
		document.form.action="passedit2.my";
		document.form.submit();
    	}
    }
});

});