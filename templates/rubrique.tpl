{extends file="structure.tpl"}

{*block name="diapo"}
	{include file="_diapo.tpl"}
{/block*}

{block name="articles"}
	
	{if isset($rubrique)}
			<h1>{$articles.title}</h1>									
				{foreach from=$articles.content key=myId item=i}
					<article class="liste">
						<div class="visuel">
							<a href="{$smarty.const.BASE_URL}/{$rubrique|escape}/{$i.id}/{$i.slug|escape}"><img src="{$smarty.const.BASE_URL}/img/art_{$rubrique}_300x240_{$i.visuel.0}" alt="{$i.title}" ></a>
						</div>
						
						<div class="contenu">
							<h2><a href="{$smarty.const.BASE_URL}/{$rubrique|escape}/{$i.id}/{$i.slug|escape}">{$i.title}</a></h2>
							
							<p class="mea">						
								{if isset($i.chapeau) && $i.chapeau!= ''}{$i.chapeau|truncate:'200'}{else}{$i.article|truncate:'200'}{/if}
							</p>
							
						</div>						
					</article>	
				{/foreach}
	{/if}
{/block}

{block name="aside"}
	{if isset($rubrique)}		
		{if $rubrique == 'les-salles'}			
			{include file="_mea_les-obsessions.tpl"}
			{include file="_mea_les-interviews.tpl"}
			
		{elseif $rubrique == 'les-obsessions'}
			{include file="_mea_les-salles.tpl"}
			{include file="_mea_les-interviews.tpl"}
		{elseif $rubrique == 'interviews'}		
			{include file="_mea_les-salles.tpl"}
			{include file="_mea_les-obsessions.tpl"}				
		{/if}	
	{/if}
{/block}