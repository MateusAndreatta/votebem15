<?PHP

  $cad = 0;
  @$cad = $_GET['cadastro'];

?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Vote Bem - Login</title>
	<link rel="icon" href="imgs/favicon.ico">
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
    <link rel="stylesheet" href="css/estilo.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
    <main>
        <?php include "PaginasProcessamento/nav.php"; ?>
		<nav class="hide-on-small-only">
				<div class="nav-wrapper blue espacamento-lateral">
					<div class="col s12">
						<a href="index.php" class="breadcrumb">Home</a>
						<a href="login.php" class="breadcrumb">Login</a>
					</div>
				</div>
			</nav>	
        <div class="center">
            <section>
                <h3>Login</h3>
            </section>
        </div>
    
        
        
        <div id="login-page" class="row">
            <div class="col s12 z-depth-6 card-panel">
                <form method="POST" action="PaginasProcessamento/verificar.php" class="login-form">
                    <div class="row">
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">mail_outline</i>
                            <input name="email" class="validate" id="email" type="email">
                            <label for="email">E-mail</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">lock_outline</i>
                            <input name="senha" id="password" type="password">
                            <label for="password">Senha</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <button type="submit" name="enviar" class="btn waves-effect waves-light col s12 blue">Entrar</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6 m6 l6">
                            <p class="margin medium-small"><a href="cadastro.php">Cadastrar</a></p>
                        </div>
                        <div class="input-field col s6 m6 l6">
                            <p class="margin right-align medium-small"><a href="#">Esqueçeu sua senha?</a></p>
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
                    <p><a href="../index.php"><img src="imgs/footer-logo.png" alt="Logo do Vote bem"></a></p>
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
    <?PHP
            if($cad =="ok"){
        echo "<script type='text/javascript'>window.onload = function(){
              Materialize.toast('Cadastro concluido com sucesso', 5000);
            }
          </script>";
          }
        ?>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
</body>

</html>