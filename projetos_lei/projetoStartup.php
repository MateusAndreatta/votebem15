<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Vote Bem - Projeto Startup</title>
    <link rel="icon" href="../imgs/favicon.ico">
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
    <link rel="stylesheet" href="../css/estilo.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>

<style>
    #teste {
        float: right;

    }

    #teste2 {
        float: left;
    }
    #espace{
        margin-bottom: 35px;
    }
</style>

<body>
    <main>
        <?php include "../PaginasProcessamento/nav2.php"; ?>
        <nav class="hide-on-small-only">
            <div class="nav-wrapper blue espacamento-lateral">
                <div class="col s12">
                    <a href="../index.php" class="breadcrumb">Home</a>
                    <a href="projetos-de-lei.php" class="breadcrumb">Projetos de lei</a>
                    <a href="projetoStartup.php" class="breadcrumb">Startup</a>
                </div>
            </div>
        </nav>

        <div class="parallax-container">
			<h4 class="subbanner">Projeto de lei</h4>
            <h1 class="center text-banners white-text">Startup</h1>
            <div class="parallax">
                <img src="../imgs/banners/startup-banner.png" />
            </div>
        </div>


        <div class="container">
            <div class="row">
                <p class="justificar flow-text tipografia" id="capitular"> Startup é o ato de começar algo, normalmente relacionado ao empreendedorismo tecnológico. As startups são empresas que estão no início de suas atividades e buscam explorar atividades inovadoras no mercado. São empresas jovens, que buscam a inovação em qualquer área ou ramo de atividade, procurando desenvolver um modelo de negócio escalável e que seja repetível. Diante disso a necessidade de desenvolver políticas públicas estaduais que possam dar apoio e segurança às startups Paranaenses, principalmente em sua fase inicial de constituição e na fase de consolidação de suas atividades.
                    <small><br>Viabilizado por: Brunna Beatriz, Leticia Caroline, Vitoria Batista, Thayná dos Santos, Ana Paula Silva</small>
                </p>

                <div class="card-panel col s12 m6 right">
                    <h4>Baixar o PDF

                        <a class="btn-floating btn-large waves-effect waves-light red right" href="../projetos_lei/pdfs/PROJETO_DE_LEI_337_2016.pdf" download><i class="material-icons"><i class="material-icons">file_download</i></i></a>
                        
                    </h4>
                    <div id="espace"></div>
                </div>
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