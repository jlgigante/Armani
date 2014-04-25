<?php
require_once('include/config.php');
include("include/Utils.class.php");
//
try {
    $date = new DateTime('NOW');
    $today = $date->format('Y-m-d');
    //
    $date->setDate(2014, 05, 01);    
    $open = $date->format('Y-m-d');
    //
    if ( $today <= $open ){
	    if( !isset($_COOKIE['armani-code']) || $_COOKIE['armani-code'] != 'armaniCODE') {
			$urlIdentification = BASE_URL . '/identification?url=' . CURRENT_URL; 
			header("location:" . $urlIdentification);
			exit;
		}
	}
} catch (Exception $e) {
/*     echo $e->getMessage(); */
    Utils::get404($smarty);
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


$customJS = array(
			'custom_articles.js', 
			'jquery-scrollto.js',
			);
$smarty->assign('customJS', $customJS);
//
$smarty->assign('content', $content);
$smarty->assign('rubrique', $rubrique);
$smarty->display('articles.tpl');