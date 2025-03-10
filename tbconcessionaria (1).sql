-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/02/2025 às 00:27
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tbconcessionaria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `id_pagamento` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `forma_pagamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pagamentos`
--

INSERT INTO `pagamentos` (`id_pagamento`, `id_venda`, `forma_pagamento`) VALUES
(3179, 1, 'Parcelado'),
(3180, 2, 'Parcelado'),
(3181, 3, 'À Vista'),
(3182, 4, 'Parcelado'),
(3183, 5, 'À vista'),
(3184, 6, 'Parcelado'),
(3185, 7, 'Parcelado'),
(3186, 8, 'À vista'),
(3187, 9, 'Parcelado'),
(3188, 10, 'À vista');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_carro`
--

CREATE TABLE `tb_carro` (
  `Id_carro` int(11) NOT NULL,
  `Ano` int(11) NOT NULL,
  `Cor` varchar(100) NOT NULL,
  `Preço` decimal(10,0) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_versão` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_carro`
--

INSERT INTO `tb_carro` (`Id_carro`, `Ano`, `Cor`, `Preço`, `id_modelo`, `id_versão`) VALUES
(1, 2015, 'Preto', 55000, 1, 1),
(2, 2016, 'Branco', 60000, 1, 1),
(3, 2017, 'Vermelho', 65000, 1, 2),
(4, 2018, 'Azul', 70000, 2, 3),
(5, 2019, 'Cinza', 75000, 2, 3),
(6, 2020, 'Prata', 80000, 2, 4),
(7, 2021, 'Verde', 85000, 3, 5),
(8, 2022, 'Amarelo', 90000, 3, 5),
(9, 2023, 'Roxo', 95000, 3, 6),
(10, 2024, 'Laranja', 100000, 4, 7),
(11, 2015, 'Preto', 55000, 4, 7),
(12, 2016, 'Branco', 60000, 4, 8),
(13, 2017, 'Vermelho', 65000, 5, 9),
(14, 2018, 'Azul', 70000, 5, 9),
(15, 2019, 'Cinza', 75000, 5, 10),
(16, 2020, 'Prata', 80000, 6, 11),
(17, 2021, 'Verde', 85000, 6, 11),
(18, 2022, 'Amarelo', 90000, 7, 12),
(19, 2023, 'Roxo', 95000, 7, 13),
(20, 2024, 'Laranja', 100000, 7, 13),
(21, 2015, 'Preto', 55000, 8, 14),
(22, 2016, 'Branco', 60000, 8, 15),
(23, 2017, 'Vermelho', 65000, 8, 15),
(24, 2018, 'Azul', 70000, 9, 16),
(25, 2019, 'Cinza', 75000, 10, 17),
(26, 2020, 'Prata', 80000, 10, 17),
(27, 2021, 'Verde', 85000, 10, 18),
(28, 2022, 'Amarelo', 90000, 11, 19),
(29, 2023, 'Roxo', 95000, 11, 19),
(30, 2024, 'Laranja', 100000, 12, 20),
(31, 2015, 'Preto', 55000, 12, 21),
(32, 2016, 'Branco', 60000, 12, 21),
(33, 2017, 'Vermelho', 65000, 13, 22),
(34, 2018, 'Azul', 70000, 13, 23),
(35, 2019, 'Cinza', 75000, 13, 24),
(36, 2020, 'Prata', 80000, 13, 24),
(37, 2021, 'Verde', 85000, 14, 25),
(38, 2022, 'Amarelo', 90000, 15, 26),
(39, 2023, 'Roxo', 95000, 16, 27),
(40, 2024, 'Laranja', 100000, 16, 27),
(41, 2015, 'Preto', 55000, 16, 28),
(42, 2016, 'Branco', 60000, 17, 29),
(43, 2017, 'Vermelho', 65000, 17, 29),
(44, 2018, 'Azul', 70000, 18, 30),
(45, 2019, 'Cinza', 75000, 19, 31),
(46, 2020, 'Prata', 80000, 19, 31),
(47, 2021, 'Verde', 85000, 19, 32),
(48, 2022, 'Amarelo', 90000, 19, 33),
(49, 2023, 'Roxo', 95000, 19, 33),
(50, 2024, 'Laranja', 100000, 20, 34),
(51, 2015, 'Vermelho', 65000, 21, 35),
(52, 2016, 'Verde', 60000, 22, 36),
(53, 2017, 'Amarelo', 65000, 23, 37),
(54, 2018, 'Roxo', 70000, 24, 38),
(55, 2019, 'Laranja', 75000, 25, 39),
(56, 2020, 'Preto', 80000, 26, 40),
(57, 2021, 'Branco', 85000, 27, 41),
(58, 2022, 'Vermelho', 90000, 28, 42),
(59, 2023, 'Azul', 95000, 29, 43),
(60, 2024, 'Cinza', 100000, 30, 44),
(61, 2015, 'Prata', 55000, 30, 44),
(62, 2016, 'Verde', 60000, 30, 45),
(63, 2017, 'Amarelo', 65000, 30, 46),
(64, 2018, 'Roxo', 70000, 30, 46),
(65, 2019, 'Laranja', 75000, 30, 47),
(66, 2020, 'Preto', 80000, 31, 48),
(67, 2021, 'Branco', 85000, 31, 49),
(68, 2022, 'Vermelho', 90000, 31, 50),
(69, 2023, 'Azul', 95000, 32, 51),
(70, 2024, 'Cinza', 100000, 33, 52),
(71, 2015, 'Prata', 55000, 33, 52),
(72, 2016, 'Verde', 60000, 33, 53),
(73, 2017, 'Amarelo', 65000, 33, 54),
(74, 2018, 'Roxo', 70000, 33, 54),
(75, 2019, 'Laranja', 75000, 34, 55),
(76, 2020, 'Preto', 80000, 35, 56),
(77, 2021, 'Branco', 85000, 36, 57),
(78, 2022, 'Vermelho', 90000, 37, 58),
(79, 2023, 'Azul', 95000, 38, 59),
(80, 2024, 'Cinza', 100000, 39, 60),
(81, 2015, 'Preto', 55000, 40, 61),
(82, 2016, 'Branco', 60000, 41, 62),
(83, 2017, 'Vermelho', 65000, 42, 63),
(84, 2018, 'Azul', 70000, 43, 64),
(85, 2019, 'Cinza', 75000, 44, 65),
(86, 2020, 'Prata', 80000, 45, 66),
(87, 2021, 'Verde', 85000, 46, 67),
(88, 2022, 'Amarelo', 90000, 46, 67),
(89, 2023, 'Roxo', 95000, 47, 68),
(90, 2024, 'Laranja', 100000, 48, 69),
(91, 2015, 'Preto', 56000, 48, 69),
(92, 2016, 'Branco', 61000, 49, 70),
(93, 2017, 'Vermelho', 66000, 50, 71),
(94, 2018, 'Azul', 71000, 51, 72),
(95, 2019, 'Cinza', 76000, 51, 73),
(96, 2020, 'Prata', 81000, 52, 74),
(97, 2021, 'Verde', 86000, 52, 75),
(98, 2022, 'Amarelo', 91000, 53, 76),
(99, 2023, 'Roxo', 96000, 53, 77),
(100, 2024, 'Laranja', 101000, 54, 78),
(101, 2015, 'Prata', 55000, 54, 78),
(102, 2016, 'Verde', 60000, 55, 79),
(103, 2017, 'Amarelo', 65000, 55, 80),
(104, 2018, 'Roxo', 70000, 56, 81),
(105, 2019, 'Laranja', 75000, 56, 82),
(106, 2020, 'Preto', 80000, 57, 83),
(107, 2021, 'Branco', 85000, 57, 84),
(108, 2022, 'Vermelho', 90000, 58, 85),
(109, 2023, 'Azul', 95000, 59, 86),
(110, 2024, 'Cinza', 100000, 59, 87),
(111, 2015, 'Prata', 55000, 60, 88),
(112, 2016, 'Verde', 60000, 61, 89),
(113, 2017, 'Amarelo', 65000, 62, 90),
(114, 2018, 'Roxo', 70000, 63, 91),
(115, 2019, 'Laranja', 75000, 64, 92),
(116, 2020, 'Preto', 80000, 65, 93),
(117, 2021, 'Branco', 85000, 66, 94),
(118, 2022, 'Vermelho', 90000, 67, 95),
(119, 2023, 'Azul', 95000, 68, 96),
(120, 2024, 'Cinza', 100000, 69, 97),
(121, 2015, 'Prata', 55000, 70, 98),
(122, 2016, 'Verde', 60000, 71, 99),
(123, 2017, 'Amarelo', 65000, 72, 100),
(124, 2018, 'Roxo', 70000, 73, 101),
(125, 2019, 'Laranja', 75000, 74, 102),
(126, 2020, 'Preto', 80000, 75, 103),
(127, 2021, 'Branco', 85000, 76, 104);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `Id_cliente` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `CPF` bigint(20) NOT NULL,
  `Endereço` varchar(100) NOT NULL,
  `Telefone` varchar(50) NOT NULL,
  `Email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`Id_cliente`, `Nome`, `CPF`, `Endereço`, `Telefone`, `Email`) VALUES
