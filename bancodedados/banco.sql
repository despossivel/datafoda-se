
-- CREATE TABLE IF NOT EXISTS `countDown` (
--   `dateTime` VARCHAR(255)
-- ) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- INSERT INTO `datafodase`.`countDown` (`dateTime`) VALUES ('06/11/2021 22:03:03');

CREATE TABLE IF NOT EXISTS `ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `candidatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(55) NOT NULL,
  `numero` int(11) NOT NULL,
  `partido` varchar(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

ALTER TABLE `candidatos` 
ADD COLUMN `sexo` VARCHAR(255) NULL AFTER `foto`,
ADD COLUMN `phoneNumber` VARCHAR(255) NULL AFTER `sexo`,
ADD COLUMN `phoneNumberConjugue` VARCHAR(255) NULL AFTER `sexo`,
ADD COLUMN `status` Boolean NULL AFTER `phoneNumber`;
 
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('2', 'Jair Bolsonaro', '17', 'PSL', 'https://abrilveja.files.wordpress.com/2018/08/jair-bolsonaro1.jpg?quality=70&strip=info');
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('3', 'Marina Silva', '18', 'REDE', 'https://abrilveja.files.wordpress.com/2018/07/brasil-eleicoes-marina-silva-006.jpg?quality=70&strip=info');
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('4', 'Ciro Gomes', '12', 'PDT', 'https://abrilveja.files.wordpress.com/2018/08/brasil-eleicoes-debate-band-20180809-0017-copy.jpg?quality=70&strip=info');
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('5', 'Geraldo Alckmin', '45', 'PSDB', 'https://abrilveja.files.wordpress.com/2018/08/brasil-eleicoes-debate-band-20180810-0021-copy.jpg?quality=70&strip=info');
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('6', 'Fernando Haddad ', '13', 'PT', 'https://abrilveja.files.wordpress.com/2018/09/brasil-fernando-haddad-20180904001.jpg?quality=70&strip=info');
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('7', 'Alvaro Dias', '19', 'PODEMOS', 'https://abrilveja.files.wordpress.com/2018/08/alvaro-dias.jpg?quality=70&strip=info');
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('8', 'Henrique Meirelles', '15', 'MDB', 'https://abrilveja.files.wordpress.com/2018/08/brasil-eleicoes-debate-band-20180810-0012-copy.jpg?quality=70&strip=info');
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('9', 'João Amoêdo', '30', 'NOVO', 'https://abrilveja.files.wordpress.com/2018/08/joao-amoedo-partido-novo-1162.jpg?quality=70&strip=info');
INSERT INTO `datafodase`.`candidatos` (`id`, `nome`, `numero`, `partido`, `foto`) VALUES ('10', 'Guilherme Boulos', '50', 'PSOL', 'https://abrilveja.files.wordpress.com/2018/08/brasil-eleicoes-debate-band-20180809-0020-copy.jpg?quality=70&strip=info');

CREATE TABLE IF NOT EXISTS `dataFodase`.`votos` (
  `idCandidato` int(11) NOT NULL,
  `votos` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



ALTER TABLE `votos` 
ADD COLUMN `categoria` VARCHAR(255) AFTER `votos`,
ADD COLUMN `macAddress` VARCHAR(255) AFTER `categoria`,
ADD COLUMN `phoneNumber` VARCHAR(255) AFTER `macAddress`;


-- ALTER TABLE `votos` 
-- ADD COLUMN `id` INT(11) NULL AUTO_INCREMENT AFTER `ip`,
-- ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC);
-- ALTER TABLE `votos` 
-- ADD COLUMN `ip` VARCHAR(255) NULL AFTER `votos`;
-- ALTER TABLE `votos` 
-- ADD COLUMN `categoria` VARCHAR(255) AFTER `ip`,
-- ADD COLUMN `macAddress` VARCHAR(255) AFTER `categoria`,
-- ADD COLUMN `phoneNumber` VARCHAR(255) AFTER `macAddress`;



