$(document).off('click', '.login-btn-evnt').on('click', '.login-btn-evnt', function(){
	var inputJSON = COMMON.formData.collect($('.login-form-div'));
	$.ajax({
		type 		: 'post',
		url  		: 'authenticate',
		data 		: JSON.stringify(inputJSON),
		contentType	: "application/json;charset=utf-8", 
		dataType	: 'json', 
		success		: function(response) {
			console.log(response);
		}
	});
});

$(document).off('click', '#join_me_evt').on('click', '#join_me_evt', function(){
	var inputJSON = COMMON.formData.collect($('.sign-up-form'));
	$.ajax({
		type 		: 'post',
		url  		: 'signmeup',
		data 		: JSON.stringify(inputJSON),
		contentType	: "application/json;charset=utf-8", 
		dataType	: 'json', 
		success		: function(response) {

		}
	});
});