(1, 'Ana Souza', 12345678901, 'Rua das Flores, 123 - SP', '(11) 91234-5678', 'ana.souza@email.com'),
(2, 'Carlos Pereira', 23456789012, 'Av. Paulista, 456 - SP', '(11) 92345-6789', 'carlos.pereira@email.com'),
(3, 'Beatriz Lima', 34567890123, 'Rua Azul, 789 - RJ', '(21) 93456-7890', 'beatriz.lima@email.com'),
(4, 'Diego Oliveira', 45678901234, 'Av. Central, 101 - MG', '(31) 94567-8901', 'diego.oliveira@email.com'),
(5, 'Fernanda Ribeiro', 56789012345, 'Rua do Sol, 202 - PR', '(41) 95678-9012', 'fernanda.ribeiro@email.com'),
(6, 'Eduardo Silva', 67890123456, 'Rua Verde, 303 - RS', '(51) 96789-0123', 'eduardo.silva@email.com'),
(7, 'Juliana Mendes', 78901234567, 'Av. das Palmeiras, 404 - SC', '(47) 97890-1234', 'juliana.mendes@email.com'),
(8, 'Marcos Almeida', 89012345678, 'Rua do Bosque, 505 - PE', '(81) 98901-2345', 'marcos.almeida@email.com'),
(9, 'Patrícia Nogueira', 90123456789, 'Av. Atlântica, 606 - BA', '(71) 99012-3456', 'patricia.nogueira@email.com'),
(10, 'Rodrigo Fernandes', 1234567890, 'Rua das Pedras, 707 - CE', '(85) 90123-4567', 'rodrigo.fernandes@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_estoque`
--

CREATE TABLE `tb_estoque` (
  `id_estoque` int(11) NOT NULL,
  `id_carro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_estoque`
--

INSERT INTO `tb_estoque` (`id_estoque`, `id_carro`) VALUES
(1, 21),
(2, 22),
(3, 24),
(4, 28),
(5, 36),
(6, 38),
(7, 46),
(8, 52),
(9, 54),
(10, 58),
(11, 66),
(12, 72),
(13, 74),
(14, 78),
(15, 82),
(16, 84),
(17, 88),
(18, 96),
(19, 100),
(20, 105),
(21, 110),
(22, 113),
(23, 116),
(24, 119),
(25, 126),
(26, 127);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_funcionarios`
--

CREATE TABLE `tb_funcionarios` (
  `Id_funcionario` int(11) NOT NULL,
  `CPF_f` bigint(20) DEFAULT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cargo` varchar(100) NOT NULL,
  `Salario` decimal(10,0) DEFAULT NULL,
  `Data_admissao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_funcionarios`
--

INSERT INTO `tb_funcionarios` (`Id_funcionario`, `CPF_f`, `Nome`, `Cargo`, `Salario`, `Data_admissao`) VALUES
(1144010008, 12545478958, 'Luana Fabianne Silva de Morais', 'Venderdor', 500000, '2023-05-12'),
(1144010021, 12365478965, 'Natalia Galdino Barros', 'supervisor', 700000, '2022-11-21'),
(1144010022, 70670636541, 'ANA RAFAELA GRACIANO FERREIRA', 'diretor comercial', 3054000, '2020-08-22'),
(1144010052, 70770758212, 'Ana Cecilia Alves de Souza', 'Gerente comercial', 1004000, '2020-08-17'),
(1144010077, 75241236987, 'Evilly Egina Silva Souza', 'coordenador', 800000, '2022-05-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_modelo`
--

CREATE TABLE `tb_modelo` (
  `Id_modelo` int(11) NOT NULL,
  `nome_modelo` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_modelo`
--

INSERT INTO `tb_modelo` (`Id_modelo`, `nome_modelo`, `marca`) VALUES
(1, 'Corolla', 'Toyota'),
(2, 'Yaris Hatch', 'Toyota'),
(3, 'Yaris Sedã', 'Toyota'),
(4, 'Corolla Cross', 'Toyota'),
(5, 'SW4', 'Toyota'),
(6, 'RAV4', 'Toyota'),
(7, 'Corolla Hybrid', 'Toyota'),
(8, 'Corolla Cross Hybrid', 'Toyota'),
(9, 'RAV4 Plug-in Hybrid', 'Toyota'),
(10, 'GR Corolla', 'Toyota'),
(11, 'Corolla GR-Sport', 'Toyota'),
(12, 'Corolla Cross GR-Sport', 'Toyota'),
(13, 'Hilux Cabine Dupla', 'Toyota'),
(14, 'Hilux Cabine Simples', 'Toyota'),
(15, 'Tucson', 'Hyundai'),
(16, 'Novo Hyundai CRETA', 'Hyundai'),
(17, 'Novo Hyundai CRETA N Line', 'Hyundai'),
(18, 'IONIQ 5', 'Hyundai'),
(19, 'Novo Hyundai HB20', 'Hyundai'),
(20, 'Novo Hyundai HB20S', 'Hyundai'),
(21, 'HR', 'Hyundai'),
(22, 'New HR-V', 'Honda'),
(23, 'New City - Hatchback', 'Honda'),
(24, 'New City - Sedan', 'Honda'),
(25, 'Civic - Advanced Hybrid', 'Honda'),
(26, 'Civic Type R', 'Honda'),
(27, 'Accord - Advanced Hybrid', 'Honda'),
(28, 'ZR-V', 'Honda'),
(29, 'CR-V - Advanced Hybrid', 'Honda'),
(30, 'Onix', 'Chevrolet'),
(31, 'Onix Plus', 'Chevrolet'),
(32, 'Spin', 'Chevrolet'),
(33, 'Tracker', 'Chevrolet'),
(34, 'Equinox', 'Chevrolet'),
(35, 'Trailblazer', 'Chevrolet'),
(36, 'Montana', 'Chevrolet'),
(37, 'Silverado', 'Chevrolet'),
(38, 'S10 Cabine Simples', 'Chevrolet'),
(39, 'S10 WT', 'Chevrolet'),
(40, 'S10 LTZ', 'Chevrolet'),
(41, 'S10 Z71', 'Chevrolet'),
(42, 'S10 High Country', 'Chevrolet'),
(43, 'Camaro', 'Chevrolet'),
(44, 'Universo EV', 'Chevrolet'),
(45, 'Kwid', 'Renault'),
(46, 'Duster', 'Renault'),
(47, 'Captur', 'Renault'),
(48, 'Oroch', 'Renault'),
(49, 'Megane E-Tech', 'Renault'),
(50, 'Master', 'Renault'),
(51, 'Gol', 'Volkswagen'),
(52, 'Voyage', 'Volkswagen'),
(53, 'Polo', 'Volkswagen'),
(54, 'Virtus', 'Volkswagen'),
(55, 'Nivus', 'Volkswagen'),
(56, 'T-Cross', 'Volkswagen'),
(57, 'Taos', 'Volkswagen'),
(58, 'Tiguan', 'Volkswagen'),
(59, 'Amarok', 'Volkswagen'),
(60, 'Jetta', 'Volkswagen'),
(61, 'Territory', 'Ford'),
(62, 'Edge', 'Ford'),
(63, 'Ranger', 'Ford'),
(64, 'Mustang', 'Ford'),
(65, 'Versa', 'Nissan'),
(66, 'Sentra', 'Nissan'),
(67, 'Kicks', 'Nissan'),
(68, 'Frontier', 'Nissan'),
(69, 'Renegade', 'Jeep'),
(70, 'Compass', 'Jeep'),
(71, 'Commander', 'Jeep'),
(72, 'Mobi', 'Fiat'),
(73, 'Argo', 'Fiat'),
(74, 'Cronos', 'Fiat'),
(75, 'Pulse', 'Fiat'),
(76, 'Strada', 'Fiat');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_vendas`
--

CREATE TABLE `tb_vendas` (
  `id_venda` int(11) NOT NULL,
  `id_carro` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `valor_total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_vendas`
--

INSERT INTO `tb_vendas` (`id_venda`, `id_carro`, `id_cliente`, `id_funcionario`, `data_venda`, `valor_total`) VALUES
(1, 21, 1, 1144010008, '2022-07-26', 55000),
(2, 22, 2, 1144010008, '2022-08-25', 60000),
(3, 28, 3, 1144010021, '2023-01-05', 90000),
(4, 66, 4, 1144010008, '2023-01-22', 80000),
(5, 88, 5, 1144010022, '2023-04-09', 90000),
(6, 100, 6, 1144010052, '2023-10-10', 101000),
(7, 113, 7, 1144010008, '2024-01-20', 65000),
(8, 119, 8, 1144010077, '2024-05-12', 95000),
(9, 126, 9, 1144010021, '2024-06-01', 80000),
(10, 127, 10, 1144010021, '2025-01-24', 85000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_versao`
--

CREATE TABLE `tb_versao` (
  `id_versão` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `nome_versao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_versao`
--

INSERT INTO `tb_versao` (`id_versão`, `id_modelo`, `nome_versao`) VALUES
(1, 1, 'GLi'),
(2, 1, 'Altis Hybrid Premium'),
(3, 2, 'XL'),
(4, 2, 'XLS'),
(5, 3, 'XL'),
(6, 3, 'XLS'),
(7, 4, 'XR'),
(8, 4, 'XRX'),
(9, 5, 'SRX Platinum 5S'),
(10, 5, 'Diamond'),
(11, 6, 'Hybrid 2.5L HEV 4WD SX'),
(12, 7, 'Altis Hybrid'),
(13, 7, 'Altis Hybrid Premium'),
(14, 8, 'XRX'),
(15, 8, 'XRV'),
(16, 9, '2.5L PHEV XSE'),
(17, 10, 'HB Circuit MT'),
(18, 10, 'HB Core MT'),
(19, 11, 'GR-S'),
(20, 12, 'GRS'),
(21, 12, 'GRS Dualtone'),
(22, 13, 'SRX Plus'),
(23, 13, 'SRV'),
(24, 13, 'STD Power Pack 4x4'),
(25, 14, '4x4'),
(26, 15, 'Limited 1.6 Turbo 24/25'),
(27, 16, 'Limited 1.0T AT6'),
(28, 16, 'Platinum'),
(29, 17, 'Única'),
(30, 18, 'Signature'),
(31, 19, 'Comfort Plus 1.0 MT 2025'),
(32, 19, 'Comfort Plus TGDI AT 2025'),
(33, 19, 'Planium Safety 2025'),
(34, 20, 'Comfort Plus MT 2025'),
(35, 21, 'GL - 2.5 TGDI MT 2025'),
(36, 22, 'EX Honda SENSING'),
(37, 23, 'LX'),
(38, 24, 'LX'),
(39, 25, 'Único'),
(40, 26, 'Único'),
(41, 27, 'Único'),
(42, 28, 'Único'),
(43, 29, 'Único'),
(44, 30, '1.0 MT'),
(45, 30, 'LTZ 1.0 Turbo AT'),
(46, 30, 'RS 1.0 Turbo AT'),
(47, 30, 'Premier 1.0 Turbo AT'),
(48, 31, 'LT 1.0 MT'),
(49, 31, 'LTZ 1.0 Turbo AT'),
(50, 31, 'Premier 1.0 Turbo AT'),
(51, 32, 'Única'),
(52, 33, '1.0 Turbo AT '),
(53, 33, 'LT 1.0 Turbo AT '),
(54, 33, 'Premier 1.0 Turbo AT'),
(55, 34, 'Única'),
(56, 35, 'Única'),
(57, 36, 'Única'),
(58, 37, 'Única'),
(59, 38, 'Única'),
(60, 39, 'Única'),
(61, 40, 'Única'),
(62, 41, 'Única'),
(63, 42, 'Única'),
(64, 43, 'Única'),
(65, 44, 'Única'),
(66, 45, 'Zen'),
(67, 46, 'Zen 1.6 CVT'),
(68, 47, 'TCe 1.3 Turbo CVT'),
(69, 48, 'Pro'),
(70, 49, 'Techno'),
(71, 50, 'Chassi'),
(72, 51, '1.0 12V MPI Manual'),
(73, 51, '1.0 12V MPI Last Edition Manual'),
(74, 52, '1.0 12V MPI Manual'),
(75, 53, '1.6 MSI Automático'),
(76, 53, 'Sense'),
(77, 53, 'Highline'),
(78, 54, '1.6 MSI Automático'),
(79, 55, 'Comfortline'),
(80, 55, 'Highline'),
(81, 56, '1.0 TSI'),
(82, 56, '1.4 TSI'),
(83, 57, 'Comfortline'),
(84, 57, 'Highline'),
(85, 58, '250 TSI'),
(86, 59, '2.0 TDI'),
(87, 59, '3.0 V6 TDI'),
(88, 60, '250 TSI  88'),
(89, 61, 'Única'),
(90, 62, 'ST'),
(91, 63, 'XLS 2.2 Diesel 4x2 MT'),
(92, 64, 'Mach 1'),
(93, 65, 'Sense MT'),
(94, 66, 'Advance'),
(95, 67, 'Active CVT'),
(96, 68, 'S MT 4x4'),
(97, 69, '1.3 Turbo'),
(98, 70, 'Sport T270'),
(99, 71, 'Longitude T270 Flex AT6'),
(100, 72, 'Like 1.0'),
(101, 73, '1.0'),
(102, 74, '1.0'),
(103, 75, 'Drive 1.3'),
(104, 76, 'Endurance 1.4');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_venda` (`id_venda`);

--
-- Índices de tabela `tb_carro`
--
ALTER TABLE `tb_carro`
  ADD PRIMARY KEY (`Id_carro`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `fk_carro_versao` (`id_versão`);

--
-- Índices de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`Id_cliente`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices de tabela `tb_estoque`
--
ALTER TABLE `tb_estoque`
  ADD PRIMARY KEY (`id_estoque`),
  ADD KEY `id_carro` (`id_carro`);

--
-- Índices de tabela `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  ADD PRIMARY KEY (`Id_funcionario`),
  ADD UNIQUE KEY `CPF_f` (`CPF_f`);

--
-- Índices de tabela `tb_modelo`
--
ALTER TABLE `tb_modelo`
  ADD PRIMARY KEY (`Id_modelo`);

--
-- Índices de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `id_carro` (`id_carro`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- Índices de tabela `tb_versao`
--
ALTER TABLE `tb_versao`
  ADD PRIMARY KEY (`id_versão`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3189;

--
-- AUTO_INCREMENT de tabela `tb_carro`
--
ALTER TABLE `tb_carro`
  MODIFY `Id_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tb_estoque`
--
ALTER TABLE `tb_estoque`
  MODIFY `id_estoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  MODIFY `Id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1144010078;

--
-- AUTO_INCREMENT de tabela `tb_modelo`
--
ALTER TABLE `tb_modelo`
  MODIFY `Id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tb_versao`
--
ALTER TABLE `tb_versao`
  MODIFY `id_versão` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `tb_vendas` (`id_venda`);

--
-- Restrições para tabelas `tb_carro`
--
ALTER TABLE `tb_carro`
  ADD CONSTRAINT `fk_carro_versao` FOREIGN KEY (`id_versão`) REFERENCES `tb_versao` (`id_versão`),
  ADD CONSTRAINT `tb_carro_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `tb_modelo` (`Id_modelo`);

--
-- Restrições para tabelas `tb_estoque`
--
ALTER TABLE `tb_estoque`
  ADD CONSTRAINT `tb_estoque_ibfk_1` FOREIGN KEY (`id_carro`) REFERENCES `tb_carro` (`Id_carro`);

--
-- Restrições para tabelas `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD CONSTRAINT `tb_vendas_ibfk_1` FOREIGN KEY (`id_carro`) REFERENCES `tb_carro` (`Id_carro`),
  ADD CONSTRAINT `tb_vendas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`Id_cliente`),
  ADD CONSTRAINT `tb_vendas_ibfk_3` FOREIGN KEY (`id_funcionario`) REFERENCES `tb_funcionarios` (`Id_funcionario`);

--
-- Restrições para tabelas `tb_versao`
--
ALTER TABLE `tb_versao`
  ADD CONSTRAINT `tb_versao_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `tb_modelo` (`Id_modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
