<?php
		@$id   = $_GET['id'];
		
		include "../PaginasProcessamento/conexao.php";
		$sql = "SELECT * FROM tb_partidos WHERE id_partido= $id";	
		$votebem = $banco -> prepare($sql);
		$votebem -> execute();
		
		foreach($votebem as $partido){
			$imgbdold = $partido['imagem'];
		}
		
		if(isset($_POST['enviar'])){
			$nome              = $_POST["nome"];
			$sigla             = $_POST["sigla"];
			$ano_fundacao      = $_POST["ano_fundacao"];
			$ideais            = $_POST["ideais"];
			$Arq               = $_FILES['img'];
			$nomeArq           = $Arq['name'];
			$tamanho           = $Arq['size'];
			$tmp               = $Arq['tmp_name'];
			$formato           = pathinfo($nomeArq, PATHINFO_EXTENSION);
			$nomeBdArq         = uniqid().".".$formato;
			$upload            = move_uploaded_file($tmp, '../imgs/partidos/'.$nomeBdArq );	

			unlink("../imgs/partidos/$imgbdold");			
			
			include "conexao.php";
			$sql = "UPDATE tb_partidos SET nome=?,imagem=?, sigla=?, ano_fundacao=?, ideais=? WHERE id_partido='$id'";	
			$votebem = $banco -> prepare($sql);
			$votebem -> execute(array($nome,$nomeBdArq,$sigla,$ano_fundacao,$ideais));
			header("Location:menu_partidos.php?cadastro=ok");
			}
		
	?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Vote Bem - Editar Partido</title>
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
						<a href="../index.php" class="breadcrumb">Home</a>
						<a href="painel.php" class="breadcrumb">Painel de Controle</a>
						<a href="menu_partidos.php" class="breadcrumb">Menu de Partidos</a>
						<a href="editar_partidos.php" class="breadcrumb">Editar Partido</a>
					</div>
				</div>
			</nav>	
			<div class="container">
				<div class="row">
					<div class="col s12 m12 l12">
					  <h3 class="center">Editar Partidos</h3>
					</div>
				</div>
				<div class="row">
                    <form method="GET" action="" class="col s12">
                        <div class="row">
							<select name="id" required id="seleciona" required>
                                    <option value="" disabled selected>Selecione o registro que deseja editar</option>
                                   <?php 
									include "conexao.php";
									$sql     = "SELECT * FROM tb_partidos";
									$votebem = $banco -> prepare($sql);
									$votebem -> execute();
								
									foreach($votebem as $id){ ?>
									<option value="<?php echo $id['id_partido'];?>"><?php echo $id['nome'];?></option>
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
				<div class='row'>
					<form method='POST' action='' class='col s12' enctype="multipart/form-data">
							<div class='input-field col s12 m6'>
								<input id='nome' value='<?php if(isset($partido)){echo $partido['nome'];}?>' autofocus required name='nome' type='text' class='validate'>
								<label for='first_name'>Nome</label>
							</div>
							<div class='input-field col s12 m6'>
								<input id='sigla' value='<?php if(isset($partido)){echo $partido['sigla'];}?>' required name='sigla' type='text' class='validate'>
								<label for='first_name'>Sigla</label>
							</div>
							<div class="file-field input-field col s12">
                          <div class="btn">
                            <span>Imagem</span>
                            <input type="file" name="img">
                          </div>
                          <div class="file-path-wrapper">
                            <input class="file-path validate" type="text">
                          </div>
                        </div>
						<div class='input-field col s12 m6'>
							<input id='ano_fundacao' required value='<?php if(isset($partido)){echo $partido['ano_fundacao'];}?>' type='text' name='ano_fundacao' class='validate' data-mask='00/00/0000' max-length=8 required>
							<label for='ano_fundacao'>Ano Fundação</label>
						</div>
						<div class='input-field col s12 m6'>
							<input id='ideais' required type='text' name='ideais' value='<?php if(isset($partido)){echo $partido['ideais'];}?>' class='materialize-textarea validate'>
							<label for='ideais'>Ideais</label>
						</div>                      
						<div class='row'>
							<div class='col s12 center'>
								<button class='btn waves-effect waves-light' type='submit' name='enviar' >Enviar 
									<i class='material-icons right'>send</i>
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
						<p><a href="index.php"></a><img src="../imgs/footer-logo.png" alt="Logo do Vote bem"></p>
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