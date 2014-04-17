<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{if isset($article.content.titre)}{$article.content.titre|strip_tags} - {/if}{if isset($article.content.titre)}{$article.content.titre|strip_tags} - {/if}Vivez l'experience Priceless de MasterCard</title>
        <meta name="description" content="Le nouvelObs - Supplément Partenaire - Londres ou New-York ? MasterCard Priceless Paris{if isset($article)} - {$article.content.titre|strip_tags}{/if}">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        {**}
        <meta property="og:title" content="{if isset($article)}{$article.content.titre|strip_tags}{else}{$smarty.const.SITE_NAME}{/if}"/>
		<meta property="og:type" content="{if isset($article)}article{else}website{/if}"/>
		<meta property="og:url" content="{$smarty.const.CURRENT_URL}"/>
		<meta property="og:image" content="{if isset($article)}{$smarty.const.BASE_URL}/img/{if $rubrique == 'playlists'}ard{else}art{/if}{$article.ville.slug}_{$rubrique}_{if $rubrique == 'playlists'}665{else}768{/if}_{$article.content.visuel.0}{else}{$smarty.const.BASE_URL}/img/hp_img_share.jpg{/if}"/>
		<meta property="og:site_name" content="MasterCard Priceless"/>
		<meta property="og:description" content="{if isset($article.content.chapeau) && !empty($article.content.chapeau)}{$article.content.chapeau|strip_tags}{else} Obsessions - supplément partenaire - Londres ou New-York ? MasterCard Priceless Paris{/if}"/>
		{**}
		<link rel="stylesheet" href="{$smarty.const.BASE_URL}/css/main.css" rel="stylesheet">
		<link rel="stylesheet" href="{$smarty.const.BASE_URL}/css/parallax.css" rel="stylesheet">

		<link rel="stylesheet" type="text/css" href="http://referentiel.nouvelobs.com/css/obsess;manifest.css?t=1374676806">
		<link href="{$smarty.const.BASE_URL}/img/logo32x32.jp" rel="shortcut icon">
		<link href="{$smarty.const.BASE_URL}/img/logo32x32.jpg" type="image/jpg" rel="icon">
    </head>
    <body class="bg-body">
    {* ING SHR FB*} 
    <img src="{$smarty.const.BASE_URL}/img/hp_img_share.jpg" alt="" style="display:none;">


    <div id="scroll-down">
	     <img src="{$smarty.const.BASE_URL}/img/scroll-down.png" alt="">
    </div>
    




	<div id="test" style="width:100px; height:100px; position:fixed; left: 10px;display:block;  z-index:999999;">
		<p id="infos" style="display:inline-block;"></p>			
	</div>


<div id="wait">
	<h1>Attends</h1>	
</div>

	{*
	<menu id="menu">	
		<a href="#slide1" class="scroll">slide111</a> | <a href="#slide22" class="scroll">slide22</a> | <a href="#slide2" class="scroll">slide2</a> | <a href="#slide3" class="scroll">slide3</a> | <a href="#footer" class="scroll">footer</a> | 
		<div id="underline">			
		</div>
	</menu>	*}





