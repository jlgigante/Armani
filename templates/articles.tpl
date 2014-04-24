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
		{foreach from=$content.articles key=myId item=i name=content}												
			{**}
			<article id="cinegraph{$smarty.foreach.content.iteration}">
				<div class="row">
					<div class="col-md-16 big-visuel">
						<img src="{$smarty.const.BASE_URL|escape}/images/{$i.bigVisuel}" data-original="{$smarty.const.BASE_URL|escape}/images/{$i.bigVisuel}" class="lazy" alt=""/>						
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
						<p class="text-center">{$i.article}</p>
					</div>			
				</div>
			</article>				
		{/foreach}	
	</section>
{/block}
{block name="custom_js"}
<script>
{literal}
$(function() {
	//$(location).attr('hash');
/* 	$("body, html").scrollTo(window.location.hash, 2600, {easing:'easeInOutQuart'}); */
/* 	var hash = window.location.hash;	 */
	var hash = document.URL.split('#')[1];
	var param = hash.split('.')[0];
	$("#cinegraph"+param).ScrollTo({ 
		duration: 2600, 
		easing:'easeInOutQuart'
	});
	console.log(param);
	console.log(hash);

/*
	$("img.lazy").lazyload({
		effect : "fadeIn"
	});
*/

 	   	
});
{/literal}
</script>


{/block}


