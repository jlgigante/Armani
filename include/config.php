<?php
/*
 * Fichier de config
 */



define("SITE_NAME", "Armani Code - Histoire d'une obsession");
define("SITE_DESCRIPTION", "Armani Code");
/* error_reporting('E_ALL'); */
//
include("include/smarty_conf.php");

$param = $_GET;

$lang_authorized = array("fr", "en");
if( @!$param['lang'] && @!in_array($param['lang'], $lang_authorized) ) {
	//die("DDd");
	$param['lang'] = 'fr';
}
define('COUNTRY_CODE',  $param['lang'] ) ;


if( $_SERVER["SERVER_NAME"] == 'armani-code.obsession.nouvelobs.com' ) {
	

	$baseUrl = "http://armani-code.obsession.nouvelobs.com";
	$currentUrl = $baseUrl.$_SERVER["REQUEST_URI"];
/* 	http://projets.troisw-agenceweb.com/lilpourlautre/site/ */
	$_SERVER['DOCUMENT_ROOT'] = $_SERVER['DOCUMENT_ROOT'];

}

else {
	
	$serverProt = "";
	if( $_SERVER["SERVER_PORT"] == "8888") {
		$serverProt = ":".$_SERVER["SERVER_PORT"];
	}
	
	$baseUrl = "http://".$_SERVER["SERVER_NAME"].$serverProt;
	
	
	
	$currentUrl = $baseUrl.$_SERVER["REQUEST_URI"];

}


define("BASE_URL", $baseUrl);
define("CURRENT_URL", $currentUrl);


/* var_dump(BASE_URL); */
/* var_dump(basename(CURRENT_URL)); */
/* var_dump($_SERVER); */

/*SESSION*/
session_start();



/*
 * MEnu
 */

$menu = array(
				'les-histoires'			=>	'les histoires', 
				'les-codes'			=>	'les codes', 
				'le-vestiaire'		=>	'le vestiaire',
			);

$smarty->assign('menu', $menu);


/*
 * COntenu
 */

//include_once('content.php');






