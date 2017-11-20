<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Vote Bem - Projeto QR Code</title>
		<link rel="icon" href="../imgs/favicon.ico">
		<meta charset="UTF-8">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
		<link rel="stylesheet" href="../css/estilo.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	</head>
	<body>
		<main>
			<?php include "../PaginasProcessamento/nav2.php"; ?>	
            <nav class="hide-on-small-only">
              <div class="nav-wrapper blue espacamento-lateral">
                <div class="col s12">
                  <a href="../index.php" class="breadcrumb">Home</a>
                  <a href="projetos-de-lei.php" class="breadcrumb">Projetos de lei</a>
                  <a href="projetoQrcode.php" class="breadcrumb">QR Code</a>
                </div>
              </div>
            </nav>

            <div class="parallax-container">
                <h1 class="center text-banners white-text">QR Code</h1>
                <div class="parallax">
                    <img src="../imgs/banners/qrcode-banner.png"/>
                </div>
            </div>
            
            
			<div class="container">	
			
				<p class="justificar flow-text tipografia" id="capitular"> A garantia aos consumidores através de mais um meio de acesso às informações já contida nas embalagens de uma forma mais abrangente e detalhada, bem como dar acessibilidade aos consumidores com deficiência visual através da sinalização do código por leitura tátil (BRAILLE) o qual não dependerá de outras pessoas para ajudar nas compras, pois, por meio de um aplicativo específico, as informações também poderão ser fornecidas através de áudio, aumentando o consumo deste público em mercados, além de fomentar o comércio regional, a economia local bem como tutelar o meio ambiente, além de dispor informações relativamente importantes ao consumidor, divulgar promoções, novos produtos e outras técnicas de marketing, auxiliando em suas atividades
                <small><br>Viabilizado por: Amanda Luiza Kanarski, Camila de Pádua D. Desidélio,
Jéssica Camila Mysczak, Mariana Terencio</small>
                </p>
                
				<div class="card-panel col s12 m6 right">
                    <h4>Baixar o PDF
                        <a class="btn-floating btn-large waves-effect waves-light red right" href="../projetos_lei/pdfs/PROJETO_DE_LEI%20FINALIZADO_409_2016.pdf" download><i class="material-icons"><i class="material-icons">file_download</i></i></a>
                        
                    </h4>
                    <div id="espace"></div>
                </div>
                
			</div>

		</main>
		<footer class="page-footer blue">
			<div class="container">
				<div class="row">
					<div class="col l6 s12">
						<p><a href="../index.php"><img src="../imgs/footer-logo.png" alt="Logo do Vote bem"></a></p>
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
        
        <style>
            .parallax-container {
              height: 400px;
            }
        </style>

        
		
		<script type="text/javascript" src="../js/materialize.min.js"></script>
		<script type="text/javascript" src="../js/custom.js"></script>
        

	</body>
</html>