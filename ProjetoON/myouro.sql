/*
MySQL Data Transfer
Source Host: myouro.c4pnbguwagd2.sa-east-1.rds.amazonaws.com
Source Database: myouro
Target Host: myouro.c4pnbguwagd2.sa-east-1.rds.amazonaws.com
Target Database: myouro
Date: 11/06/2018 00:02:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `CODCLI` int(11) NOT NULL AUTO_INCREMENT,
  `NOMECLI` varchar(50) DEFAULT NULL,
  `NOMEFANTASIA` varchar(50) NOT NULL DEFAULT '',
  `CNPJCLI` varchar(20) DEFAULT NULL,
  `ULTCOMPRA` date DEFAULT NULL,
  `VLRCOMPRA` double DEFAULT NULL,
  `ULTPGTO` date DEFAULT NULL,
  `VLRPGTO` double DEFAULT NULL,
  `CODSETOR` int(11) DEFAULT NULL,
  `RGCLI` varchar(18) DEFAULT NULL,
  `RGEMISSOR` varchar(10) DEFAULT NULL,
  `RGUF` char(2) DEFAULT NULL,
  `SEXO` char(2) DEFAULT NULL,
  `NATURALIDADE` varchar(30) DEFAULT NULL,
  `SENHA` varchar(30) DEFAULT NULL,
  `DTNASC` date DEFAULT NULL,
  `DIAPGTO` char(2) DEFAULT NULL,
  `CODLOJA` varchar(4) DEFAULT NULL,
  `BLOQUEIO` char(1) DEFAULT 'N',
  PRIMARY KEY (`CODCLI`),
  KEY `CNPJCLI` (`CNPJCLI`),
  KEY `CODCLI` (`CODCLI`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=419 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for endcli
-- ----------------------------
DROP TABLE IF EXISTS `endcli`;
CREATE TABLE `endcli` (
  `IDENDCLI` int(11) NOT NULL AUTO_INCREMENT,
  `CODCLI` int(11) NOT NULL DEFAULT '0',
  `TIPOEND` varchar(15) DEFAULT NULL,
  `CEPCLI` varchar(9) DEFAULT NULL,
  `ENDCLI` varchar(50) DEFAULT NULL,
  `NUMCLI` varchar(10) DEFAULT NULL,
  `BAIRROCLI` varchar(30) DEFAULT NULL,
  `CODCID` int(11) NOT NULL DEFAULT '0',
  `COMPLEMENTO` varchar(50) DEFAULT NULL,
  `NUMERO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDENDCLI`),
  KEY `CODCLI` (`CODCLI`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=197 ROW_FORMAT=DYNAMIC;


-- ----------------------------
-- Table structure for telcli
-- ----------------------------
DROP TABLE IF EXISTS `telcli`;
CREATE TABLE `telcli` (
  `IDTELCLI` int(11) NOT NULL AUTO_INCREMENT,
  `CODCLI` int(11) NOT NULL DEFAULT '0',
  `TIPOTEL` varchar(15) DEFAULT NULL,
  `TELEFONE` varchar(14) NOT NULL DEFAULT '',
  `OBSTEL` varchar(100) DEFAULT NULL,
  `IDOPERADORATELEFONIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDTELCLI`),
  UNIQUE KEY `IDTELCLI` (`IDTELCLI`),
  KEY `CODCLI` (`CODCLI`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=63 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for vendedores
-- ----------------------------
DROP TABLE IF EXISTS `vendedores`;
CREATE TABLE `vendedores` (
  `CODVEND` int(11) NOT NULL AUTO_INCREMENT,
  `NOMEVEND` varchar(50) DEFAULT NULL,
  `APELIDO` varchar(30) DEFAULT NULL,
  `SENHAVEND` varchar(12) NOT NULL DEFAULT '',
  `FUNCAOVEND` char(1) NOT NULL DEFAULT 'V',
  `CODLOJA` int(11) NOT NULL DEFAULT '0',
  `NIVEL` int(1) DEFAULT '0',
  `IDPERFIL` int(11) DEFAULT NULL,
  `SITUACAO` char(1) DEFAULT '',
  `SENHACOLAB` varchar(255) NOT NULL DEFAULT '',
  `SENHAEXPIRADA` char(1) DEFAULT 'N',
  `DATANASC` date DEFAULT NULL,
  `CEPVEND` varchar(9) DEFAULT NULL,
  `ENDVEND` varchar(50) DEFAULT NULL,
  `NUMVEND` varchar(10) DEFAULT NULL,
  `BAIRROVEND` varchar(50) DEFAULT NULL,
  `CODCID` int(11) DEFAULT NULL,
  `FONERES` varchar(14) DEFAULT NULL,
  `FONECEL` varchar(14) DEFAULT NULL,
  `DATAADMISSAO` date DEFAULT NULL,
  `DATADEMISSAO` date DEFAULT NULL,
  `QTDETENTATIVASEX` int(11) DEFAULT '0',
  `EMAIL` varchar(40) DEFAULT NULL,
  `ATENDSIMULTANEO` tinyint(2) NOT NULL DEFAULT '1',
  `STATUS` char(3) DEFAULT 'OFF',
  PRIMARY KEY (`CODVEND`),
  UNIQUE KEY `CODVEND` (`CODVEND`),
  KEY `NOMEVEND` (`NOMEVEND`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=287 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `clientes` VALUES ('16', 'WAGNER OLIVEIRA DA COSTA', '', '36640252880', null, null, null, null, null, '463410944', null, null, 'M', null, null, null, null, null, 'N');
INSERT INTO `clientes` VALUES ('17', 'VSM WAGNER TESTE 001002', '', '11111111111', null, null, null, null, null, '1111111111', null, null, 'F', null, null, null, null, null, 'N');
INSERT INTO `clientes` VALUES ('18', 'SISTEMA VSM INTEGRADO COM CADASTRO', '', '111111111', null, null, null, null, null, '1111111', null, null, 'M', null, null, null, null, null, 'N');
INSERT INTO `endcli` VALUES ('1', '16', 'teste', '1111111', 'TESTE 2020', null, null, '0', null, null);
INSERT INTO `endcli` VALUES ('4', '16', 'RUA', '19803240', 'RUA CATETO, 190', null, 'PRUDENCIANA', '0', 'ASSIS', null);
INSERT INTO `endcli` VALUES ('5', '17', 'RES', null, 'RUA CATETO, 190', null, 'CENTRO', '0', null, null);
INSERT INTO `endcli` VALUES ('6', '18', 'EUA', '19803240', 'RUA CATETO, 190', null, 'Prudenciana', '0', 'Assis', null);
INSERT INTO `endcli` VALUES ('7', '0', null, null, null, null, null, '0', null, null);
INSERT INTO `telcli` VALUES ('3', '18', 'Celular', '9999999', null, null);
INSERT INTO `telcli` VALUES ('4', '18', 'Comercial', '1111111', null, null);
INSERT INTO `vendedores` VALUES ('1', 'VSM', 'CASE', 'demo', 'V', '1', '1', '1', 'A', 'demo', 'N', '0000-00-00', '19803240', null, null, null, null, null, null, null, null, '0', null, '1', 'OFF');
