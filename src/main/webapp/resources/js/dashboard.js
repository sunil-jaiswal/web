/*$(document).ready(function(){
	
	$('#leftmenutab a').click(function(e) {
		  e.preventDefault();
		  $(this).tab('show');
		});

		// store the currently selected tab in the hash value
		$("ul.nav-tabs > li > a").off("shown.bs.tab").on("shown.bs.tab", function(e) {
			debugger;
		  var id = $(e.target).attr("href").substr(1);
		  window.location.hash = id;
		});

		// on load of the page: switch to the currently selected tab
		var hash = window.location.hash;
		$('#myTab a[href="' + hash + '"]').tab('show');
});*/
jQuery(function($){
	
	
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
});



