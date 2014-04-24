<?php
require_once('include/config.php');
include("include/Utils.class.php");
//
if( !isset($_SESSION['code']) || $_SESSION['code'] != true) {
	$urlIdentification = BASE_URL . '/identification'; 
	header("location:" . $urlIdentification);
	exit;
}
//
$rubrique = $_GET['rubrique'];
//control rubrique
if(!array_key_exists($rubrique, $menu)){	
	Utils::get404($smarty);
} 
//
include("content.php");
// check content to provide
if($rubrique == 'les-codes') {
	$content = $code_content;
}
elseif($rubrique == 'le-vestiaire'){
	$content = $vestiaire_content;
}
//
$smarty->assign('content', $content);
$smarty->assign('rubrique', $rubrique);
$smarty->display('articles.tpl');