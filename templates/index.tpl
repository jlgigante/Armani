{extends file="structure.tpl"}

{block name="navigation"}
	{include file="_menu.tpl"}	
{/block}


{block name="content"}

	<section id="histoires"><!-- debut les histoires -->
		<div class="row">
			<iframe src="//player.vimeo.com/video/92120978?color=ffffff" width="500" height="188" class="iframe-player" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>	
		</div>
		<div class="row navigation">
	      	<div class="col-md-4 col-sm-4 col-xs-8">
	      		<h1 class="text-center">Découvrez<br/>son histoire</h1>
	      		<p>A la terrasse d'un café, Miss A. lit son journal. Un homme passe devant elle, la subjugue... Miss A. le traque jusqu'à son hôtel. Son obsession pour lui envahit ses pensées...<br/>
	      		Pour fêter la sortie d'Armani Code, Obsession a conçu trois films qui racontent la fascination d'une femme pour un artiste de la séduction.</p>
	      			
	      	</div>
	      	<div class="col-md-4 col-sm-4 col-xs-8 bloc-vignette">
	      		<img src="{$smarty.const.BASE_URL|escape}/images/histoire_vignette_01_on.jpg" alt="Miss A. alone in Paris" class="vignette"/>	      		      		
	      		<div class="text-center action action-on" data-id="92120978">
	      			<div class="playing" style="display:block;">en lecture</div>
	      			<div class="bt-play"  style="display:none;"><img src="{$smarty.const.BASE_URL|escape}/images/bt-play.png" alt="Play"/></div>
	      		</div>	      		
	      	</div>
	      	<div class="col-md-4 col-sm-4 col-xs-8 bloc-vignette">
	      		<img src="{$smarty.const.BASE_URL|escape}/images/histoire_vignette_02_on.jpg" alt="Miss A. met someone" class="vignette" />
	      		<div class="text-center action" data-id="92121381" >
	      			<div class="playing">en lecture</div>
	      			<div class="bt-play"><img src="{$smarty.const.BASE_URL|escape}/images/bt-play.png" alt="Play"/></div>
	      		</div>
	      	</div>
	      	<div class="col-md-4 col-sm-4 col-xs-8 bloc-vignette">
	      		<img src="{$smarty.const.BASE_URL|escape}/images/histoire_vignette_03_on.jpg" alt="Miss A. is falling" title="Miss A. is falling" class="vignette" />
	      		<div class="text-center action" data-id="92121573">
	      			<div class="playing">en lecture</div>
	      			<div class="bt-play"><img src="{$smarty.const.BASE_URL|escape}/images/bt-play.png" alt="Play"/></div>
	      		</div>
	      	</div>
	   </div>
	   

	</section><!-- fin les histoires -->
	
	
	<section id="les-codes"><!-- debut les codes -->	
		<div class="row">
			<div class="col-md-16 text-center bg-h1">
				<h1 class="full-title">Les Codes</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-16">
				<!-- -->
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						{foreach from=$code_content.articles key=myId item=i name=code_content}	
							 <li data-target="#myCarousel" data-slide-to="{$smarty.foreach.code_content.index}" class="{if $smarty.foreach.code_content.first}active{/if}"></li>
						{/foreach}						
					</ol>
					<div class="carousel-inner">
						{foreach from=$code_content.articles key=myId item=i name=code_content}							
							<div class="item vignette {if $smarty.foreach.code_content.first}active{/if}"  data-link="{$smarty.const.BASE_URL|escape}/les-codes#{$smarty.foreach.code_content.iteration}">
								<a href="{$smarty.const.BASE_URL|escape}/les-codes#{$smarty.foreach.code_content.iteration}" title=""><img {*data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"*} alt="First slide" src="{$smarty.const.BASE_URL|escape}/images/{$i.visuel}"></a>
								<div class="carousel-caption">								
									<h2 class="hide">{$i.title}</h2>
									<p>{$i.article}.</p>
									{*<p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>*}
								</div>							
							</div>							
						{/foreach}									
					</div>
					{*
					<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					*}
				</div>
				<!-- -->
			</div>
		</div>
	</section><!-- fin les codes -->
	
	<section id="le-vestiaire"><!-- debut Le vestiaire -->
		<div class="row">	
			<div class="col-md-16 text-center bg-h1">
				<h1 class="full-title">Le vestiaire</h1>
			</div>
		</div>

		<div class="row vignettes">	
			<div class="col-md-8 col-xs-8 vignette" data-link="{$smarty.const.BASE_URL|escape}/le-vestiaire#1">						
	      		<div class="details">
	      		
	      			<h2>vignette 1 Lorem ipsum</h2>
	      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor.</p>	
	      		</div>
	      	</div>
	      	<div class="col-md-4 col-xs-4 vignette" data-link="{$smarty.const.BASE_URL|escape}/le-vestiaire#2">
	      		<div class="details">
	      			<h2>vignette 2 Lorem ipsum</h2>
	      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor.</p>	
	      		</div>
	      	</div>
	      	<div class="col-md-4 col-xs-4 vignette"  data-link="{$smarty.const.BASE_URL|escape}/le-vestiaire#3">
	      		<div class="details">
	      			<h2>vignette 3 Lorem ipsum</h2>
	      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor.</p>	
	      		</div>
	      	</div>
	      	
	      	<div class="col-md-4 col-xs-4 vignette" data-link="{$smarty.const.BASE_URL|escape}/le-vestiaire#4">
	      		<div class="details">
	      			<h2>vignette 4 Lorem ipsum</h2>
	      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor.</p>
	      		</div>
	      	</div>
	      	<div class="col-md-12 col-xs-12 vignette" data-link="{$smarty.const.BASE_URL|escape}/le-vestiaire#5">
	      		<div class="details">
	      			<h2>vignette 5 Lorem ipsum</h2>
	      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor.</p>	
	      		</div>
	      	</div>		
			
		</div>	
	</section><!-- fin Le vestiaire -->

{/block}

{block name="custom_js"}
<script>
{literal}
$(function() {

	//
	$('.vignette').click(function(){
/* 		alert($(this).data('link')); */
		var link = $(this).data('link');
		window.location = link;
	});


	//Carousel
   	    $('#myCarousel').carousel({
	   	    interval:500000,
	   	    pause: "true", 
	   	    cycle: 'false'	   	    
	   	});	   	   	
	//Les histoires	   	   	
	   	var videoUrl = '//player.vimeo.com/video/'; 
	   	var videoId = '';
	   	var playerCustom = '?color=c3c3c3&autoplay=1';
	   	
	   	$('.action').click(function() {
	   		//
			if( $(this).hasClass("action-on") ) {
				return false;
			}
			//
			$(".action").removeClass("action-on");	   			
			$(".bt-play").fadeIn(500).css('display', 'block'); 
			$(".playing").fadeOut(300); 
	   		video = videoUrl + $(this).data('id') + playerCustom;
	   		//		   		
	   		$(".iframe-player").attr("src", video);
	   		$(".bt-play", this).fadeOut(300);
	   		$(".playing", this).fadeIn(500);
	   		$(this).addClass("action-on");	   		
	   	});	   	   	
});
{/literal}
</script>
{/block}