<div class="container-fluid" >
	{* NAV *}
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">		
	    	<div class="container-fluid" >
		        	<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"  style="display:none;">
		            	<span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			        </button>	 
	       		<div class="header">	       
			        <div class="row-fluid ">
			        	<div class="span16 text-center">
				        	<h3>
				        		<a class="brand" href="http://obsession.nouvelobs.com/" target="_blank">
				        			<img src="{$smarty.const.BASE_URL}/img/logo_nouvelobs_header.png" alt="Le nouvel Observateur" class="img-responsive">
				        			<span>{$smarty.const.SITE_NAME}</span>
				        		</a>
				        	</h3>
			        	</div>
			        </div>			        
			        <div class="row-fluid partenaire"> 
			        	<div class="span16 text-center">         	
			        		<p>
			        			Londres ou New-York ? <a href="http://www.priceless.com/" onclick="window.open('http://uniprix.nouvelobs.com/RealMedia/ads/click_lx.ads/CHALLENGESECO/Mastercard/x72/OasDefault/MASTERCARD_CC_PriceLess_1113/297142/1'); return false;"><img src="{$smarty.const.BASE_URL}/img/logo_mastercard_header.png" alt="MasterCard" class="img-responsive"></a>
			        			</p>		        	
			        	</div>
			        </div>			        
			        <div class="row-fluid baseline">
			        	<div class="span16 text-center">
			        		<p>Vivre des moments inoubliables quelle que soit votre destination, ça n’a pas de prix</p>
			        	</div>
			        </div>		  
		        </div>
		       {*
		        <div >
		        	<a href="#slide1" class="scroll">slide1</a> | <a href="#slide2" class="scroll">slide2</a> | <a href="#slide3" class="scroll">slide3</a> | <a href="#footer" class="scroll">footer</a> | <span id="test-menu-infos"></span>
		        </div>
		        	*}
		        <!--  	 -->
		        	
		          	<div class="nav-collapse collapse nav-parallax">
		          		<ul class="nav">
			          		<li class="active">
			          			<a href="#slide1" class="scroll" ><span>slide1</span></a>
			          		</li>	
			          		<li>
			          			<a href="#slide2" class="scroll" id="bt-slide2"><span>slide2</span></a>
			          		</li>	
			          		<li>
			          			<a href="#slide3" class="scroll"><span>slide3</span></a>
			          		</li>			          
			          	</ul>	
			          	
		          		{*include file="_menu.tpl"*}
		          	</div>
		        <!--/.nav-collapse -->	
	        </div>	          
	      </div>
	 </div>
	{* FIN NAV *}

</div>




	{*
	<div id="test-menu" style=" z-index:999999;position: absolute; margin:0px auto; width:300px; height:50px;  text-align:center; display:block; line-height:50px;">
		
	</div>
	*}


<div id="wrap" style="top:200px;">


	
	<div id="slide1">	
		<div class="container-fluid" >			
			<div class="row-fluid">
				<div class="span10 offset3 text-center" style="margin-top:306px;">
					<img src="{$smarty.const.BASE_URL}/img/slide1_content.png" alt="">					
				</div>
			</div>			
		</div>	
	</div> 
	
	<div id="resp-slide1">	
		<div class="container-fluid" >			
			<div class="row-fluid">
				<div class="span16 text-center">
					<img src="{$smarty.const.BASE_URL}/img/hp_resp_intro.jpg" alt=""  class="img-responsive">					
				</div>
			</div>			
		</div>	
	</div>
	
	<!--#slide1-->
	
	
	<div id="slide2" >
		<div class="container-fluid" >				
			<div class="row-fluid" >	
				<div class="span16 text-center" style="background: rgba(0, 0, 0, 0.61);margin-top:393px; ">				
					<p style="padding:10px 5px 5px; vertical-align:middle;">« Here is London / Home of the brash, outrageous and free » chantaient les Smiths dans les années 1980, captant l’attractivité jamais démentie de la capitale du Royaume-Uni, temple exubérant de la pop, de la mode et de la créativité iconoclaste depuis les swinging sixties. 30 ans plus tôt, le bluesman Jimmy Reed s’époumonait sur son tube New York : « I’m going to New York / I’m going if I have to walk », cristallisant déjà les fantasmes autour de cette ville, autre destination ultime de toutes les folies, de tous les espoirs. 
