<?php
require_once('include/config.php');
include("include/Utils.class.php");
//
/*
if( !isset($_SESSION['code']) || $_SESSION['code'] != true) {
	$urlIdentification = BASE_URL . '/identification'; 
	header("location:" . $urlIdentification);
	exit;
}
*/


if( !isset($_COOKIE['armani-code']) || $_COOKIE['armani-code'] != 'armaniCODE') {
	$urlIdentification = BASE_URL . '/identification?url=' . urlencode(CURRENT_URL); 
	header("location:" . $urlIdentification);
	exit;
}

//	

$rubrique = 'les-histoires';
if(!array_key_exists($rubrique, $menu)){	
	Utils::get404($smarty);
} 
//
include("content.php");

$smarty->assign('code_content', $code_content);
$smarty->assign('vestiaire_content', $vestiaire_content);
$smarty->assign('rubrique', $rubrique);
$smarty->display('index.tpl');