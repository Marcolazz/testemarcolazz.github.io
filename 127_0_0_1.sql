-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2019 às 16:37
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemadelogin`
--
DROP DATABASE IF EXISTS `sistemadelogin`;
CREATE DATABASE IF NOT EXISTS `sistemadelogin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `sistemadelogin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nomeUsuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `senha` char(40) COLLATE utf8mb4_bin NOT NULL,
  `urlImg` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `token` char(10) COLLATE utf8mb4_bin NOT NULL,
  `tempo_de_vida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `urlImg`, `dataCriacao`, `token`, `tempo_de_vida`) VALUES
(6, 'alexandre', 'alexandre', 'alexandre@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'https://static.rfstat.com/renderforest/images/v2/landing-pics/logo_landing/ma5.png', '2019-09-06 15:08:12', '', '2019-09-12 19:29:53'),
(7, 'Marcos', 'McsFury', 'mcsfury@gmail.co', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'https://cdn1.designhill.com/uploads/personal_designs/fa8df761b8e563bcf8bd60f74f2ea4ca-c31c9b35ef5d46e05e1b454ba5eb9cab15565412399598.png?ver=2.9.50', '2019-09-06 16:19:25', '', '2019-09-12 19:29:53'),
(5, 'marcos', 'marcos', 'marcos@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'https://static1.conquistesuavida.com.br/ingredients/5/54/52/05/@/24682--ingredient_detail_ingredient-2.png', '2019-09-06 14:49:18', '', '2019-09-12 19:29:53'),
(8, 'Julio Becker', 'BeckerNTC', 'julio@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'https://st4.depositphotos.com/6765330/19626/v/1600/depositphotos_196260074-stock-illustration-lesbian-gay-bisexual-transgender-lgbt.jpg', '2019-09-06 16:20:34', '', '2019-09-12 19:29:53');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
