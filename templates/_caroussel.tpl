
			<div class="row-fluid">						
				<div id="myCarousel" class="carousel slide" >
					<ol class="carousel-indicators">
				{foreach from=$article.content.visuel key=myId item=i name=foo}
			    	<li data-target="#myCarousel" data-slide-to="{$myId}"  class="{if $smarty.foreach.foo.first}active{/if}"></li>					  
				{/foreach}
			</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						{**}						
						{foreach from=$article.content.visuel key=myId item=i name=foo}		
											
							<div class="{if $smarty.foreach.foo.first}active{/if} item text-center">
								<img src="{$smarty.const.BASE_URL}/img/art_{$article.ville.slug}_{$rubrique}_768_{$i}" alt="{$article.content.titre|strip_tags}" class="img-responsive"  style="display:block;"> 
								
							{*
							<div class="carousel-caption">
								<h4>IMG ART</h4>
								<p>art_{$article.ville.slug}_{$rubrique}_768_{$i}</p>
		                    </div>
		                    *}
							</div>
						{/foreach}						
					    {**}
					</div>
					<!-- Carousel nav -->
					{*
					<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
					<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
					*}	
				</div>				
			</div>
