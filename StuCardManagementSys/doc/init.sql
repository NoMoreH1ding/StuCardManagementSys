CREATE TABLE IF NOT EXISTS `user` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `role` varchar(5) DEFAULT 'user',
  `name` varchar(40) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `balance` float unsigned NOT NULL DEFAULT '0',
  `islost` varchar(45) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
);

INSERT INTO user(name, pass, role) values('admin', md5('iamnotadmin'), 'admin');
INSERT INTO user(name, pass, role) values('user', md5('123456'), 'user');
