<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html xmlns:fb="http://ogp.me/ns/fb#"><!--<![endif]-->
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{$smarty.const.SITE_NAME}</title>
        <meta name="description" content="{$smarty.const.SITE_DESCRIPTION}">
<!--         <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
        {**}
        <meta property="og:title" content="{if isset($article)}{$article.content.titre|strip_tags}{else}{$smarty.const.SITE_NAME}{/if}"/>
		<meta property="og:type" content="{if isset($content)}article{else}website{/if}"/>
		<meta property="og:url" content="{$smarty.const.CURRENT_URL}"/>
		<meta property="og:image" content="{if isset($content)}{$smarty.const.BASE_URL}/images/{$content.articles.0.visuel}{else}{$smarty.const.BASE_URL}/images/hd_logo_giorgio-armani.png{/if}"/>
		<meta property="og:site_name" content="{$smarty.const.SITE_NAME}"/>
		<meta property="og:description" content="{if isset($content)}{$content.articles.0.article}{else}{$smarty.const.SITE_DESCRIPTION}{/if}"/>
	    <!-- Bootstrap -->
	    <link href="{$smarty.const.BASE_URL|escape}/css/bootstrap.css" rel="stylesheet" media="screen">
	    <link href="{$smarty.const.BASE_URL|escape}/css/style.css" rel="stylesheet" media="screen">
	    <link href="http://referentiel.nouvelobs.com/favicon/tempsreel/favicon.ico" rel="shortcut icon">
	    <link href="http://referentiel.nouvelobs.com/favicon/tempsreel/favicon.gif" type="image/gif" rel="icon">
	    <link rel="stylesheet" type="text/css" href="http://referentiel.nouvelobs.com/css/obsess;manifest.css?t=1374676806"  media="screen">
	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
	      <script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
	    <![endif]-->
    </head>
<body>
<script>
{literal}
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-49651093-1', 'nouvelobs.com');
  ga('send', 'pageview');
{/literal}
</script>	
<!--
Début du tag DoubleClick Floodlight : Veillez à ne pas supprimer
Nom d'activité de ce tag : armani-code_espace-dedie-obsession
URL de la page Web où doit être placé le tag : http://armani-code.obsession.nouvelobs.com/identification
Ce tag doit être placé entre les tags <body> et </body>, le plus près possible du tag d'ouverture.
Date de création : 04/23/2014
-->
<script type="text/javascript">
var axel = Math.random() + "";
var a = axel * 10000000000000;
document.write('<img src="http://ad.doubleclick.net/activity;src=4232944;type=ARMAR0;cat=arman0;ord=' + a + '?" width="1" height="1" alt=""/>');
</script>
<noscript>
<img src="http://ad.doubleclick.net/activity;src=4232944;type=ARMAR0;cat=arman0;ord=1?" width="1" height="1" alt=""/>
</noscript>
<!-- Fin du tag DoubleClick Floodlight : Veuillez ne pas supprimer -->




<div class="container header"><!-- debut header -->
	<div class="page-header">	
		<div class="row">
<!-- 			<div class="col-md-4 col-xs-16 col-md-offset-6 text-center"><a href="http://obsession.nouvelobs.com" target="_blank"><img src="{$smarty.const.BASE_URL|escape}/images/hd_logo_obsession.png" alt="Obesssion" width="225" height="75"/></a></div> -->
			<div class="col-md-16 col-xs-16 text-center"><a href="http://obsession.nouvelobs.com" target="_blank"><img src="{$smarty.const.BASE_URL|escape}/images/hd_logo_obsession.png" alt="Obesssion" width="225" height="75"/></a></div>			
		</div>		
		<div class="row">
			<div class="col-md-8 col-xs-16 col-md-offset-4 text-center">
				<div class="title center-block"><a href="{$smarty.const.BASE_URL|escape}">Histoire d'une Obsession<br/><img src="{$smarty.const.BASE_URL|escape}/images/hd_logo_giorgio-armani.png" width="145" height="53" alt="Armani Code" /></a></div>				
			</div>
		</div>	
	</div>
	
	{block name="navigation"}	
	{/block}
	
</div><!-- fin header -->

<div class="container main"> <!-- debut container main -->
	{**debut bloc content*}
	{block name="content"}
		Content
	{/block}
	{*fin bloc content*}
	
	{*FOOTER*}
	{include file="_footer.tpl"}	
	
</div><!-- fin container main -->


<!-- /container -->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="{$smarty.const.BASE_URL}/js/jquery.lazyload.min.js" type="text/javascript"></script>
<script type="text/javascript" src="{$smarty.const.BASE_URL|escape}/js/jquery-scrollto.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="{$smarty.const.BASE_URL}/js/bootstrap.min.js"></script>
{block name="custom_js"}{/block}
{include file="_traceurs.tpl"}        
</body>
</html>
