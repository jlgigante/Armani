$(function() {
	if( document.URL.split('#')[1] != undefined ){
		var hash = document.URL.split('#')[1];
		var param = hash.split('.')[0];
		$("#cinegraph"+param).ScrollTo({ 
			duration: 2600, 
			easing:'easeInOutQuart'
		});		
	}

/*
	$("img.lazy").lazyload({
		effect : "fadeIn"
	});
*/ 	   	
});