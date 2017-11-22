<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Vote Bem - Home</title>
    <link rel="icon" href="imgs/favicon.ico">
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
    <link rel="stylesheet" href="css/estilo.css">
    <link type="text/css" rel="stylesheet" href="css/cards.css" media="screen,projection" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
     <script type="text/javascript" src="js/materialize.min.js"></script>
    <script>
    $(document).ready(function(){
      $('.parallax').parallax();
    });
    </script>
</head>

    <style>
    
   /* .parallax-container {
      height: 550px;
    }*/
    .espaco{
        margin: 15px;
    }

    .posicionamento{
        margin-top: 230px;
        margin-left: 30px;
        font-weight: bold;
        text-shadow: 2px 2px 4px #000000;
    }
    .separador{
        height: 4px;
        width: 45px;   
        margin-top: -10px;
    }
    
    </style>
    
<body>
    <main>
        <?php include "PaginasProcessamento/nav.php"; ?>

        <div class="parallax-container hide-on-small-only">
            <img src="imgs/footer-logo.png" class="right espaco" alt="logo votebem" title="Logo Vote Bem"><br>
            <h2 class="posicionamento white-text">Em busca de um país melhor,<br> o primeiro passo é Votar Bem</h2>
            <div class="parallax">
                <img src="imgs/index-banner.jpg"/>
            </div>
        </div>
        
        <div class="row">
            <h2 class="center">Se conscientize e vote bem!</h2>
            
            <center><div class="separador blue"></div></center>
        </div>

        <div class="container">

            <div class="row">
                <div class="cards-container center">
                    <!--inicio do card QUIZ-->
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="imgs/cards/Quiz.jpg" title="Quiz" Alt="Quiz">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Quiz<i class="material-icons right">more_vert</i></span>
                            <p><a href="quiz/quiz_perguntas.php">Clique para acessar o Quiz</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Quiz<i class="material-icons right">close</i></span>
                            <p class="left-align flow-text">Venha testar seu conhecimento sobre politíca e ver se voce realmente sabe sobre o assunto.</p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="imgs/cards/projetos.jpg" title="Projetos de Lei">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Projetos de Lei<i class="material-icons right">more_vert</i></span>
                            <p><a href="projetos_lei/projetos-de-lei.php">Clique para acessar os projetos de lei</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Projetos de Lei<i class="material-icons right">close</i></span>
                            <p class="left-align flow-text">Voce sabe como funciona um projeto de lei? E como é feito? Descubra isso agora! </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="imgs/cards/saibamais.jpg" title="Saiba mais">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Saiba +<i class="material-icons right">more_vert</i></span>
                            <p><a href="saibamais/saiba.php">Clique para acessar o saiba mais</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Saiba +<i class="material-icons right">close</i></span>
                            <p class="left-align flow-text">Aqui voce pode encontar mais sobre assuntos sobre politíca, partidos, candidatos e sobre eventos e muito mais.</p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="imgs/cards/Jornal.jpg" title="Notícias">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Notícias<i class="material-icons right">more_vert</i></span>
                            <p><a href="noticias.php">Clique para acessar as notícias</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Notícias<i class="material-icons right">close</i></span>
                            <p class="left-align flow-text">Fique por dentro do que acontece com o mundo politico e sobre todas as ações realizadas nesse meio. </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="imgs/cards/agenda.png" title="Agenda de eventos">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Eventos<i class="material-icons right">more_vert</i></span>
                            <p><a href="agenda.php">Clique para acessar a agenda</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Agenda de eventos<i class="material-icons right">close</i></span>
                            <p class="left-align flow-text">Fique por dentro de todos os eventos relacionandos a política. </p>
                        </div>
                    </div>
                    <!--inicio do card-->
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="imgs/cards/candidatos.jpg" title="Candidatos e partidos">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Candidatos e Partidos<i class="material-icons right">more_vert</i></span>
                            <p><a href="index_cand_part.php">Clique para acessar candidatos e partidos</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Candidatos e Partidos<i class="material-icons right">close</i></span>
                            <p class="left-align flow-text">Saiba mais sobre como os partidos e candidatos funcionam e como eles podem influenciar no seu voto.</p>
                        </div>
                    </div>
                </div>
            </div>
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

        
       
    <script type="text/javascript" src="js/custom.js"></script>
</body>

</html>
