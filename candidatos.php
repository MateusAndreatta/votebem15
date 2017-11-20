﻿<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Vote Bem - Candidatos</title>
		<link rel="icon" href="imgs/favicon.ico">
		<meta charset="UTF-8">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
		<link rel="stylesheet" href="css/estilo.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	</head>
	<?php
		$sql = "SELECT *,tb_partidos.nome AS nome_partido FROM tb_partidos,tb_candidatos WHERE tb_candidatos.id_partido=tb_partidos.id_partido";
		include "PaginasProcessamento/conexao.php";
		$vb = $banco -> prepare($sql);
		$vb -> execute();
	?>
	<style>
		.img{
			padding-top:3%;
		}
	</style>
	<body>
		<main>
			<?php include "PaginasProcessamento/nav.php"; ?>
				<nav class="hide-on-small-only">
					<div class="nav-wrapper blue espacamento-lateral">
						<div class="col s12">
							<a href="index.php" class="breadcrumb">Home</a>
							<a href="index_cand_part.php" class="breadcrumb">Candidatos e Partidos</a>
							<a href="candidatos.php" class="breadcrumb">Candidatos</a>
						</div>
					</div>
				</nav>
			<div class='container'>
				<h1 class='center'>Candidatos</h1><br><br>
			<?php
				foreach($vb as $candidatos){
					$id                 = $candidatos['id_candidato'];
					$nome               = $candidatos["nome"];
					$num_candidato      = $candidatos["numero_candidato"];
					$cargo              = $candidatos["cargo"];
					$cidade             = $candidatos["cidade"];
					$estado             = $candidatos["estado"];
					$nascimento         = $candidatos["data_nascimento"];
					$partido            = $candidatos["nome_partido"];
					$foto               = $candidatos["foto"];
					
					echo "<div class='row'>
							<div class='col s12 m6 center'>
								<img width='200px' height='200px' class='img' src='imgs/candidatos/$foto'>
							</div> 
							<div class='col s12 m6'><a name='pedro'></a>
								<p><h5>Nome:$nome</h5></p>
								<h5>Número:$num_candidato</h5>
								<h5>Cargo:$cargo </h5>
								<h5>Cidade:$cidade</h5>
								<h5>Estado:$estado </h5>
								<h5>Data de Nascimento:$nascimento</h5>
								<h5>Partido:$partido</h5>
							</div>
						</div><hr>";
				}
			?>
			</div>
				<!-- FIM DOS BLOCOS -->		
		</main>
		<footer class="page-footer blue">
			<div class="container">
				<div class="row">
					<div class="col l6 s12">
						<p><a href="index.php"><img src="imgs/footer-logo.png" alt="Logo do Vote bem"></a></p>
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
		<script type="text/javascript" src="js/materialize.min.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>
	</body>
</html>