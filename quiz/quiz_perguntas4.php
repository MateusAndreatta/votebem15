<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Vote Bem - Quiz</title>
		<meta charset="UTF-8">
		<link rel="icon" href="../imgs/favicon.ico">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
		<link rel="stylesheet" href="../css/estilo.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	</head>
	<?php
		$questao1 = $_POST['questao1'];
		$questao2 = $_POST['questao2'];
		$questao3 = $_POST['group1'];
		
		session_start();
		if(isset($_POST['action'])){
			$_SESSION['questao'] = 4;
		}

		if(isset($_SESSION['questao'])){
		if($_SESSION['questao'] == 4){
		}else{
			header("Location: quiz_perguntas.php");
		}
	}else{
		header("Location: quiz_perguntas.php");
	}

		$contcerto = 0;
		$conterrado = 0;
		
		if($questao1 == 2){
			$contcerto++;
		}else{
			$conterrado++;
		}
		if($questao2 == 1){
			$contcerto++;
		}else{
			$conterrado++;
		}
		if($questao3 == 1){
			$contcerto++;
		}else{
			$conterrado++;
		}
		
		echo "<script>alert('Você acertou $contcerto/3');</script>";
		
	?>
 