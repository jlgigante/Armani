{extends file="structure.tpl"}
{block name="content"}
	<section id="acces">
		{*
		<div class="row">
			<div class="col-md-16 text-center bg-h1">
				<h1 class="full-title">Code</h1>				
			</div>			
		</div>
		*}		
		<div class="row bg-acces">			
			<div class="col-md-offset-10 col-md-6 col-xs-offset-10 col-xs-6" style="margin-top: 200px;">
				<p class="text-center">
					Découvrez en avant-première<br/>l'histoire d’une Obsession<br/>en entrant le code
				</p>				
				<form role="form" action="{$smarty.const.BASE_URL|escape}/identification" method="post" id="code_form" name="code_form">
					<div class="form-group">
						<input type="password" class="form-control input-sm center-block" id="code" name="code" placeholder="Entrez le code">
						<input type="hidden" name="redirect" value="{$redirect|escape}">
					</div>
					<div id="resultat">
						<p></p>
						{*
						<p class="bg-primary">...</p>
						<p class="bg-success">...</p>
						<p class="bg-info">...</p>
						<p class="bg-warning">...</p>
						<p class="bg-danger">...</p>
						*}
					</div>			
					<button type="submit" class="btn btn-default btn-xs center-block" id="bt-submit">Entrer</button>
				</form>				
			</div>
		</div>				
	</section>
{/block}



