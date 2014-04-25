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
$rubrique = 'les-histoires';
if(!array_key_exists($rubrique, $menu)){	
	Utils::get404($smarty);
} 
//
include("content.php");

$customJS = array(
			'custom_home.js', 
			'bootstrap.min.js',
			);
$smarty->assign('customJS', $customJS);

$smarty->assign('code_content', $code_content);
$smarty->assign('vestiaire_content', $vestiaire_content);
$smarty->assign('rubrique', $rubrique);
$smarty->display('index.tpl');