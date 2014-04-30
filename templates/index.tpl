{extends file="structure.tpl"}
{block name="navigation"}
	{include file="_menu.tpl"}	
{/block}
{block name="content"}
	<section id="histoires"><!-- debut les histoires -->
		<div class="row">
			<iframe src="//player.vimeo.com/video/92120978?color=ffffff&autoplay=1" width="500" height="188" class="iframe-player" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>	
		</div>
		<div class="row navigation">
	      	<div class="col-md-4 col-sm-4 col-xs-8">
	      		<h1 class="text-center">Découvrez<br/>son histoire</h1>
	      		<p>
	      			{*A la terrasse d'un café, Miss A. lit son journal. Un homme passe devant elle, son parfum la subjugue… Une fois le garçon trop vite parti, Miss A. le suit….Son obsession pour ce garçon ne la quitte plus. Jusqu’où sera-t-elle prête à le suivre ?<br/>
Pour célébrer le nouveau parfum Armani Code, Obsession a conçu 3 films qui racontent l'obsession d'une femme captivée par un homme qui maitrise tous les codes de séduction sans en avoir l'air. Suivez-la pour tenter de comprendre ce qu'il laisse dans son sillage. *}
Pour célébrer le nouveau parfum Armani Code, Obsession a conçu trois films racontant l’histoire d’une obsession. A la terrasse d'un café, Miss A. lit son journal. Elle ne sait pas encore que sa vie va être bouleversée. Un homme passe devant elle, son parfum la subjugue... Une fois le garçon parti, Miss A. le suit….Jusqu’où ira son obsession ?</p>	      			
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
				<h1 class="full-title">{$code_content.titre}</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-16">
				<!-- -->
				<div id="myCarousel" class="carousel slide c-fade" data-ride="carousel">
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
									<p class="text-center">{$i.article}.</p>
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
				<h1 class="full-title">{$vestiaire_content.titre}</h1>
			</div>
		</div>
		<div class="row vignettes">			
			{foreach from=$vestiaire_content.articles key=myId item=i name=vestiaire_content}						
				<div class="col-md-{$i.cols} col-xs-{$i.cols} vignette" data-link="{$smarty.const.BASE_URL|escape}/le-vestiaire#{$i.id}">	
					<img src="{$smarty.const.BASE_URL|escape}/images/{$i.visuel}" alt="{$i.article}"  class="visuel">					
	      			<div class="details">	      		
	      				<h2>{$i.title}</h2>
	      				<p>{$i.article}</p>	
	      			</div>
	      		
	      			
	      		
	      		</div>												
			{/foreach}			
		</div>	
	</section><!-- fin Le vestiaire -->
{/block}


