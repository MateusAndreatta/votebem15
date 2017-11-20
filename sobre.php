<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
		<link type="text/css" rel="stylesheet" href="css/estilo.css" media="screen,projection" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta charset="utf-8" />
		<title>Vote Bem - Sobre o Movimento</title>
		<link rel="icon" href="imgs/favicon.ico">
		<style>
			.cor {
				color: #2196F3;
				font-size: 28px;
			}
			
			.cartao1 {
				margin-top: 15px;
				font-size: 18px;
				text-align: right;
				color: #2196F3;
			}
		</style>
	</head>
	<body>
		<main>
			<?php include "PaginasProcessamento/nav.php"; ?>
			<nav class="hide-on-small-only">
				<div class="nav-wrapper blue espacamento-lateral">
					<div class="col s12">
						<a href="index.php" class="breadcrumb">Home</a>
						<a href="sobre.php" class="breadcrumb">Sobre o movimento</a>
					</div>
				</div>
			</nav>	
			<div class="center">
				<h1>Sobre o Movimento</h1>
			</div>
			<div class="container">
				<div class="row">
					<div class="flow-text"><br><!--inicio saiba+ -->			
						<p class="justificar" id="capitular">
							O  movimento Vote Bem é uma ação apartidária, ou seja, não defende nenhum partido específico, sendo assim o objetivo desse projeto é promover a conscientização de toda a população sobre o poder que um único voto possui.
						</p>
						<p class="justificar">
							Desde 2014, esse projeto vem através de diversas formas, por exemplo, compartilhando ideias e  opiniões, proporcionando a sociedade informações sobre as pessoas que nos representam e  possuem o poder de influenciar diretamente o dia a dia de todos os cidadãos.
						</p>
						<p class="justificar">
							O Vote Bem visa a melhoria do governo juntamente com o aprofundamento político da comunidade, para que dessa maneira todos possam atuar ativamente de decisões que determinam o futuro da nação.
						</p>
						<p class="justificar">
							Junto com diversas instituições, esperamos que você exerça continuamente sua cidadania e em busca de país melhor, o primeiro passo é votar bem.
						</p>
					</div><br>
				
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col s12">
						<div class="card horizontal">
							<div class="card-stacked">
								<div class="card-content">
									<p class="flow-text">"Um voto é como um rifle: sua utilidade depende do caráter de quem usa".</p>
									<div class="right-align flow-text cartao1">- Theodore Roosevelt</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col s12">
						<div class="card horizontal">
							<div class="card-stacked">
								<div class="card-content">
									<p class="flow-text">"O futuro dependerá daquilo que fazemos no presente"</p>
									<div class="right-align flow-text cartao1">- Mahatma Gandhi</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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