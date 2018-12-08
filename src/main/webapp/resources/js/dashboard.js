
jQuery(function($){
	
	
	var rightArr = [];
	
	$(document).on('change keydown keypress input', 'div[data-placeholder]', function() {

		if (this.textContent) {

			this.dataset.divPlaceholderContent = 'true';

		}

		else {

			delete(this.dataset.divPlaceholderContent);

		}

	});

	
	
    function readURL(input) {
    	
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
            	let destination = $(input).data('destination');
                $('#'+destination).attr('src', e.target.result);
                $('#'+destination).show();
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#file-input,#file-input-write-comment").change(function(){
        readURL(this);
    });

    $( "#editor" ).bind( "input", function() {
    	let content = $(this).text();
    	if(content != null && content != undefined && $.trim(content).length > 0){
    		$(this).parents('.news-feeds-write-comment-wrapper').find('.show-hide-event').show();
    	}else{
    		$(this).parents('.news-feeds-write-comment-wrapper').find('.show-hide-event').hide();
    	}
    });
    
    // image preview
    
	$('.news-feeds-cards .news-feeds-content-img img').on('click', function() {
		$('#make-me-larg').attr('src', $(this).attr('src'));
		$('#image-preview-modal').modal('show');
	});
	
	// job tiles remove
	$(document).off('click', '.job-cards .custom-card-cross').on('click', '.job-cards .custom-card-cross', function(){
		let $target = $(this).parents('.job-cards-col');
		$target.hide('slow', function(){ $target.remove(); });
	})
	
	
    $( "#suggetion-editor-event" ).bind( "input", function() {
    	let content = $(this).text();
    	if(content != null && content != undefined && $.trim(content).length > 0){
    		$(this).parents('.news-feeds-write-comment-wrapper').find('.show-hide-event').show();
    	}else{
    		$(this).parents('.news-feeds-write-comment-wrapper').find('.show-hide-event').hide();
    	}
    });
	
	// chat window handing..
	let userArr = []
	$(document).off('click', '.chat-list-div li').on('click', '.chat-list-div li', function(){

		let liId = $(this).attr('id');
		let name = $(this).data('name');
		if ($.inArray(liId, userArr) != -1){
			  userArr.splice($.inArray(liId, userArr), 1);
			  $('#myForm_'+liId).remove();
			  
		}
		userArr.unshift(liId); 
		var chatTemplate = _.template(Utils.templateDecode($('#chat-popup-container').html()));
		$('body').append(chatTemplate({right: 0, id: liId, name: name }));
		
		showPopupBox();
		
	});
	
	function showPopupBox(){
		
		let windowWidth = window.innerWidth - $('.online-users-container').innerWidth();
		let popupWidth = 350;
		let popupCount =  parseInt(windowWidth/popupWidth);
		var right = 163;
		var arry = userArr.slice(0, popupCount);
		var arry2 = userArr.slice(popupCount);
		
		for(var i = 0; i < arry.length; i++){
			$('#myForm_'+arry[i]).css({
				right : right + 'px',
				display : 'block'
			})
			
			right = right + popupWidth + 5;
		}
		
		for(var j = 0; j < arry2.length ; j++){
			$('#myForm_'+arry2[i]).css({
				right : right + 'px',
				display : 'none'
			})
			right = right + popupWidth;
		}
		
		$('#myForm_'+arry[0]).find('.msg-input').focus();
	}
	
	$(document).off('click','.crossme').on('click','.crossme', function(event){
		
		let liId = $(this).data('id')+'';
		crossChat(liId);
		
	})
	
	// chat box ends
	
	$(document).off('click', '.chat-popup .card-header').on('click', '.chat-popup .card-header', function(){
		
		$card = $(this).parents('.card');
		$body = $card.find('.card-body');
		if($body.hasClass('hide')){
			$body.addClass('display-block').removeClass('hide');
			$card.find('.chat-u-img').show();
			$card.find('.message-count').show();
			$card.find('.message-compose-container').show();
			
		}else{
			$body.removeClass('display-block').addClass('hide');
			$card.find('.chat-u-img').hide();
			$card.find('.message-count').hide();
			$card.find('.message-compose-container').hide();
		}
	})
	
	function crossChat(liId){
		
		event.stopPropagation();
		
		if ($.inArray(liId, userArr) != -1){
			  userArr.splice($.inArray(liId, userArr), 1);
			  $('#myForm_'+liId).remove();
			  
		 }
		showPopupBox();
	}
	
	$(document).off('keyup', '.msg-input').on('keyup', '.msg-input', function(e){
		  if (e.keyCode === 13) {
			  
		  }     // enter
		  if (e.keyCode === 27) {
			  let id = $(this).parents('.card').data('id')+'';
			  crossChat(id);
		  }// esc

	})
	
});



