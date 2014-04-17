{extends file="structure.tpl"}


{block name="content"}

	<section id="acces">
		{*
		<div class="row">
			<div class="col-md-16 text-center bg-h1">
				<h1 class="full-title">Code</h1>				
			</div>			
		</div>
		*}
		
		<div class="row bg-acces">
			
			<div class="col-md-offset-10 col-md-6" style="margin-top: 200px; ">
				<p class="text-center">
					Découvrez en avant-première<br/>l'histoire d’une Obsession<br/>en entrant le code
				</p>
				
				<form role="form" action="{$smarty.const.BASE_URL|escape}/identification" method="post" id="code_form" name="code_form">
					<div class="form-group">
						<input type="password" class="form-control input-sm center-block" id="code" name="code" placeholder="Entrez le code">
					</div>					
					<button type="submit" class="btn btn-default btn-xs center-block">Submit</button>
				</form>
				
				<div id="resultat" style="display:hidden;">
					<p></p>
					{*
					<p class="bg-primary">...</p>
					<p class="bg-success">...</p>
					<p class="bg-info">...</p>
					<p class="bg-warning">...</p>
					<p class="bg-danger">...</p>
					*}
				</div>
				
				
			</div>
		</div>
				
	</section>
	

{/block}


{block name="custom_js"}
	<script>
	var urlHome = "{$smarty.const.BASE_URL}";
	{literal}
  $(function() {
  $(".main").css("padding-top","0px");
  //
    $('#code_form').on('submit', function() { 	    
	    var code = $('#code').val();
	    console.log(code);
	    
	    $("#resultat").hide();
	    $("#resultat p").removeClass();
   	    
	    
        
        if(code == '' ) {
        	$("#resultat").fadeIn();
        	$("#resultat p").addClass("bg-warning").html("HAHAHAHAHAH");           
        } 
        
        else {
        	$('button[type="submit"]').attr("disabled", true);
        	
            $.ajax({
                url: $(this).attr('action'),
                type: $(this).attr('method'),
                data: $(this).serialize(),
                dataType: 'json',
                success: function(json) {
                    if(json.codeRetour == 0) {
                    	$('button[type="submit"]').attr("disabled", true);
						$("#resultat").fadeIn();
                        $("#resultat p").addClass("bg-success").html(json.message);
                        //
                        
                        $(location).attr('href', urlHome);

                    } else {
/*                         alert('Erreur : '+ json.codeRetour); */
						$('button[type="submit"]').attr("disabled", false);
						$("#resultat").fadeIn();
                        $("#resultat p").addClass("bg-danger").html(json.message);
                    }
                }
            });        
            
        }
        
        return false;
    });

  
    });
	{/literal}
</script>
{/block}
