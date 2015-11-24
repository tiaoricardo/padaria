# Host: localhost  (Version: 5.6.17)
# Date: 2015-11-21 14:59:06
# Generator: MySQL-Front 5.3  (Build 4.249)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "clientes"
#

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "clientes"
#

INSERT INTO `clientes` VALUES (1,'Cliente da Padaria','(99) 9999-9999'),(2,'Werik da Silva Pires','(99) 98195-4987'),(3,'Sebastião Ricardo Costa Rodrigues','(99) 98180-1239'),(4,'Manu Lemos','(99) 98123-2132');

#
# Structure for table "produtos"
#

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "produtos"
#

INSERT INTO `produtos` VALUES (1,'Produto da Padaria'),(2,'Pão de Forma Caseiro'),(3,'Empanado de Frango');

#
# Structure for table "usuarios"
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "usuarios"
#

INSERT INTO `usuarios` VALUES (1,'Administrador','admin','padaria'),(2,'Werik da Silva Pires','admin','admin'),(3,'Gerente','admin','admin'),(4,'Gerente','admin','12345'),(5,'teste','tata','tata');

#
# Structure for table "vendas"
#

DROP TABLE IF EXISTS `vendas`;
CREATE TABLE `vendas` (
  `id_venda` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `data_venda` datetime DEFAULT NULL,
  `data_pagamento` datetime DEFAULT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_produto` (`id_produto`),
  KEY `data_pagamento` (`data_pagamento`),
  KEY `data_venda` (`data_venda`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

#
# Data for table "vendas"
#

INSERT INTO `vendas` VALUES (1,1,1,2.00,'2015-11-19 08:48:50','2015-11-19 08:48:50'),(2,1,1,5.00,'2015-11-19 11:07:07','2015-11-19 11:07:07'),(3,1,1,6.00,'2015-11-19 11:07:07','2015-11-19 11:07:07'),(4,1,1,7.00,'2015-11-19 11:07:27',NULL),(5,3,1,11.00,'2015-11-19 11:13:39',NULL),(6,2,1,5.00,'2015-11-19 11:20:50','2015-11-19 11:20:50'),(7,1,1,8.00,'2015-11-19 11:21:23','2015-11-19 11:21:23'),(8,3,1,8.75,'2015-11-19 11:32:46','2015-11-19 11:32:46'),(9,2,2,2.25,'2015-11-19 11:35:05','2015-11-19 11:35:05'),(10,1,1,5.00,'2015-11-19 11:41:07',NULL),(11,2,2,7.25,'2015-11-19 11:47:42','2015-11-19 11:47:42'),(12,1,1,0.50,'2015-11-20 09:34:35','2015-11-20 09:34:35'),(13,1,1,0.60,'2015-11-20 09:35:01','2015-11-20 09:35:01'),(14,1,1,0.80,'2015-11-20 09:35:42','2015-11-20 09:35:42'),(15,1,1,1.00,'2015-11-20 09:36:17','2015-11-20 09:36:17'),(16,1,1,0.01,'2015-11-20 09:39:26','2015-11-20 09:39:26'),(17,1,1,0.01,'2015-11-20 09:48:43','2015-11-20 09:48:43'),(18,1,1,1.11,'2015-11-20 09:50:35','2015-11-20 09:50:35'),(19,1,1,5.66,'2015-11-20 09:50:41','2015-11-20 09:50:41'),(20,1,1,1234.56,'2015-11-20 10:32:48','2015-11-20 10:32:48'),(21,1,1,11.50,'2015-11-21 10:47:11',NULL);
