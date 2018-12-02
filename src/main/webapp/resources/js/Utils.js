_.templateSettings = {
	interpolate: /\<\@\=(.+?)\@\>/gim,
	evaluate: /\<\@([\s\S]+?)\@\>/gim,
	escape: /\<\@\-(.+?)\@\>/gim
};

Utils = {
		
		templateDecode: function(h){
	        var firefox = /firefox/.test(navigator.userAgent.toLowerCase());
	        
	        var raw = navigator.userAgent.match(/Chrom(e|ium)\/([0-9]+)\./);
	        var chromeVersion = raw ? parseInt(raw[2], 10) : 0;
	        
	        // return as it is for firefox and chrome (version above 65)
	        if(firefox || chromeVersion>65){
	            return h;
	        }else{
	            return $.parseHTML( h )[0].data;
	        }
	    }
		
}