Londres et New York, donc, deux pôles d’attraction, deux aimants, qui brillent de mille feux, mille légendes, jamais atténuées, toujours avivées, éternellement désirées. Alors, où partir ? Manhattan ou Portobello? Brooklyn ou Waterloo Bridge ? Quelle que soit la destination, une chose est certaine : les expériences vécues sur place, dans chacune de ces villes, sont toujours uniques, singulières.<br>
Nightclubbing, déambulations et dérives insouciantes à la recherche des traces du street art et de l’art contemporain, pauses volées au temps dans des bars ou des restaurants dont on se passe l’adresse sous le manteau… Même si le séjour est court, le déplacement à New York ou Londres n’est jamais vain. On en revient baigné de nouveautés, l’inspiration dynamisée et surtout, les yeux remplis d’histoires à raconter. <br>
Tiens, et si, au lieu de choisir, on s’arrêtait dans l’une puis dans l’autre ? L’essentiel, c’est de voyager, dériver loin du quotidien, s’endormir à Londres, se réveiller à New York – et ça, ça n’a pas de prix.</p>	
				</div>								
			</div>			
		</div>		
	</div> <!--#slide2-->
	
	
	<div id="resp-slide2"  >
		<div class="container-fluid" >				
			<div class="row-fluid" >	
				<div class="span16 text-center" style="background: rgba(0, 0, 0, 0.61); ">				
					<p style="padding:10px 5px 5px; vertical-align:middle;">« Here is London / Home of the brash, outrageous and free » chantaient les Smiths dans les années 1980, captant l’attractivité jamais démentie de la capitale du Royaume-Uni, temple exubérant de la pop, de la mode et de la créativité iconoclaste depuis les swinging sixties. 30 ans plus tôt, le bluesman Jimmy Reed s’époumonait sur son tube New York : « I’m going to New York / I’m going if I have to walk », cristallisant déjà les fantasmes autour de cette ville, autre destination ultime de toutes les folies, de tous les espoirs. 
