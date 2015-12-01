/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


DROP DATABASE IF EXISTS `syspadaria`;
CREATE DATABASE `syspadaria` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `syspadaria`;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL auto_increment,
  `nome` varchar(100) default NULL,
  `telefone` varchar(50) default NULL,
  PRIMARY KEY  (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `clientes` VALUES (1,'Cliente da Padaria','(99) 9999-9999');
INSERT INTO `clientes` VALUES (2,'Werik da Silva Pires','(99) 98195-4987');
INSERT INTO `clientes` VALUES (3,'Sebastião Ricardo Costa Rodrigues','(99) 98180-1239');
INSERT INTO `clientes` VALUES (4,'Manu Lemos','(99) 98123-2132');
CREATE TABLE `movimentos` (
  `id_mov` int(11) NOT NULL auto_increment,
  `descricao` varchar(100) default NULL,
  `data_mov` datetime default NULL,
  `valor` decimal(10,2) default NULL,
  `saldo` decimal(10,2) default NULL,
  PRIMARY KEY  (`id_mov`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `movimentos` VALUES (1,'ABERTURA DO CAIXA','2015-12-01 08:00:00',50,0);
INSERT INTO `movimentos` VALUES (2,'COMPRA SACO DE TRIGO','2015-12-01 11:00:00',-40,0);
INSERT INTO `movimentos` VALUES (3,'VENDAS EM 01/12/2015','2015-12-01 21:00:00',560,0);
INSERT INTO `movimentos` VALUES (4,'RETIRADA DO CAIXA','2015-12-01 21:15:00',-500,0);
INSERT INTO `movimentos` VALUES (5,'FECHAMENTO DO CAIXA','2015-12-01 21:25:00',0,70);
INSERT INTO `movimentos` VALUES (6,'Pagamento de Funcionário','2015-12-01 11:13:59',-500,NULL);
INSERT INTO `movimentos` VALUES (7,'Pagamento de Cliente','2015-12-01 11:40:47',1000,NULL);
CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL auto_increment,
  `descricao` varchar(100) default NULL,
  PRIMARY KEY  (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `produtos` VALUES (1,'Produto da Padaria');
INSERT INTO `produtos` VALUES (2,'Pão de Forma Caseiro');
INSERT INTO `produtos` VALUES (3,'Empanado de Frango');
INSERT INTO `produtos` VALUES (4,'Pagamento de Funcionário');
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL auto_increment,
  `nome` varchar(100) default NULL,
  `login` varchar(50) default NULL,
  `senha` varchar(50) default NULL,
  PRIMARY KEY  (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `usuarios` VALUES (1,'Administrador','admin','c03eb9512525e1fb104a784dec7b4876');
CREATE TABLE `vendas` (
  `id_venda` int(11) NOT NULL auto_increment,
  `id_cliente` int(11) default NULL,
  `id_produto` int(11) default NULL,
  `valor` decimal(10,2) default NULL,
  `data_venda` datetime default NULL,
  `data_pagamento` datetime default NULL,
  PRIMARY KEY  (`id_venda`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_produto` (`id_produto`),
  KEY `data_pagamento` (`data_pagamento`),
  KEY `data_venda` (`data_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `vendas` VALUES (1,1,1,2,'2015-11-19 08:48:50','2015-11-19 08:48:50');
INSERT INTO `vendas` VALUES (2,1,1,5,'2015-11-19 11:07:07','2015-11-19 11:07:07');
INSERT INTO `vendas` VALUES (3,1,1,6,'2015-11-19 11:07:07','2015-11-19 11:07:07');
INSERT INTO `vendas` VALUES (4,1,1,7,'2015-11-19 11:07:27',NULL);
INSERT INTO `vendas` VALUES (5,3,1,11,'2015-11-19 11:13:39',NULL);
INSERT INTO `vendas` VALUES (6,2,1,5,'2015-11-19 11:20:50','2015-11-19 11:20:50');
INSERT INTO `vendas` VALUES (7,1,1,8,'2015-11-19 11:21:23','2015-11-19 11:21:23');
INSERT INTO `vendas` VALUES (8,3,1,8.75,'2015-11-19 11:32:46','2015-11-19 11:32:46');
INSERT INTO `vendas` VALUES (9,2,2,2.25,'2015-11-19 11:35:05','2015-11-19 11:35:05');
INSERT INTO `vendas` VALUES (10,1,1,5,'2015-11-19 11:41:07',NULL);
INSERT INTO `vendas` VALUES (11,2,2,7.25,'2015-11-19 11:47:42','2015-11-19 11:47:42');
INSERT INTO `vendas` VALUES (12,1,1,0.5,'2015-11-20 09:34:35','2015-11-20 09:34:35');
INSERT INTO `vendas` VALUES (13,1,1,0.6,'2015-11-20 09:35:01','2015-11-20 09:35:01');
INSERT INTO `vendas` VALUES (14,1,1,0.8,'2015-11-20 09:35:42','2015-11-20 09:35:42');
INSERT INTO `vendas` VALUES (15,1,1,1,'2015-11-20 09:36:17','2015-11-20 09:36:17');
INSERT INTO `vendas` VALUES (16,1,1,0.01,'2015-11-20 09:39:26','2015-11-20 09:39:26');
INSERT INTO `vendas` VALUES (17,1,1,0.01,'2015-11-20 09:48:43','2015-11-20 09:48:43');
INSERT INTO `vendas` VALUES (18,1,1,1.11,'2015-11-20 09:50:35','2015-11-20 09:50:35');
INSERT INTO `vendas` VALUES (19,1,1,5.66,'2015-11-20 09:50:41','2015-11-20 09:50:41');
INSERT INTO `vendas` VALUES (20,1,1,1234.56,'2015-11-20 10:32:48','2015-11-20 10:32:48');
INSERT INTO `vendas` VALUES (21,1,1,11.5,'2015-11-21 10:47:11',NULL);
INSERT INTO `vendas` VALUES (22,1,1,7.5,'2015-11-24 16:51:37','2015-11-24 16:51:37');
INSERT INTO `vendas` VALUES (23,1,1,54.35,'2015-11-24 16:55:45','2015-11-24 16:55:45');
INSERT INTO `vendas` VALUES (24,1,1,6,'2015-11-25 17:09:27','2015-11-25 17:09:27');
INSERT INTO `vendas` VALUES (25,3,2,5,'2015-11-25 17:10:00','2015-11-25 17:10:00');
INSERT INTO `vendas` VALUES (26,3,1,7,'2015-11-25 17:10:14',NULL);

ALTER TABLE `vendas`
  ADD FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON UPDATE CASCADE,
  ADD FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`) ON UPDATE CASCADE;


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
