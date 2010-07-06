CREATE TABLE `auth` (
  `id` int(11) NOT NULL auto_increment,
  `session` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ;

CREATE TABLE `clients` (
  `id` int(4) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ;

CREATE TABLE `input` (
  `id` int(11) NOT NULL auto_increment,
  `session` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `realm` varchar(50) default NULL,
  `success` tinyint(1) default NULL,
  `input` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `session` (`session`,`timestamp`,`realm`)
) ;

CREATE TABLE `sensors` (
  `id` int(11) NOT NULL auto_increment,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `starttime` datetime NOT NULL,
  `endtime` datetime default NULL,
  `sensor` int(4) NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `termsize` varchar(7) default NULL,
  `termtitle` varchar(255) default NULL,
  `client` int(4) default NULL,
  PRIMARY KEY  (`id`),
  KEY `starttime` (`starttime`,`sensor`)
) ;

CREATE TABLE `ttylog` (
  `id` int(11) NOT NULL auto_increment,
  `session` int(11) NOT NULL,
  `ttylog` mediumblob NOT NULL,
  PRIMARY KEY  (`id`)
) ;
