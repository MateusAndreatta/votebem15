<?php
		@$id   = $_GET['id'];

		include "../PaginasProcessamento/conexao.php";
		$sql = "SELECT * FROM tb_noticias WHERE id_noticia= $id";	
		$votebem = $banco -> prepare($sql);
		$votebem -> execute();
		
		foreach($votebem as $noticias){
		  $imgbd = $noticias['imagem'];
		}

		if(isset($_GET['enviar'])){
            $sql = "DELETE FROM tb_noticias WHERE id_noticia= $id";	
            include "../PaginasProcessamento/conexao.php";
            $votebem = $banco -> prepare($sql);
            $votebem -> execute();
            unlink("../imgs/noticias/$imgbd");
            header("Location: menu_noticias.php?cadastro=ok");
		}
	?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Vote Bem - Excluir Notícia</title>
		<link rel="icon" href="../imgs/favicon.ico">
		<meta charset="UTF-8">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
		<link rel="stylesheet" href="../css/estilo.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	</head>
		<?php 
	session_start(); //verificar session
	if(isset($_SESSION['login'])){
		if($_SESSION['login'] == 1){
		}else{
			header("Location: ../login.php");
		}
	}else{
		header("Location: ../login.php");
		session_destroy();
	}
?>
	<body>
		<main>
			<?php include "../PaginasProcessamento/nav2.php"; ?>
			<nav>
				<div class="nav-wrapper blue espacamento-lateral">
					<div class="col s12">
						<a href="../index.html" class="breadcrumb">Home</a>
						<a href="painel.php" class="breadcrumb">Painel de Controle</a>
						<a href="menu_noticias.php" class="breadcrumb">Menu de Notícias</a>
						<a href="excluir_noticia.php" class="breadcrumb">Excluir Notícia</a>
					</div>
				</div>
			</nav>	
			<div class="container">
				<div class="row">
					<div class="col s12 m12 l12">
					  <h3 class="center">Excluir Notícia</h3>
					</div>
				</div>
				<div class="row">
                    <form method="GET" action="" class="col s12">
                        <div class="row">
							<select name="id" required id="seleciona" required>
                                    <option value="" disabled selected>Selecione o registro que deseja excluir</option>
                                   <?php 
									include "../PaginasProcessamento/conexao.php";
									$sql     = "SELECT * FROM tb_noticias";
									$votebem = $banco -> prepare($sql);
									$votebem -> execute();
								
									foreach($votebem as $id){ ?>
									<option value="<?php echo $id['id_noticia'];?>"><?php echo $id['titulo_noticia'];?></option>
									<?php														
									}
									?>
                              </select>
						</div>
						<div class="row">
							<div class="col s12 center">
								<button class="btn waves-effect waves-light" type="submit" name="enviar" >Enviar 
									<i class="material-icons right">send</i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</main>	
		<footer class="page-footer blue">
			<div class="container">
				<div class="row">
					<div class="col l6 s12">
						<p><img src="../imgs/footer-logo.png" alt="Logo do Vote bem"></p>
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
					2017 Copyright - Todos os direitos reservados
				</div>
			</div>
		</footer>
		<!-- mascara-->
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script type="text/javascript" src="../js/jQueryMaskPlugin/dist/jquery.mask.min.js"></script>
		<!-- outros -->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="../js/materialize.min.js"></script>
		<script type="text/javascript" src="../js/custom.js"></script>
	</body>
</html>
<di