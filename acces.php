<?php
require_once('include/config.php');
include("include/Utils.class.php");



if( isset($_SESSION['code']) && $_SESSION['code'] == true) {

	header("location:" . BASE_URL);
	exit;
}

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
			echo json_encode(array('codeRetour'=>0, 'message'=>'Code ok'));
			exit;
		}
		else {
			echo json_encode(array('codeRetour'=>1, 'message'=>'Code KO'));
			exit;
		}
		
		
	}



$smarty->display('acces.tpl');