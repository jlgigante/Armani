<?php
require_once('include/config.php');
include("include/Utils.class.php");



/* if( isset($_SESSION['code']) && $_SESSION['code'] == true) { */
/*
if( isset($_COOKIE['armani-code']) && $_COOKIE['armani-code'] == 'armaniCODE') {
	header("location:" . BASE_URL);
	exit;
}
*/


//FIXME : Check via le menu
/*
switch ($article) {
	case "street-culture":
		$articles = $streetCulture;
		break;
	case "night-life":
		$articles = $nightLife;
		break;
	case "bons-plans":
		$articles = $bonsPlans;
		break;
	case "playlists":
		$articles = $playlists;
		break;
}
*/

if(isset($_POST) and !empty($_POST)) {		

		$code_form = $_POST;
		$code = "CODE";		
		
		//Control formulaire
/* 		sleep(2); */
		//
		if( $code_form['code'] === $code ){
			$_SESSION['code'] = true;			
			setcookie('armani-code', 'armaniCODE', time() + 3600);//1heure			
			echo json_encode(array('codeRetour'=>0, 'message'=>'code OK', 'redirect' => $code_form['redirect'] ));
			exit;			
		}
		else {
			echo json_encode(array('codeRetour'=>1, 'message'=>'Code incorrect'));
			exit;
		}
		
		
	}

$smarty->assign('redirect', $_GET['url']);
$smarty->display('acces.tpl');