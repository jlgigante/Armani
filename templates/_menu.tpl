	<div class="row">
		<div class="navbar" role="navigation"><!-- debut nav -->
			<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
				  	<div class="navbar-header">
				    	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					       	<span class="sr-only">Toggle navigation</span>
					       	<span class="icon-bar"></span>
					       	<span class="icon-bar"></span>
						    <span class="icon-bar"></span>
						 </button>
						 {*<a class="navbar-brand" href="#">Menu</a>*}
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav nav-main">
							{*
					     	<li class="active text-center"><a href="#">Les Histoires</a></li>
					       	<li class="text-center"><a href="#">Les Codes</a></li>
					       	<li class="text-center"><a href="#">Le vestiaire</a></li>
					       	*}
					       	{if isset($menu)}
								{foreach from=$menu key=myId item=i}									
									<li class="text-center {if isset($rubrique) && $rubrique == $myId}active{/if}">
										<a href="{$smarty.const.BASE_URL}{if ($myId != 'les-histoires') }/{$myId}{/if}">{$i}</a>
									</li>									
								{/foreach}
							{/if}
					    </ul>				    
					    {**}
					    <ul class="nav navbar-nav navbar-right">
							<li class="text-center fb"><a href="https://www.facebook.com/ARMANI" target="_blank" title="Facebook"><span>Facebook</span></a></li>
						    <li class="text-center twitter"><a href="//twitter.com/armani" target="_blank" title="Twitter"><span>Twitter</span></a></li>
						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
		</div><!-- fin nav -->	
	</div>
