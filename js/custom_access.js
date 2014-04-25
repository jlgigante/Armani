/*
 * ACCESS
 */

$(function() {
	$(".main").css("padding-top","0px");
	//
	$('#code_form').on('submit', function() { 	    
	    var code = $('#code').val();
	    $("#resultat").hide();
	    $("#resultat p").removeClass();    
	    //
	    if(code == '' ) {
	    	$("#resultat").fadeIn();
	    	$("div.form-group").addClass("has-error");
	    	$("#resultat p").addClass("bg-warning").html("Saisissez le code");           
	    } 
	    else {
    		$('button[type="submit"]').attr("disabled", true);
    		//    	
	        $.ajax({
	            url: $(this).attr('action'),
	            type: $(this).attr('method'),
	            data: $(this).serialize(),
	            dataType: 'json',
	            success: function(json) {
	            	if(json.codeRetour == 0) {
	                	$('button[type="submit"]').attr("disabled", true);
	                    $(location).attr('href', json.redirect);
	                } else {
						$('button[type="submit"]').attr("disabled", false);
						$("#resultat").fadeIn();
	                    $("div.form-group").addClass("has-error");
	                    $("#resultat p").addClass("bg-warning").html(json.message);	                    
	                }
	            }
	        });
	    }
	    return false;
	});
});