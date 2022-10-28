
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


 
CREATE TABLE IF NOT EXISTS `dataFodase`.`votosNegative` (
  `idCandidato` int(11) NOT NULL,
  `votos` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

ALTER TABLE `votosNegative` 
ADD COLUMN `categoria` VARCHAR(255) AFTER `votos`,
ADD COLUMN `macAddress` VARCHAR(255) AFTER `categoria`,
ADD COLUMN `phoneNumber` VARCHAR(255) AFTER `macAddress`;





