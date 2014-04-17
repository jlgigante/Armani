<div id="mea">
	<h3><span>{$lesSalles.title}</span></h3>
	<div id="" class="visuel">		
		{foreach from=$lesSalles.content key=myId item=i name=foo}
			<a href="{$smarty.const.BASE_URL}/les-salles/{$i.id}/{$i.slug}">
			
				{if $smarty.foreach.foo.first}
					<img src="{$smarty.const.BASE_URL}/img/art_les-salles_670x450_{$i.visuel.0}" alt="{$i.title|strip_tags}" >
					<h4>{$i.title}</h4>
				{else}
					{* Rien *}
				{/if}
			</a> 
		{/foreach}		
	</div>
</div>
