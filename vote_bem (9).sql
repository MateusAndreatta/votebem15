-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Nov-2017 às 04:22
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote_bem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_candidatos`
--

CREATE TABLE `tb_candidatos` (
  `id_candidato` int(6) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `foto` varchar(60) DEFAULT NULL,
  `numero_candidato` int(6) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` varchar(40) DEFAULT NULL,
  `data_nascimento` varchar(50) DEFAULT NULL,
  `id_partido` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_eventos`
--

CREATE TABLE `tb_eventos` (
  `id_evento` int(6) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `imagem` varchar(60) DEFAULT NULL,
  `descricao` varchar(120) NOT NULL,
  `ingresso` float NOT NULL,
  `data` varchar(40) NOT NULL,
  `horario` varchar(10) NOT NULL,
  `local` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_forum`
--

CREATE TABLE `tb_forum` (
  `id_comentario` int(6) NOT NULL,
  `topico_discussao` varchar(60) NOT NULL,
  `comentario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_noticias`
--

CREATE TABLE `tb_noticias` (
  `id_noticia` int(6) NOT NULL,
  `titulo_noticia` varchar(80) NOT NULL,
  `imagem` varchar(40) NOT NULL,
  `texto` text NOT NULL,
  `resumo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_noticias`
--

INSERT INTO `tb_noticias` (`id_noticia`, `titulo_noticia`, `imagem`, `texto`, `resumo`) VALUES
(20, 'Mulheres protestam em SP', '5a0b7a71cc9f0.jpg', 'Um grupo de mulheres protesta na noite desta segunda-feira (13) em SÃ£o Paulo contra o Projeto de Emenda Constitucional (PEC) 181, que pretende criminalizar todos os casos de aborto no Brasil, inclusive quando a gravidez Ã© resultante de estupro.\r\nO ato comeÃ§ou no vÃ£o livre do Masp, na Avenida Paulista, e deve seguir por vias do Centro de SÃ£o Paulo, atÃ© a PraÃ§a Roosevelt. A PolÃ­cia Militar (PM) nÃ£o informou estimativa de pÃºblico.\r\nNa quarta-feira (8), uma comissÃ£o especial da CÃ¢mara dos Deputados aprovou, por 18 votos a 1, o texto-base da proposta, que inclui na ConstituiÃ§Ã£o a garantia do direito Ã  vida \"desde a concepÃ§Ã£o\".\r\n\r\nCom a aprovaÃ§Ã£o do texto-base, os deputados da comissÃ£o passarÃ£o a analisar, no prÃ³ximo dia 21, sete destaques que podem alterar o conteÃºdo da proposta.\r\nDurante a sessÃ£o, deputados contrÃ¡rios ao projeto argumentaram que a medida pode levar a questionamentos judiciais, porque o CÃ³digo Penal permite a interrupÃ§Ã£o da gravidez em casos de estupro e quando houver risco para a vida da mulher.\r\n\r\nNa sexta-feira (10), depois que a aprovaÃ§Ã£o ganhou repercussÃ£o na imprensa e nas redes sociais, o presidente da CÃ¢mara dos Deputados, Rodrigo Maia, escreveu em sua pÃ¡gina do Facebook que a proibiÃ§Ã£o \"nÃ£o vai passar\". \"Proibir aborto no caso de estupro nÃ£o vai passar na CÃ¢mara\", disse Maia.\r\nQuestionado por jornalistas sobre o assunto, ele disse que Ã© preciso analisar juridicamente a redaÃ§Ã£o final do projeto que for aprovado na comissÃ£o. \"NÃ³s vamos ouvir alguns juristas para que, se chegar ao plenÃ¡rio, ele [o projeto] chegue com tudo esclarecido e que em hipÃ³tese nenhuma essa questÃ£o nÃ£o tenha nenhum tipo de vedaÃ§Ã£o\", afirmou.', 'ComissÃ£o especial da CÃ¢mara dos Deputados aprovou.'),
(21, 'PrevidÃªncia foi \'mal vendida\' ', '5a0a2227808ed.jpg', 'O presidente do Senado, EunÃ­cio Oliveira (PMDB-CE), disse nesta segunda-feira (13) ter afirmado ao presidente Michel Temer que, na avaliaÃ§Ã£o dele, a proposta de reforma da PrevidÃªncia Social foi \"mal vendida\" pelo governo Ã  populaÃ§Ã£o.\r\nEnviada no ano passado ao Congresso, a reforma jÃ¡ foi aprovada por uma comissÃ£o especial da CÃ¢mara, mas, diante da falta de consenso entre o governo e os deputados sobre o texto a ser votado, a proposta ainda patina.\r\n\"Eu disse a ele [Temer] que, no meu entendimento, a reforma foi mal vendida para a populaÃ§Ã£o brasileira. NÃ³s precisamos fazer uma reforma enxuta, que tire os privilÃ©gios\", dise EunÃ­cio nesta segunda.\r\nNa sequÃªncia, o senador disse que, na opiniÃ£o dele, a reforma deve preservar \"a rede de proteÃ§Ã£o social\" e tambÃ©m definir uma idade mÃ­nima para aposentadorias.\r\nAs declaraÃ§Ãµes foram dadas apÃ³s o presidente do Senado participar de uma cerimÃ´nia no PalÃ¡cio do Planalto ao lado de Temer.\r\nNesse mesmo evento, o presidente disse ter \"certeza\" que o governo conseguirÃ¡ aprovar a reforma ainda neste ano no Congresso Nacional.\r\nAposentadoria rural\r\nAo relatar a conversa que teve com Temer, EunÃ­cio disse ter afirmado ao presidente que nÃ£o aceitaria, \"neste momento\", que fossem modificadas as regras para a aposentadoria rural, uma vez que o homem do campo \"vive muito menos do que as pessoas que vivem em cidades\".\r\n\"Eu peguei essa semana calor de 47 graus no interior do estado do CearÃ¡. AÃ­ dÃ¡ para ver a diferenÃ§a. O presidente me disse que ia preservar essa questÃ£o\", relatou EunÃ­cio.\r\nO parlamentar disse ainda que, na reuniÃ£o de domingo com Temer, o presidente afirmou que farÃ¡ \"ainda neste ano\" uma reforma ministerial.\r\nTexto \'enxuto\'\r\nEm meio Ã  articulaÃ§Ã£o para aprovar a reforma no Congresso ainda neste ano, o presidente Michel Temer jÃ¡ reconheceu que a proposta pode nÃ£o ser aprovada \"em todo o conjunto\".\r\nDiante disso, o governo passou a articular um texto enxuto, com foco, por exemplo, na idade mÃ­nima de 65 anos para homens poderem se aposentar e de 62 anos para mulheres.\r\n\r\n\r\nLink da noticia original: https://g1.globo.com/politica/noticia/reforma-da-previdencia-foi-mal-vendida-a-populacao-diz-eunicio.ghtml', ' em reuniÃ£o com Michel Temer, defendeu reforma.'),
(22, 'Jogos de azar legalizados? ', '5a0a23f7eb921.jpg', 'Estado de S.Paulo informa, na sua manchete, que parlamentares estÃ£o dando andamento no Congresso a projetos que podem dificultar a tentativa de ajuste das contas pÃºblicas feita pelo governo.\r\nSegundo o jornal, o perdÃ£o de parte da dÃ­vida dos produtores rurais e o reajuste do Bolsa FamÃ­lia â€“ entre outros itens â€“ sÃ£o exemplos de pautas que podem gerar despesas superando R$ 20 bilhÃµes jÃ¡ no primeiro ano apÃ³s sua aprovaÃ§Ã£o. â€œPauta-bomba no Congresso pÃµe em risco ajuste fiscalâ€, revela o EstadÃ£o.\r\nUm dos itens em andamento para ajustar as contas Ã© a tentativa de legalizaÃ§Ã£o dos jogos de azar ligada Ã  criaÃ§Ã£o de um fundo de combate ao crime pelo Congresso. â€œCongresso pode legalizar jogo para criar fundo que jÃ¡ existeâ€, sublinha O Globo.\r\nDe acordo com o matutino, o governo federal jÃ¡ destina recursos, todos os anos, ao Fundo Nacional de SeguranÃ§a PÃºblica, que teve, em 2017, um orÃ§amento previsto de R$ 1 bilhÃ£o, mas com a execuÃ§Ã£o de apenas 17%.\r\nA Folha de S.Paulo destaca que a recuperaÃ§Ã£o da economia chegou Ã  arrecadaÃ§Ã£o federal. Os dados sÃ£o de um relatÃ³rio do Instituto Fiscal Independente, do Senado, a ser divulgado nesta segunda-feira (13). â€œSinais da retomada chegam Ã  arrecadaÃ§Ã£o\".\r\nEmbora o resultado positivo seja pequeno, comeÃ§am a reagir as receitas vindas da cobranÃ§a de tributos que dependem diretamente da retomada, como o IPI (Imposto sobre Produtos Industrializados) e a contribuiÃ§Ã£o sobre a folha de pagamento.', 'Congresso pode legalizar jogo de azar. '),
(23, '\'nÃ£o Ã© coisa demorada\'.', '5a0a27302caa9.jpeg', 'Em busca de aprovar a reforma da PrevidÃªncia, o presidente Michel Temer vai conversar com lÃ­deres da base aliada nesta semana para definir mudanÃ§as na sua equipe ministerial. Ao blog, o ministro Moreira Franco (Secretaria Geral da PresidÃªncia) disse que a reforma ministerial â€œnÃ£o Ã© coisa demoradaâ€ e deve sair em breve.\r\nO objetivo Ã© garantir a aprovaÃ§Ã£o das alteraÃ§Ãµes no sistema previdenciÃ¡rio e do ajuste fiscal que garante o cumprimento da meta do ano que vem, um dÃ©ficit de R$ 159 bilhÃµes.\r\nPMDB e partidos ligados ao antigo centrÃ£o, como PP e PTB, pressionam por mais espaÃ§o no governo sob argumento de que tÃªm votado com o presidente Michel Temer, enquanto outros aliados, principalmente o PSDB, estÃ£o divididos e nÃ£o estÃ£o entregando mais da metade dos votos ao PalÃ¡cio do Planalto.\r\nNas negociaÃ§Ãµes com seus aliados, o presidente quer a garantia de que, feita a reforma ministerial, eles darÃ£o os votos necessÃ¡rios para aprovar o novo texto das alteraÃ§Ãµes nas regras da aposentadoria no paÃ­s.\r\nA expectativa Ã© que o relator da proposta, deputado Arthur Maia (PPS-BA), finalize a nova emenda nessa semana, com uma versÃ£o mais enxuta e viÃ¡vel nesse momento.\r\nO governo tem pressa, por avaliar que, se nÃ£o destravar a votaÃ§Ã£o atÃ© o final de novembro, nÃ£o terÃ¡ mais condiÃ§Ãµes de aprovar a reforma da PrevidÃªncia Social ainda nesse ano na CÃ¢mara dos Deputados. Se isso acontecer, ela ficaria inviabilizada nesse governo, pois ninguÃ©m acredita que os deputados aceitem votar o tema durante o ano eleitoral.', 'Reforma ministerial \'nÃ£o Ã© coisa demorada\'.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_partidos`
--

CREATE TABLE `tb_partidos` (
  `id_partido` int(6) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `sigla` varchar(6) NOT NULL,
  `ano_fundacao` varchar(15) NOT NULL,
  `ideais` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_quiz`
--

CREATE TABLE `tb_quiz` (
  `id_questao` int(3) NOT NULL,
  `pergunta` varchar(100) NOT NULL,
  `resposta1` varchar(60) NOT NULL,
  `resposta2` varchar(60) NOT NULL,
  `resposta3` varchar(60) NOT NULL,
  `resposta4` varchar(60) NOT NULL,
  `img` varchar(100) NOT NULL,
  `respostaCorreta` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_quiz`
--

INSERT INTO `tb_quiz` (`id_questao`, `pergunta`, `resposta1`, `resposta2`, `resposta3`, `resposta4`, `img`, `respostaCorreta`) VALUES
(6, 'Quantos anos dura um mandato de um presidente?', '8 anos', '4 anos', '2 anos', '1 ano', '5a0a2db1ab4ef.png', 2),
(7, 'Quantos senadores tem por estado?', '3', '2', '7', '8', '5a0a2f0b8863f.png', 1),
(9, 'Em que ano se iniciou a ditadura militar?', '1964', '1956', '1839', '1500', '5a0a3126c5d4d.png', 1),
(10, 'Quantos poderes existem na polÃ­tica brasileira?', '1', '2', '3', '8', '5a0b7523bb057.png', 3),
(11, 'Quem cria as leis brasileiras?', 'Poder Executivo', 'Poder Legislativo', 'Poder Executivo', 'Presidente', '5a0b75cbf19a2.png', 2),
(12, 'Em que ano foi criada a atual constituiÃ§Ã£o brasileira?', '1988', '1999', '2000', '1750', '5a0b76c507857.png', 1),
(13, 'Prefeito Ã© o representante de um(a):', 'Cidade', 'Estado', 'Bairro', 'PaÃ­s', '5a0b7764a37fe.png', 1),
(14, 'EleiÃ§Ã£o ocorre de quantos em quantos anos?', '4 anos', '3 anos', '6 anos', '2 anos', '5a0b77f54bbe5.png', 4),
(16, 'Qual desses estados nunca teve um representante na presidÃªncia da repÃºblica:', 'SÃ£o Paulo', 'MaranhÃ£o', 'ParanÃ¡', 'Rio Grande do Sul', '5a0b81784f288.png', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(6) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `data_nascimento` varchar(10) NOT NULL,
  `sexo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nome`, `email`, `senha`, `data_nascimento`, `sexo`) VALUES
(1, 'Guilherme Mota', 'motag928@gmail.com', 'gui123', '16/04/2001', 'masculino'),
(2, 'PedrÃ£o', 'paulosafety@hotmail.com', '123', '16/04/2001', 'masculino'),
(3, 'Mateus Andreatta', 'mateus-henrique2001@hotmail.com', 'senha123', '05/03/2001', 'masculino'),
(4, 'Natanael CustÃ³dio', 'natanael.custodio@gmail.com', '123', '01/10/2001', 'masculino'),
(5, 'Maria Eduarda da Rocha', 'dudarocha2001@gmail.com', 'teste123', '03/10/2001', 'feminino'),
(6, 'Julia Louback', 'julialoubackribeiro@gmail.com', '123456', '29/01/2001', 'feminino'),
(7, 'Natanael Custodio', 'natanael.custodio.vieira@gmail.com', 'senha', '11/05/2001', 'masculino'),
(8, 'natanael', 'nata@gmail.cim', '123', '11/11/1111', 'masculino'),
(9, 'nata', 'nata@gmail.com', '111', '11/11/1111', 'feminino'),
(10, 'Mateus Andreatta', 'mateus-henrique2001@hotmail.com', 'senha123', '05/03/2001', 'masculino');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_candidatos`
--
ALTER TABLE `tb_candidatos`
  ADD PRIMARY KEY (`id_candidato`),
  ADD KEY `fk_partido` (`id_partido`);

--
-- Indexes for table `tb_eventos`
--
ALTER TABLE `tb_eventos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indexes for table `tb_forum`
--
ALTER TABLE `tb_forum`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indexes for table `tb_noticias`
--
ALTER TABLE `tb_noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indexes for table `tb_partidos`
--
ALTER TABLE `tb_partidos`
  ADD PRIMARY KEY (`id_partido`);

--
-- Indexes for table `tb_quiz`
--
ALTER TABLE `tb_quiz`
  ADD PRIMARY KEY (`id_questao`);

--
-- Indexes for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_candidatos`
--
ALTER TABLE `tb_candidatos`
  MODIFY `id_candidato` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tb_eventos`
--
ALTER TABLE `tb_eventos`
  MODIFY `id_evento` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_forum`
--
ALTER TABLE `tb_forum`
  MODIFY `id_comentario` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_noticias`
--
ALTER TABLE `tb_noticias`
  MODIFY `id_noticia` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tb_partidos`
--
ALTER TABLE `tb_partidos`
  MODIFY `id_partido` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_quiz`
--
ALTER TABLE `tb_quiz`
  MODIFY `id_questao` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_candidatos`
--
ALTER TABLE `tb_candidatos`
  ADD CONSTRAINT `fk_id_partido` FOREIGN KEY (`id_partido`) REFERENCES `tb_partidos` (`id_partido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