Londres et New York, donc, deux pôles d’attraction, deux aimants, qui brillent de mille feux, mille légendes, jamais atténuées, toujours avivées, éternellement désirées. Alors, où partir ? Manhattan ou Portobello? Brooklyn ou Waterloo Bridge ? Quelle que soit la destination, une chose est certaine : les expériences vécues sur place, dans chacune de ces villes, sont toujours uniques, singulières.<br>
Nightclubbing, déambulations et dérives insouciantes à la recherche des traces du street art et de l’art contemporain, pauses volées au temps dans des bars ou des restaurants dont on se passe l’adresse sous le manteau… Même si le séjour est court, le déplacement à New York ou Londres n’est jamais vain. On en revient baigné de nouveautés, l’inspiration dynamisée et surtout, les yeux remplis d’histoires à raconter. <br>
Tiens, et si, au lieu de choisir, on s’arrêtait dans l’une puis dans l’autre ? L’essentiel, c’est de voyager, dériver loin du quotidien, s’endormir à Londres, se réveiller à New York – et ça, ça n’a pas de prix.</p>	
				</div>								
			</div>			
		</div>		
	</div>
	
	
	<!--#slide2-->
	
	
	<div id="slide3">		
		<div class="container-fluid" >		
			<div class="row-fluid" >			
				<div class="row-fluid" style="margin-top:200px;">			
					<div class="span1" style=" border-right:1px solid white;padding-bottom:10px;min-height:160px;">
						<p style="text-align:center;font-size:1.250em;line-height:1.250em;color: rgba(255, 255, 255, 0.59);">L<br>O<br>N<br>D<br>R<br>E<br>S</p>
					</div>				
					
					<div class="span10 offset1 text-align" style=" font-size:0.938em;border-left:1px solid white;padding:0px 0px 10px 10px;min-height:160px;">
						<h2 style="margin-bottom:20px;">NEWS DE LA SEMAINE : Jake & Dinos Chapman exposés à Londres</h2>					
						<p>
							Artistes controversés, les frères Chapman dévoilent leur univers gore et torturé dans l’une des plus prestigieuses galleries de Londres. Sculptures de corps mutants et tronqués, nez menteurs ou minutieuses maquettes de scène d’horreurs historiques : leur travail a la beauté de réveiller les consciences. 
						</p>
						<p>
							Jake & Dinos Chapman : Come and See - Jusqu’au 9 février à la Serpentine Gallery (Kensington Gardens)<br>
							<a href="http://www.serpentinegalleries.org/exhibitions-events/jake-and-dinos-chapman-come-and-see" target="_blank">http://www.serpentinegalleries.org/exhibitions-events/jake-and-dinos-chapman-come-and-see</a><br>
							Retrouvez toutes les adresses d’Obsession dans notre guide spécial Londres. 
						</p>						
					</div>
				</div>
				{**}
				<div class="row-fluid">	
					<div class="span4 hp-mur bg-londres-street-culture" onclick="window.location='{$smarty.const.BASE_URL}/londres/street-culture';">
						<div class="span16 mur-libelle-top">
							<p>
								<a href="{$smarty.const.BASE_URL}/londres/street-culture">street</a>
							</p>						
						</div>
					</div>					
					<div class="span4 hp-mur bg-londres-night-life" onclick="window.location='{$smarty.const.BASE_URL}/londres/night-life';">
						<div class="span16 mur-libelle-top">
							<p>
								<a href="{$smarty.const.BASE_URL}/londres/night-life">night</a>
							</p>
						</div>
					</div>
					<div class="span4 hp-mur bg-londres-bons-plans" onclick="window.location='{$smarty.const.BASE_URL}/londres/bons-plans';">
						<div class="span16 mur-libelle-top">
							<p>
								<a href="{$smarty.const.BASE_URL}/londres/bons-plans">bons</a>
							</p>
						</div>
					</div>
					<div class="span4 hp-mur bg-londres-playlists" onclick="window.location='{$smarty.const.BASE_URL}/londres/playlists/here-is-london';">
						<div class="span16 mur-libelle-top">
							<p>
								<a href="{$smarty.const.BASE_URL}/londres/playlists/here-is-london">play</a>
							</p>
						</div>
					</div>				
				</div>	
				{**}
				<div class="row-fluid">	
					<div class="span16" style="background: white;min-height:7px;padding:0;">					
					</div>
				</div>
				{**}
				<div class="row-fluid">	
					<div class="span4 hp-mur bg-new-york-street-culture" onclick="window.location='{$smarty.const.BASE_URL}/new-york/street-culture';">
						<div class="span16 mur-libelle-bottom">
							<p><a href="{$smarty.const.BASE_URL}/new-york/street-culture">culture</a></p>
						</div>
					</div>
					<div class="span4 hp-mur bg-new-york-night-life" onclick="window.location='{$smarty.const.BASE_URL}/new-york/night-life';">
						<div class="span16 mur-libelle-bottom">
							<p><a href="{$smarty.const.BASE_URL}/new-york/night-life">life</a></p>
						</div>
					</div>
					<div class="span4 hp-mur bg-new-york-bons-plans" onclick="window.location='{$smarty.const.BASE_URL}/new-york/bons-plans';">
						<div class="span16 mur-libelle-bottom">
							<p><a href="{$smarty.const.BASE_URL}/new-york/bons-plans">plans</a></p>
						</div>
					</div>
					<div class="span4 hp-mur bg-new-york-playlists" onclick="window.location='{$smarty.const.BASE_URL}/new-york/playlists/im-going-to-new-york';">
						<div class="span16 mur-libelle-bottom">
							<p><a href="{$smarty.const.BASE_URL}/new-york/playlists/im-going-to-new-york">lists</a></p>
						</div>
					</div>				
				</div>
				{**}
				<div class="row-fluid">
					<div class="span1 offset2" style="border-left:1px solid white; min-height:160px;">
						<p style="text-align:center;font-size:1.250em;line-height:1.250em;"></p>
					</div>
					
					<div class="span1 offset12" style="padding-top: 10px;border-left:1px solid white;color: rgba(255, 255, 255, 0.59);">
						<p style="text-align:center;font-size:1.250em;line-height:1.250em;">N<br>E<br>W<br><br>Y<br>O<br>R<br>K</p>
					</div>
				</div>
				{**}
			</div>
		</div>	
		
		<div class="container-fluid" >
			{*FOOTER*}
			{include file="_footer.tpl"}
			{*FIN FOOTER*}
		</div>
		{**}		
	</div> <!--#slide3-->
	
	<div id="resp-slide3">
		<div class="container-fluid" >			
			{* DEBUT NEWS*}
			<div class="row-fluid" >				
				<div class="span16">
					<h2 style="margin-bottom:20px;">NEWS DE LA SEMAINE : Jake & Dinos Chapman exposés à Londres</h2>					
					<p>
						Artistes controversés, les frères Chapman dévoilent leur univers gore et torturé dans l’une des plus prestigieuses galleries de Londres. Sculptures de corps mutants et tronqués, nez menteurs ou minutieuses maquettes de scène d’horreurs historiques : leur travail a la beauté de réveiller les consciences. 
					</p>
					<p>
						Jake & Dinos Chapman : Come and See - Jusqu’au 9 février à la Serpentine Gallery (Kensington Gardens)<br>
						<a href="http://www.serpentinegalleries.org/exhibitions-events/jake-and-dinos-chapman-come-and-see" target="_blank">http://www.serpentinegalleries.org/exhibitions-events/jake-and-dinos-chapman-come-and-see</a><br>
						Retrouvez toutes les adresses d’Obsession dans notre guide spécial Londres. 
					</p>						
				</div>	
			</div>
			{* FIN NEWS*}
			
			{*DEBUT Titre Londres*}
			<div class="row-fluid" >	
				<div class="span16" >
					<h2>LONDRES</h2>
				</div>
			</div>
			{* FIN TITRE LONDRES*}
			{*MENU LONDRES*}
			<div class="row-fluid">	
					<div class="span4 hp-mur bg-londres-street-culture" onclick="window.location='{$smarty.const.BASE_URL}/londres/street-culture';">
						<div class="span16 mur-libelle-top">
							<p>
								<a href="{$smarty.const.BASE_URL}/londres/street-culture">street-culture</a>
							</p>						
						</div>
					</div>					
					<div class="span4 hp-mur bg-londres-night-life" onclick="window.location='{$smarty.const.BASE_URL}/londres/night-life';">
						<div class="span16 mur-libelle-top">
							<p>
								<a href="{$smarty.const.BASE_URL}/londres/night-life">night-life</a>
							</p>
						</div>
					</div>
					<div class="span4 hp-mur bg-londres-bons-plans" onclick="window.location='{$smarty.const.BASE_URL}/londres/bons-plans';">
						<div class="span16 mur-libelle-top">
							<p>
								<a href="{$smarty.const.BASE_URL}/londres/bons-plans">bons plans</a>
							</p>
						</div>
					</div>
					<div class="span4 hp-mur bg-londres-playlists" onclick="window.location='{$smarty.const.BASE_URL}/londres/playlists/here-is-london';">
						<div class="span16 mur-libelle-top">
							<p>
								<a href="{$smarty.const.BASE_URL}/londres/playlists/here-is-london">playlists</a>
							</p>
						</div>
					</div>				
				</div>
			{*FIN MENU LONDRES*}
			
			{*
			<div class="row-fluid">	
				<div class="span16" style="background: white;min-height:7px;padding:0;">					
				</div>
			</div>
			*}
			
			{*DEBUT Titre New york*}
			<div class="row-fluid" >	
				<div class="span16" >
					<h2>New-York</h2>
				</div>
			</div>
			{* FIN TITRE NEWYORK*}
			
			{**}
			<div class="row-fluid">	
				<div class="span4 hp-mur bg-new-york-street-culture" onclick="window.location='{$smarty.const.BASE_URL}/new-york/street-culture';">
					<div class="span16 mur-libelle-top">
						<p><a href="{$smarty.const.BASE_URL}/new-york/street-culture">street-culture</a></p>
					</div>
				</div>
				<div class="span4 hp-mur bg-new-york-night-life" onclick="window.location='{$smarty.const.BASE_URL}/new-york/night-life';">
					<div class="span16 mur-libelle-top">
						<p><a href="{$smarty.const.BASE_URL}/new-york/night-life">night-life</a></p>
					</div>
				</div>
				<div class="span4 hp-mur bg-new-york-bons-plans" onclick="window.location='{$smarty.const.BASE_URL}/new-york/bons-plans';">
					<div class="span16 mur-libelle-top">
						<p><a href="{$smarty.const.BASE_URL}/new-york/bons-plans">bons plans</a></p>
					</div>
				</div>
				<div class="span4 hp-mur bg-new-york-playlists" onclick="window.location='{$smarty.const.BASE_URL}/new-york/playlists/im-going-to-new-york';">
					<div class="span16 mur-libelle-top">
						<p><a href="{$smarty.const.BASE_URL}/new-york/playlists/im-going-to-new-york">playlists</a></p>
					</div>
				</div>				
			</div>			
			{*FOOTER*}
			{include file="_footer.tpl"}
			{*FIN FOOTER*}			
		</div>
	</div>
	{**}
</div>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
<script type="text/javascript" src="js/main.js"></script>
{include file="_traceurs.tpl"}
</body>
</html>
