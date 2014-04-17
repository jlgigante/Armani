<div id="mea">
	<h3><span>{$interviews.title}</span></h3>
	<div id="" class="visuel">

		{*section name=content loop=$interviews.content start=0 loop=1}	
			<a href="{$smarty.const.BASE_URL}/interviews/{$interviews.content[content].id}/{$interviews.content[content].slug}">		
				<img src="{$smarty.const.BASE_URL}/img/art_interviews_300x240_{$interviews.content[content].visuel.0}" alt="{$interviews.content[content].title|strip_tags}" >
				<h4>{$interviews.content[content].title}</h4>
			</a>
		{/section*}
		
		{*section name=content loop=$interviews.content start=0 loop=1}	
			<a href="{$smarty.const.BASE_URL}/interviews/{$interviews.content[content].id}/{$interviews.content[content].slug}">		
				<img src="{$smarty.const.BASE_URL}/img/art_interviews_300x240_{$interviews.content[content].visuel.0}" alt="{$interviews.content[content].title|strip_tags}" >
				<h4>{$interviews.content[content].title}</h4>
			</a>
			
		{/section*}
		
		{foreach from=$interviews.content key=myId item=i name=foo}
			<a href="{$smarty.const.BASE_URL}/interviews/{$i.id}/{$i.slug}">
			
				{if $smarty.foreach.foo.first}
					<img src="{$smarty.const.BASE_URL}/img/art_interviews_300x240_{$i.visuel.0}" alt="{$i.title|strip_tags}" >
					<h4>{$i.title}</h4>
				{else}
					
				{/if}
			</a> 
		{/foreach}
		
		
		
	</div>
	<div class="plus">
		<a href="{$smarty.const.BASE_URL}/interviews">voir toutes les interviews</a>
	</div>

</div>