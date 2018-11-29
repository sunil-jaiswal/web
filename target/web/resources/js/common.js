var COMMON = {};

COMMON.formData = {
	
		collect : function($form){
			
			var $elements = $form.children().find('[data-custom-input]');
			var inputs = {}; 

			$.each($elements, function(index) {

				var inputType = $(this).data('custom-input');

				var name = "";
				var value = "";

				if(inputType == 'input' || inputType =='textarea') {
					name = $(this).attr('name');
					value = $(this).val();

					if(value === 'undefined' || (value != null && value.trim().length == 0)) {
						value = null;
					}
					
				} else if(inputType == 'select') {
					name = $(this).attr('name');
					value = $(this).val();
					
					if(value === 'undefined' || (value != null && value.trim().length == 0)) {
						value = null;
					}
				} else if(inputType == 'multiselect') { 
					name = $(this).attr('name');
					value = $(this).val();
				}

				if(typeof name !== 'undefined' && name != null && name.trim().length != 0) { 
					inputs[name] = value;
				}
			});
			return inputs;
		}
}

