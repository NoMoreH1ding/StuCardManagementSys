CREATE TABLE IF NOT EXISTS `user` (
	`id`   INT UNSIGNED AUTO_INCREMENT,  
	`user` VARCHAR(20) NOT NULL,
	`pass` VARCHAR(40) NOT NULL,
	`name` VARCHAR(20) NOT NULL,
	`role` VARCHAR(20) NOT NULL,
	PRIMARY KEY(id)	
);

INSERT INTO user(user, pass, name, role) values('admin', md5('123456'), '管理员', 'ADMIN');
INSERT INTO user(user, pass, name, role) values('UserA', md5('123456'), '用户A', 'USER');
