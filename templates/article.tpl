{extends file="structure.tpl"}
{block name="navigation"}
	{include file="_menu.tpl"}	
{/block}
{block name="content"}
	<section id="article">
		<div class="row">
			<div class="col-md-16 text-center bg-h1 hide">
				<h1 class="full-title">Article</h1>
			</div>
		</div>		
		
		
		
		<article id="cinegraph">
				<div class="row">
					<div class="col-md-16 big-visuel">
						<img src="{$smarty.const.BASE_URL|escape}/images/{$content.articles.0.bigVisuel}" data-original="{$smarty.const.BASE_URL|escape}/images/{$content.articles.0.bigVisuel}" class="lazy" alt=""/>						
					</div>
				</div>
				<div class="row">
					<div class="col-md-16">
						<p class="text-right"></p>							
						{include file="_share.tpl"}			
					</div>			
				</div>				
				<div class="row">
					<div class="col-md-16">
						<p class="text-center">{$content.articles.0.article}</p>
					</div>			
				</div>
			</article>
		
		
		
		
	</section>
{/block}
{block name="custom_js"}
{/block}


