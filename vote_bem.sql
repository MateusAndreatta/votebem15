-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Nov-2017 às 19:44
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 5.6.31

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

--
-- Extraindo dados da tabela `tb_candidatos`
--

INSERT INTO `tb_candidatos` (`id_candidato`, `nome`, `foto`, `numero_candidato`, `cargo`, `cidade`, `estado`, `data_nascimento`, `id_partido`) VALUES
(19, 'Leonardo Da Vinci', '5a1362f82cde1.png', 7, 'Presidente', 'FlorenÃ§a', 'FlorenÃ§a', '15/04/1452', 6),
(20, 'Friedrich Nietzsche', '5a136432216ee.png', 555, 'Senador', 'RÃ¶cken', 'SaxÃ´nia', '15/08/1844', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_eventos`
--

CREATE TABLE `tb_eventos` (
  `id_evento` int(6) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `ingresso` float NOT NULL,
  `data` varchar(200) NOT NULL,
  `horario` varchar(200) NOT NULL,
  `local` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_eventos`
--

INSERT INTO `tb_eventos` (`id_evento`, `nome`, `imagem`, `descricao`, `ingresso`, `data`, `horario`, `local`) VALUES
(1, 'Reforma polÃ­tica mobilizam a agenda do Inesc', '5a14a0e428bad.jpg', 'OrganizaÃ§Ã£o participou de Roda de Conversa promovida pelo IDS e de FÃ³rum Online realizado pela Rede de MobilizaÃ§Ã£o ', 0, '22/11/2017', '13hs', 'NÃ£o definido'),
(2, 'Presidente faz eventos repetidos para anuncia', '5a14a0b31ebd9.jpg', 'Presidente anuncia realocaÃ§Ã£o de recursos que jÃ¡ pertenciam ao MinistÃ©rio da SaÃºde', 0, '21/11/2017', 'NÃ£o definido', 'NÃ£o definido');

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
(20, 'Protesto em SP', '5a1355ffab380.png', 'Um grupo de mulheres protesta na noite desta segunda-feira (13) em SÃ£o Paulo contra o Projeto de Emenda Constitucional (PEC) 181, que pretende criminalizar todos os casos de aborto no Brasil, inclusive quando a gravidez Ã© resultante de estupro.\r\nO ato comeÃ§ou no vÃ£o livre do Masp, na Avenida Paulista, e deve seguir por vias do Centro de SÃ£o Paulo, atÃ© a PraÃ§a Roosevelt. A PolÃ­cia Militar (PM) nÃ£o informou estimativa de pÃºblico.\r\nNa quarta-feira (8), uma comissÃ£o especial da CÃ¢mara dos Deputados aprovou, por 18 votos a 1, o texto-base da proposta, que inclui na ConstituiÃ§Ã£o a garantia do direito Ã  vida \"desde a concepÃ§Ã£o\".\r\n\r\nCom a aprovaÃ§Ã£o do texto-base, os deputados da comissÃ£o passarÃ£o a analisar, no prÃ³ximo dia 21, sete destaques que podem alterar o conteÃºdo da proposta.\r\nDurante a sessÃ£o, deputados contrÃ¡rios ao projeto argumentaram que a medida pode levar a questionamentos judiciais, porque o CÃ³digo Penal permite a interrupÃ§Ã£o da gravidez em casos de estupro e quando houver risco para a vida da mulher.\r\n\r\nNa sexta-feira (10), depois que a aprovaÃ§Ã£o ganhou repercussÃ£o na imprensa e nas redes sociais, o presidente da CÃ¢mara dos Deputados, Rodrigo Maia, escreveu em sua pÃ¡gina do Facebook que a proibiÃ§Ã£o \"nÃ£o vai passar\". \"Proibir aborto no caso de estupro nÃ£o vai passar na CÃ¢mara\", disse Maia.\r\nQuestionado por jornalistas sobre o assunto, ele disse que Ã© preciso analisar juridicamente a redaÃ§Ã£o final do projeto que for aprovado na comissÃ£o. \"NÃ³s vamos ouvir alguns juristas para que, se chegar ao plenÃ¡rio, ele [o projeto] chegue com tudo esclarecido e que em hipÃ³tese nenhuma essa questÃ£o nÃ£o tenha nenhum tipo de vedaÃ§Ã£o\", afirmou.', 'ComissÃ£o especial da CÃ¢mara dos Deputados aprovou.'),
(21, 'INSS foi \"mal vendido\"', '5a1350b1b7989.png', 'O presidente do Senado, EunÃ­cio Oliveira (PMDB-CE), disse nesta segunda-feira (13) ter afirmado ao presidente Michel Temer que, na avaliaÃ§Ã£o dele, a proposta de reforma da PrevidÃªncia Social foi \"mal vendida\" pelo governo Ã  populaÃ§Ã£o.\r\nEnviada no ano passado ao Congresso, a reforma jÃ¡ foi aprovada por uma comissÃ£o especial da CÃ¢mara, mas, diante da falta de consenso entre o governo e os deputados sobre o texto a ser votado, a proposta ainda patina.\r\n\"Eu disse a ele [Temer] que, no meu entendimento, a reforma foi mal vendida para a populaÃ§Ã£o brasileira. NÃ³s precisamos fazer uma reforma enxuta, que tire os privilÃ©gios\", dise EunÃ­cio nesta segunda.\r\nNa sequÃªncia, o senador disse que, na opiniÃ£o dele, a reforma deve preservar \"a rede de proteÃ§Ã£o social\" e tambÃ©m definir uma idade mÃ­nima para aposentadorias.\r\nAs declaraÃ§Ãµes foram dadas apÃ³s o presidente do Senado participar de uma cerimÃ´nia no PalÃ¡cio do Planalto ao lado de Temer.\r\nNesse mesmo evento, o presidente disse ter \"certeza\" que o governo conseguirÃ¡ aprovar a reforma ainda neste ano no Congresso Nacional.\r\nAposentadoria rural\r\nAo relatar a conversa que teve com Temer, EunÃ­cio disse ter afirmado ao presidente que nÃ£o aceitaria, \"neste momento\", que fossem modificadas as regras para a aposentadoria rural, uma vez que o homem do campo \"vive muito menos do que as pessoas que vivem em cidades\".\r\n\"Eu peguei essa semana calor de 47 graus no interior do estado do CearÃ¡. AÃ­ dÃ¡ para ver a diferenÃ§a. O presidente me disse que ia preservar essa questÃ£o\", relatou EunÃ­cio.\r\nO parlamentar disse ainda que, na reuniÃ£o de domingo com Temer, o presidente afirmou que farÃ¡ \"ainda neste ano\" uma reforma ministerial.\r\nTexto \'enxuto\'\r\nEm meio Ã  articulaÃ§Ã£o para aprovar a reforma no Congresso ainda neste ano, o presidente Michel Temer jÃ¡ reconheceu que a proposta pode nÃ£o ser aprovada \"em todo o conjunto\".\r\nDiante disso, o governo passou a articular um texto enxuto, com foco, por exemplo, na idade mÃ­nima de 65 anos para homens poderem se aposentar e de 62 anos para mulheres.\r\n\r\n\r\nLink da noticia original: https://g1.globo.com/politica/noticia/reforma-da-previdencia-foi-mal-vendida-a-populacao-diz-eunicio.ghtml', ' em reuniÃ£o com Michel Temer, defendeu reforma.'),
(22, 'Cassino legalizado?', '5a13564e66cb6.png', 'Estado de S.Paulo informa, na sua manchete, que parlamentares estÃ£o dando andamento no Congresso a projetos que podem dificultar a tentativa de ajuste das contas pÃºblicas feita pelo governo.\r\nSegundo o jornal, o perdÃ£o de parte da dÃ­vida dos produtores rurais e o reajuste do Bolsa FamÃ­lia â€“ entre outros itens â€“ sÃ£o exemplos de pautas que podem gerar despesas superando R$ 20 bilhÃµes jÃ¡ no primeiro ano apÃ³s sua aprovaÃ§Ã£o. â€œPauta-bomba no Congresso pÃµe em risco ajuste fiscalâ€, revela o EstadÃ£o.\r\nUm dos itens em andamento para ajustar as contas Ã© a tentativa de legalizaÃ§Ã£o dos jogos de azar ligada Ã  criaÃ§Ã£o de um fundo de combate ao crime pelo Congresso. â€œCongresso pode legalizar jogo para criar fundo que jÃ¡ existeâ€, sublinha O Globo.\r\nDe acordo com o matutino, o governo federal jÃ¡ destina recursos, todos os anos, ao Fundo Nacional de SeguranÃ§a PÃºblica, que teve, em 2017, um orÃ§amento previsto de R$ 1 bilhÃ£o, mas com a execuÃ§Ã£o de apenas 17%.\r\nA Folha de S.Paulo destaca que a recuperaÃ§Ã£o da economia chegou Ã  arrecadaÃ§Ã£o federal. Os dados sÃ£o de um relatÃ³rio do Instituto Fiscal Independente, do Senado, a ser divulgado nesta segunda-feira (13). â€œSinais da retomada chegam Ã  arrecadaÃ§Ã£o\".\r\nEmbora o resultado positivo seja pequeno, comeÃ§am a reagir as receitas vindas da cobranÃ§a de tributos que dependem diretamente da retomada, como o IPI (Imposto sobre Produtos Industrializados) e a contribuiÃ§Ã£o sobre a folha de pagamento.', 'Congresso pode legalizar jogo de azar no Brasil. '),
(23, '\"NÃ£o Ã© coisa demorada\"', '5a13503418d26.png', 'Em busca de aprovar a reforma da PrevidÃªncia, o presidente Michel Temer vai conversar com lÃ­deres da base aliada nesta semana para definir mudanÃ§as na sua equipe ministerial. Ao blog, o ministro Moreira Franco (Secretaria Geral da PresidÃªncia) disse que a reforma ministerial â€œnÃ£o Ã© coisa demoradaâ€ e deve sair em breve.\r\nO objetivo Ã© garantir a aprovaÃ§Ã£o das alteraÃ§Ãµes no sistema previdenciÃ¡rio e do ajuste fiscal que garante o cumprimento da meta do ano que vem, um dÃ©ficit de R$ 159 bilhÃµes.\r\nPMDB e partidos ligados ao antigo centrÃ£o, como PP e PTB, pressionam por mais espaÃ§o no governo sob argumento de que tÃªm votado com o presidente Michel Temer, enquanto outros aliados, principalmente o PSDB, estÃ£o divididos e nÃ£o estÃ£o entregando mais da metade dos votos ao PalÃ¡cio do Planalto.\r\nNas negociaÃ§Ãµes com seus aliados, o presidente quer a garantia de que, feita a reforma ministerial, eles darÃ£o os votos necessÃ¡rios para aprovar o novo texto das alteraÃ§Ãµes nas regras da aposentadoria no paÃ­s.\r\nA expectativa Ã© que o relator da proposta, deputado Arthur Maia (PPS-BA), finalize a nova emenda nessa semana, com uma versÃ£o mais enxuta e viÃ¡vel nesse momento.\r\nO governo tem pressa, por avaliar que, se nÃ£o destravar a votaÃ§Ã£o atÃ© o final de novembro, nÃ£o terÃ¡ mais condiÃ§Ãµes de aprovar a reforma da PrevidÃªncia Social ainda nesse ano na CÃ¢mara dos Deputados. Se isso acontecer, ela ficaria inviabilizada nesse governo, pois ninguÃ©m acredita que os deputados aceitem votar o tema durante o ano eleitoral.', 'Reforma ministerial Ã© defendida por Moreira.'),
(25, 'Novo ministro.', '5a13523f75d85.png', 'deputado Alexandre Baldy (GO) divulgou no site dele, nesta segunda-feira (20), uma nota na qual informou que tomarÃ¡ posse nesta quarta (22) como novo ministro das Cidades.\r\nProcurada, a Secretaria de Imprensa da PresidÃªncia nÃ£o confirmou que ele assumirÃ¡ a pasta nem que tomarÃ¡ posse na quarta.\r\nSegundo apurou o G1, o ministÃ©rio jÃ¡ atÃ© preparou os convites para a cerimÃ´nia de transmissÃ£o de cargo.\r\nA informaÃ§Ã£o de que Baldy aceitou o convite do presidente Michel Temer para assumir o MinistÃ©rio das Cidades foi divulgada na noite deste domingo (19), no Blog da AndrÃ©ia Sadi. Se confirmada a nomeaÃ§Ã£o dele, Baldy substituirÃ¡ no comando da pasta o tambÃ©m deputado Bruno AraÃºjo (PSDB-PE), que pediu demissÃ£o na semana passada.\r\nMais cedo, nesta segunda, o Podemos, partido ao qual Baldy era filiado, anunciou a saÃ­da do deputado porque ele assumirÃ¡ um cargo no governo.\r\nPara a legenda, a atitude dele de aceitar o convite de Temer para o ministÃ©rio Ã© \"incompatÃ­vel\" com a independÃªncia da legenda em relaÃ§Ã£o ao Planalto.\r\nSobre este assunto, a assessoria do deputado informou que Baldy jÃ¡ havia anunciado a desfiliaÃ§Ã£o, mas ainda nÃ£o tinha saÃ­do por questÃµes burocrÃ¡ticas.', 'Deputado Baldy Ã© o mais novo ministro das cidades'),
(26, 'Nova reforma', '5a13546511ef5.png', 'ministro da Fazenda Henrique Meirelles afirmou na manhÃ£ desta segunda-feira (20), em Salvador, que a nova versÃ£o da reforma da previdÃªncia deve ser apresentada no Congresso Nacional ainda nessa semana. A expectativa do governo Ã© de que a votaÃ§Ã£o em 1Â° e 2Â° turnos ocorra atÃ© o final desse ano.\r\n\"O deputado Arthur Maia, relator, tem trabalhado intensamente no substitutivo, que Ã© um projeto incorporando todas as discussÃµes. Deve estar apresentando agora, ainda essa semana\".\r\nDiante da apresentaÃ§Ã£o, o ministro afirma que o projeto deve ser votado antes de meados de dezembro. \"O presidente [da CÃ¢mara] Rodrigo Maia estÃ¡ pensando em colocar em votaÃ§Ã£o na primeira semana de dezembro. Finalzinho de novembro, primeira semana de dezembro\".\r\nSobre a nova versÃ£o da reforma da previdÃªncia, Meirelles disse que o governo nÃ£o irÃ¡ abrir mÃ£o, ao menos, de trÃªs itens.\r\n\"Certamente a idade mÃ­nima, certamente o perÃ­odo de transiÃ§Ã£o e a unicidade, ou seja ter um regime Ãºnico pro servidor pÃºblico e privado\".\r\nPara defender a reforma da previdÃªncia no Brasil, o ministro falou sobre a situaÃ§Ã£o da GrÃ©cia, que precisou fazer cortes nos valores pagos aos aposentados.\r\n\"O paÃ­s Ã© sÃ©rio, mas entrou em regime de gasto pÃºblico baseado no perÃ­odo que a economia crescia muito. EntÃ£o, gastaram. O que aconteceu? Uma hora tiveram que fazer o ajuste. Nesse ajuste, concluÃ­ram que eles nÃ£o tinham como pagar as aposentadorias jÃ¡ dadas. Tiveram que cortar para continuar pagando. Cortaram uma vez. NÃ£o foi suficiente. Cortaram outra. JÃ¡ cortaram 14 vezes. Isso Ã© uma tragÃ©dia. O Brasil estÃ¡ longe disso. NÃ³s vamos evitar que isso aconteÃ§a\".\r\nAs declaraÃ§Ãµes foram dadas durante uma participaÃ§Ã£o do ministro no IV FÃ³rum Bahia EconÃ´mica. TambÃ©m estiveram no evento, na manhÃ£ desta segunda, o secretÃ¡rio da Fazenda da Bahia, Manoel VitÃ³rio, e o titular da pasta em Salvador, Paulo Souto, alÃ©m do presidente da Assembleia Legislativa da Bahia (Alba), Ã‚ngelo Coronel.', 'Nova versÃ£o da reforma da previdÃªncia Ã© anunciada '),
(30, 'Titulo da noticia', '5a15b189805ab.png', 'NOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTENOTICIA GIGANTE', 'ESTA NOTICIA SE BASEA EM ALGO BEM LEGAL BEM LEGAL');

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

--
-- Extraindo dados da tabela `tb_partidos`
--

INSERT INTO `tb_partidos` (`id_partido`, `nome`, `imagem`, `sigla`, `ano_fundacao`, `ideais`) VALUES
(6, 'Partidos do renascentismo', '5a136131310fd.png', 'PDR', '01/01/1500', 'Vivenciar a revoluÃ§Ã£o da arte e ciÃªncia'),
(7, 'Partidos dos filÃ³sofos', '5a149f795b6de.jpg', 'PDF', '02/02/1800', 'Filosofar ');

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
(10, 'Mateus Andreatta', 'mateus-henrique2001@hotmail.com', 'senha123', '05/03/2001', 'masculino'),
(11, 'Julia Ribeiro', 'julialouback@gmail.com', '98354830', '29/01/2001', 'feminino'),
(12, 'natanael', 'natanael.custodio.vieira@gmail.com', 'nataskate100', '11/05/2001', 'masculino'),
(13, 'Julia', 'julialouback@gmail.com', '98354830', '29/01/2001', 'feminino');

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
  MODIFY `id_candidato` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_eventos`
--
ALTER TABLE `tb_eventos`
  MODIFY `id_evento` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_forum`
--
ALTER TABLE `tb_forum`
  MODIFY `id_comentario` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_noticias`
--
ALTER TABLE `tb_noticias`
  MODIFY `id_noticia` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tb_partidos`
--
ALTER TABLE `tb_partidos`
  MODIFY `id_partido` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
