<article>






	<h1><a href="{$smarty.const.BASE_URL}/les-salles/1/persol-10-films-10-obsessions">{$lessalles.title}</a></h1>	
	<div id="diapo">
		<div id="content">		
			{foreach from=$lessalles.content  key=myId item=i}				
				<div id="{$i.id}">
					<h2>
						<a href="{$smarty.const.BASE_URL}/les-salles/{$i.id}/{$i.slug}">{$i.title|truncate:52}</a>												
					</h2>
					<p class="mea">
						{$i.chapeau|truncate:255|nl2br}
					</p>
					<a href="{$smarty.const.BASE_URL}/les-salles/{$i.id}/{$i.slug}"><img src="{$smarty.const.BASE_URL}/img/diapo_home_992x245_{$i.visuel.0}" alt="{$i.title|strip_tags}"></a>				
				</div>
			{/foreach}			
		</div>
		<div id="vignettes" >
			<!-- "previous page" action -->
			<a class="prev browse left"></a>				
			<!-- root element for scrollable -->
			<div class="scrollable" id="scrollable">
			  <!-- root element for the items -->
			  <div class="items">					
			    <!-- 1-5 -->
			    <div>
			    	<ul>
			    		{section name=content loop=$lessalles.content start=1 loop=7}
					    	<li class="{$lessalles.content[content].id}"><a href="{$smarty.const.BASE_URL}/les-salles/{$lessalles.content[content].id}/{$lessalles.content[content].slug}"><img src="{$smarty.const.BASE_URL}/img/art_les-salles_670x450_{$lessalles.content[content].visuel.0}" alt="{$lessalles.content[content].title|strip_tags}"></a></li>
			    		{/section}
				  </ul>					      
			    </div>					
			    <!-- 5-10 -->
			    <div>
			    	<ul>
			    		{section name=content loop=$lessalles.content start=7 loop=12}
 			    			<li class="{$lessalles.content[content].id}"><a href="{$smarty.const.BASE_URL}/les-salles/{$lessalles.content[content].id}/{$lessalles.content[content].slug}"><img src="{$smarty.const.BASE_URL}/img/art_les-salles_670x450_{$lessalles.content[content].visuel.0}" alt="{$lessalles.content[content].title|strip_tags}"></a></li>
			    		{/section}			
				  </ul>					      
			    </div>	  					
			    {*
			    <div>
			    	<ul>
				    	{section name=content loop=$lessalles.content start=11 loop=12}
							<li class="{$lessalles.content[content].id}"><a href="{$smarty.const.BASE_URL}/les-salles/{$lessalles.content[content].id}/{$lessalles.content[content].slug}"><img src="{$smarty.const.BASE_URL}/img/art_les-salles_670x450_{$lessalles.content[content].visuel.0}" alt="{$lessalles.content[content].title|strip_tags}"></a></li>
			    		{/section}			    
				  </ul>					      
			    </div>
			    *}
			  </div>						
			</div>						
			<!-- "next page" action -->
			<a class="next browse right"></a>						
		</div>	
	</div>
</article>
<script>
$(function() {
	 // initialize scrollable
	 $(".scrollable").scrollable();
});

$(document).ready(function(){
	$('#vignettes ul li').each( function( index ) {
	   $(this).hover(function(){
/* 			alert( $(this).attr("id") ); */
			var id = $(this).attr("class");//'thumb'+$(this).html();
/* 			alert(id); */
			$("#content #"+id).fadeIn(100);
			$("#content #"+id).prevAll().fadeOut(100);
			$("#content #"+id).nextAll().fadeOut(100);							
		});
	});
}); 
</script>

