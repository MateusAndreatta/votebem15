<?php
		$questao1 = $_POST['questao1'];
		$questao2 = $_POST['questao2'];
		$questao3 = $_POST['questao3'];
		$questao4 = $_POST['questao4'];
		$questao5 = $_POST['group1'];
		
		session_start();
		if(isset($_POST['action'])){
			$_SESSION['questao'] = 5;
		}

		if(isset($_SESSION['questao'])){
		if($_SESSION['questao'] == 5){
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
		if($questao4 == 3){
			$contcerto++;
		}else{
			$conterrado++;
		}
		if($questao5 == 3){
			$contcerto++;
		}else{
			$conterrado++;
		}
		
		echo "<script>
				alert('Você acertou $contcerto/5');
				window.location.href = '../index.php';
			
			</script>";
?>	