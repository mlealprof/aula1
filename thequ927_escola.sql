-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Fev-2020 às 21:52
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thequ927_escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `id` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  `qt` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`id`, `id_turma`, `id_disciplina`, `qt`, `id_escola`, `id_professor`) VALUES
(30, 0, 0, 0, 1, 0),
(28, 7, 13, 3, 1, 3),
(21, 10, 13, 7, 1, 1),
(20, 10, 13, 7, 1, 1),
(26, 8, 12, 7, 1, 4),
(27, 7, 12, 5, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `diassemana`
--

CREATE TABLE `diassemana` (
  `id` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `descricao` varchar(50) CHARACTER SET utf8 NOT NULL,
  `posicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Extraindo dados da tabela `diassemana`
--

INSERT INTO `diassemana` (`id`, `id_escola`, `descricao`, `posicao`) VALUES
(1, 1, 'SEGUNDA', 1),
(3, 1, 'QUARTA', 4),
(4, 1, 'QUINTA', 5),
(5, 1, 'SEXTA', 6),
(9, 1, 'TERÃ‡A', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id`, `id_escola`, `nome`) VALUES
(12, 1, 'matemÃ¡tica'),
(13, 1, 'portugues');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `escola`
--

INSERT INTO `escola` (`id`, `nome`, `email`, `senha`, `data`) VALUES
(1, 'BERENICE', 'bere@gmail.com', '102030', '2019-03-31'),
(2, 'vila', 'vila@gmail.com', '102030', '2019-03-31'),
(3, 'yolanda', 'yolanda@gmail.com', '102030', '2019-03-31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `descricao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_escola` int(11) NOT NULL,
  `posicao` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`id`, `id_turno`, `descricao`, `ordem`, `id_escola`, `posicao`) VALUES
(32, 32, '09:40 Ã s 10:30', '4Âº', 1, 5),
(31, 32, '09:40 Ã s 10:30', '5Âº', 1, 6),
(30, 32, '09:30 Ã s 09:40', 'Intervalo', 1, 4),
(29, 32, '08:40 Ã s 09:30', '3Âº', 1, 3),
(28, 32, '07:50 Ã s 08:40', '2Âº', 1, 2),
(27, 32, '07:00 Ã s 07:50 ', '1Âº', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `indisponibilidade`
--

CREATE TABLE `indisponibilidade` (
  `id` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `descricao` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `indisponibilidade`
--

INSERT INTO `indisponibilidade` (`id`, `id_professor`, `id_horario`, `id_dia`, `id_escola`, `descricao`) VALUES
(15, 1, 0, 5, 1, ''),
(14, 1, 24, 3, 1, ''),
(12, 3, 24, 5, 1, ''),
(13, 4, 20, 4, 1, ''),
(10, 3, 23, 1, 1, ''),
(9, 3, 22, 1, 1, 'TRABALHO'),
(8, 3, 20, 1, 1, 'TRABALHO'),
(16, 1, 0, 5, 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_escola` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `id_escola`) VALUES
(1, 'MÃ¡rcio', 1),
(3, 'Ana Claudia', 1),
(4, 'Cleuder', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quadro`
--

CREATE TABLE `quadro` (
  `id` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Extraindo dados da tabela `quadro`
--

INSERT INTO `quadro` (`id`, `id_escola`, `id_dia`, `id_horario`, `id_turma`, `id_disciplina`, `id_professor`) VALUES
(241, 1, 1, 27, 10, 0, 0),
(242, 1, 1, 28, 10, 0, 0),
(243, 1, 1, 29, 10, 0, 0),
(244, 1, 1, 30, 10, 0, 0),
(245, 1, 1, 32, 10, 0, 0),
(246, 1, 1, 31, 10, 0, 0),
(247, 1, 9, 27, 10, 0, 0),
(248, 1, 9, 28, 10, 0, 0),
(249, 1, 9, 29, 10, 0, 0),
(250, 1, 9, 30, 10, 0, 0),
(251, 1, 9, 32, 10, 0, 0),
(252, 1, 9, 31, 10, 0, 0),
(253, 1, 3, 27, 10, 0, 0),
(254, 1, 3, 28, 10, 0, 0),
(255, 1, 3, 29, 10, 0, 0),
(256, 1, 3, 30, 10, 0, 0),
(257, 1, 3, 32, 10, 0, 0),
(258, 1, 3, 31, 10, 0, 0),
(259, 1, 4, 27, 10, 0, 0),
(260, 1, 4, 28, 10, 0, 0),
(261, 1, 4, 29, 10, 0, 0),
(262, 1, 4, 30, 10, 0, 0),
(263, 1, 4, 32, 10, 0, 0),
(264, 1, 4, 31, 10, 0, 0),
(265, 1, 5, 27, 10, 0, 0),
(266, 1, 5, 28, 10, 0, 0),
(267, 1, 5, 29, 10, 0, 0),
(268, 1, 5, 30, 10, 0, 0),
(269, 1, 5, 32, 10, 0, 0),
(270, 1, 5, 31, 10, 0, 0),
(271, 1, 1, 27, 8, 0, 0),
(272, 1, 1, 28, 8, 0, 0),
(273, 1, 1, 29, 8, 0, 0),
(274, 1, 1, 30, 8, 0, 0),
(275, 1, 1, 32, 8, 0, 0),
(276, 1, 1, 31, 8, 0, 0),
(277, 1, 9, 27, 8, 0, 0),
(278, 1, 9, 28, 8, 0, 0),
(279, 1, 9, 29, 8, 0, 0),
(280, 1, 9, 30, 8, 0, 0),
(281, 1, 9, 32, 8, 0, 0),
(282, 1, 9, 31, 8, 0, 0),
(283, 1, 3, 27, 8, 0, 0),
(284, 1, 3, 28, 8, 0, 0),
(285, 1, 3, 29, 8, 0, 0),
(286, 1, 3, 30, 8, 0, 0),
(287, 1, 3, 32, 8, 0, 0),
(288, 1, 3, 31, 8, 0, 0),
(289, 1, 4, 27, 8, 0, 0),
(290, 1, 4, 28, 8, 0, 0),
(291, 1, 4, 29, 8, 0, 0),
(292, 1, 4, 30, 8, 0, 0),
(293, 1, 4, 32, 8, 0, 0),
(294, 1, 4, 31, 8, 0, 0),
(295, 1, 5, 27, 8, 0, 0),
(296, 1, 5, 28, 8, 0, 0),
(297, 1, 5, 29, 8, 0, 0),
(298, 1, 5, 30, 8, 0, 0),
(299, 1, 5, 32, 8, 0, 0),
(300, 1, 5, 31, 8, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_escola` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`id`, `id_turno`, `nome`, `id_escola`) VALUES
(7, 34, '2 ano a ', 1),
(8, 32, '3 ano b', 1),
(10, 32, '1 ano a', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_escola` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `turno`
--

INSERT INTO `turno` (`id`, `descricao`, `id_escola`) VALUES
(34, 'NOITE', 1),
(32, 'MANHÃƒ', 1),
(33, 'TARDE', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diassemana`
--
ALTER TABLE `diassemana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indisponibilidade`
--
ALTER TABLE `indisponibilidade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quadro`
--
ALTER TABLE `quadro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `diassemana`
--
ALTER TABLE `diassemana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `escola`
--
ALTER TABLE `escola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `indisponibilidade`
--
ALTER TABLE `indisponibilidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quadro`
--
ALTER TABLE `quadro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
