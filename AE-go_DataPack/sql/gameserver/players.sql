DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL, 
  `account_name` varchar(50) NOT NULL,
  `exp` bigint(20) NOT NULL default 0,
  `kinah` int(11) NOT NULL DEFAULT 0,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `heading` int(11) NOT NULL,
  `world_id` int(11) NOT NULL,
  `gender` enum('MALE','FEMALE') NOT NULL,
  `race` enum('ASMODIANS','ELYOS') NOT NULL,
  `player_class` enum('WARRIOR','GLADIATOR','TEMPLAR','SCOUT','ASSASSIN','RANGER','MAGE','SORCERER','SPIRIT_MASTER','PRIEST','CLERIC','CHANTER') NOT NULL,
  `creation_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `deletion_date` timestamp NULL DEFAULT NULL,
  `last_online` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `admin` boolean NOT NULL DEFAULT FALSE,
  `online` boolean NOT NULL DEFAULT FALSE,
  `note` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_unique` (`name`),
  INDEX (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
