CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `role` VALUES (1,'ADMIN');
INSERT INTO `role` VALUES (2,'USER');

CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `finished` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1

CREATE TABLE `user_task` (
	`id` int(11) not NULL AUTO_INCREMENT,
  `personel_id` int(11)  NOT NULL,
  `task_id` int(11)  NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_personeltask_personel_id` (`personel_id`),
  KEY `id_personeltask_task_id` (`task_id`),
  CONSTRAINT `id_personeltask_personel_id` FOREIGN KEY (`personel_id`) REFERENCES `personel` (`id`),
  CONSTRAINT `id_personeltask_task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
