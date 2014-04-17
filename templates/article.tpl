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
						<!-- AddThis Button BEGIN -->
						<div class="addthis_toolbox addthis_default_style addthis_32x32_style  pull-right" 							
						addthis:url="{$smarty.const.BASE_URL|escape}/{$rubrique}#{$smarty.foreach.content.iteration}"
				        addthis:title="{$smarty.const.SITE_NAME} - {$content.titre}"
				        addthis:description="{$i.article}"></a>
				        <a class="addthis_button_facebook" style="padding:0px; padding-left:2px;"></a>
						<a class="addthis_button_twitter" style="padding:0px; padding-left:2px;"></a>
						<a class="addthis_button_google_plusone_share" style="padding:0px; padding-left:2px;"></a>
						<a class="addthis_button_pinterest_share" style="padding:0px; padding-left:2px;"></a>
						</div>
							<script type="text/javascript">var addthis_config = {ldelim}"data_track_addressbar":false{rdelim};</script>
						<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5226511e1203decf"></script>
						<!-- AddThis Button END -->						
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


