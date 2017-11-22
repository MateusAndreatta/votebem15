<<<<<<< HEAD
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
		$questao2 = $_POST['group1'];
		
		session_start();
		if(isset($_POST['action'])){
			$_SESSION['questao'] = 3;
		}

		if(isset($_SESSION['questao'])){
		if($_SESSION['questao'] == 3){
		}else{
			header("Location: quiz_perguntas.php");
		}
	}else{
		header("Location: quiz_perguntas.php");
	}
		
	?>
    <style>
        .botaoresposta{
            width: 100%;
        }
        #containerCard{
            width: 80%;
        }
        .perguntatxt{
            font-size: 230%;
        }
        @media (max-width: 850px) {
            #containerCard{
                width: 95%;
            }
        }
    </style>
	<body>
		<main>
			<?php include "../PaginasProcessamento/nav2.php"; ?>
			<nav class="hide-on-small-only">
				<div class="nav-wrapper blue espacamento-lateral">
					<div class="col s12">
						<a href="../index.php" class="breadcrumb">Home</a>
						<a href="quiz_perguntas.php" class="breadcrumb">Quiz - Perguntas</a>
					</div>
				</div>
			</nav>	
			<div class='container'>
				<h1 class='center'>Quiz</h1>   
                <form method="POST" action="quiz_perguntas4.php">
					<div class='row'>
						<div class='col s12 offset-s0 m10 push-m1 pull-m1 offset-l2 l10'>
							<div class='card-panel col s12 center' id='containerCard'>
								<div class='row center'>
									<h1 class='flow-text perguntatxt'>3 - Em que ano se iniciou a ditadura militar?</h1>
								</div> 
								<div class='row center'>
									<img class='img responsive-img'src='../imgs/quiz/Pergunta 3.png'>
								</div> 
								<div class='row'>
									<input type="hidden" name="questao1" value='<?php echo $questao1; ?>'>
									<input type="hidden" name="questao2" value='<?php echo $questao2; ?>'>
									<p>
									  <input name="group1" type="radio" required value='1' id="test1" />
									  <label for="test1">1964</label>
									</p>
									<p>
									  <input name="group1" type="radio" required value="2" id="test2" />
									  <label for="test2">1956</label>
									</p>
									<p>
									  <input name="group1" type="radio" required value="3" id="test3" />
									  <label for="test3">1839</label>
									</p>
									<p>
									  <input name="group1" type="radio" required value="4" id="test4" />
									  <label for="test4">1500</label>
									</p>
								</div>
							</div>
						</div>
					</div>
			</div>   
				<div class="col s12 center">
					<button class="btn waves-effect waves-light blue" type="submit" name="action">Próxima pergunta
						<i class="material-icons right">send</i>
					</button>
				</div>
				</form>
			</div><br>
				<!-- FIM DOS BLOCOS -->		
		</main>
		<footer class="page-footer blue">
			<div class="container">
				<div class="row">
					<div class="col l6 s12">
						<p><img src="../imgs/footer-logo.png"></p>
					</div>
					<div class="col l4 offset-l2 s12">
						<h5 class="white-text">Compartilhe</h5>
						<ul>
							<li><a class="grey-text text-lighten-3" href="#!">Twitter</a></li>
							<li><a class="grey-text text-lighten-3" href="#!">Facebook</a></li>
							<li><a class="grey-text text-lighten-3" href="#!">Instagram</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer-copyright">
				<div class="container">
					© 2017 Copyright - Todos os direitos reservados
				</div>
			</div>
		</footer>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="../js/materialize.min.js"></script>
		<script type="text/javascript" src="../js/custom.js"></script>
	</body>
=======
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
		$questao2 = $_POST['group1'];
		
		session_start();
		if(isset($_POST['action'])){
			$_SESSION['questao'] = 3;
		}

		if(isset($_SESSION['questao'])){
		if($_SESSION['questao'] == 3){
		}else{
			header("Location: quiz_perguntas.php");
		}
	}else{
		header("Location: quiz_perguntas.php");
	}
		
	?>
    <style>
        .botaoresposta{
            width: 100%;
        }
        #containerCard{
            width: 80%;
        }
        .perguntatxt{
            font-size: 230%;
        }
        @media (max-width: 850px) {
            #containerCard{
                width: 95%;
            }
        }
    </style>
	<body>
		<main>
			<?php include "../PaginasProcessamento/nav2.php"; ?>
			<nav class="hide-on-small-only">
				<div class="nav-wrapper blue espacamento-lateral">
					<div class="col s12">
						<a href="../index.php" class="breadcrumb">Home</a>
						<a href="quiz_perguntas.php" class="breadcrumb">Quiz - Perguntas</a>
					</div>
				</div>
			</nav>	
			<div class='container'>
				<h1 class='center'>Quiz</h1>   
                <form method="POST" action="quiz_perguntas4.php">
					<div class='row'>
						<div class='col s10 offset-s2'>
							<div class='card-panel col s12 center' id='containerCard'>
								<div class='row center'>
									<h1 class='flow-text perguntatxt'>3 - Em que ano se iniciou a ditadura militar??</h1>
								</div> 
								<div class='row center'>
									<img class='img responsive-img'src='../imgs/quiz/5a0a2db1ab4ef.png'>
								</div> 
								<div class='row'>
									<input type="hidden" name="questao1" value='<?php echo $questao1; ?>'>
									<input type="hidden" name="questao2" value='<?php echo $questao2; ?>'>
									<p>
									  <input name="group1" type="radio" required value='1' id="test1" />
									  <label for="test1">1964</label>
									</p>
									<p>
									  <input name="group1" type="radio" required value="2" id="test2" />
									  <label for="test2">1956</label>
									</p>
									<p>
									  <input name="group1" type="radio" required value="3" id="test3" />
									  <label for="test3">1839</label>
									</p>
									<p>
									  <input name="group1" type="radio" required value="4" id="test4" />
									  <label for="test4">1500</label>
									</p>
								</div>
							</div>
						</div>
					</div>
			</div>   
				<div class="col s12 center">
					<button class="btn waves-effect waves-light blue" type="submit" name="action">Próxima pergunta
						<i class="material-icons right">send</i>
					</button>
				</div>
				</form>
			</div><br>
				<!-- FIM DOS BLOCOS -->		
		</main>
		<footer class="page-footer blue">
			<div class="container">
				<div class="row">
					<div class="col l6 s12">
						<p><img src="../imgs/footer-logo.png"></p>
					</div>
					<div class="col l4 offset-l2 s12">
						<h5 class="white-text">Compartilhe</h5>
						<ul>
							<li><a class="grey-text text-lighten-3" href="#!">Twitter</a></li>
							<li><a class="grey-text text-lighten-3" href="#!">Facebook</a></li>
							<li><a class="grey-text text-lighten-3" href="#!">Instagram</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer-copyright">
				<div class="container">
					© 2017 Copyright - Todos os direitos reservados
				</div>
			</div>
		</footer>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="../js/materialize.min.js"></script>
		<script type="text/javascript" src="../js/custom.js"></script>
	</body>
>>>>>>> c2f3d153dccfb621f8afd0daf6a7d12c4624571e
</html>