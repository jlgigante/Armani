<div id="mea">
	<h3><span>{$lesObsessions.title}</span></h3>
	<div id="" class="visuel">
		
		
		{section name=content loop=$lesObsessions.content start=0 loop=1}	
			<a href="{$smarty.const.BASE_URL}/les-obsessions/{$lesObsessions.content[content].id}/{$lesObsessions.content[content].slug}">		
				<img src="{$smarty.const.BASE_URL}/img/art_les-obsessions_300x240_{$lesObsessions.content[content].visuel.0}" alt="{$lesObsessions.content[content].title|strip_tags}" >
				<h4>{$lesObsessions.content[content].title}</h4>
			</a>
			
		{/section}
		
		{*foreach from=$lesObsessions.content key=myId item=i name=foo}
			<a href="{$smarty.const.BASE_URL}/les-obsessions/{$i.id}/{$i.slug}">
			
				{if $smarty.foreach.foo.first}
					<img src="{$smarty.const.BASE_URL}/img/art_les-obsessions_300x240_{$i.visuel.0}" alt="{$i.title|strip_tags}" >
					<h4>{$i.title}</h4>
				{else}
					
				{/if}
			</a> 
		{/foreach*}
		
		
		
	</div>

	<div class="plus">
		<a href="{$smarty.const.BASE_URL}/les-obsessions">voir toutes les Obsessions</a>
	</div>
</div>