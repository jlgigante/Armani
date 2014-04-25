<?php
require_once('include/config.php');
include("include/Utils.class.php");
//
if(isset($_POST) and !empty($_POST)) {		
	$code_form = $_POST;
	$code = "CODE";			
	//Control formulaire
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
//
$customJS = array(
			'custom_access.js', 
			'bootstrap.min.js',
			);
$smarty->assign('customJS', $customJS);	
//
$smarty->assign('redirect', $_GET['url']);
$smarty->display('acces.tpl');