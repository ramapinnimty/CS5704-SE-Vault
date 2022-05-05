
--
-- Current Database: `video`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `video` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `video`;




CREATE TABLE `admins` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



insert into admins values('admin', 'admin');

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `videos` (
  `video_ID` varchar(50) NOT NULL,
  `video_title` varchar(200) DEFAULT NULL,
  `uploader` varchar(20) DEFAULT NULL,
  `view_count` varchar(10) DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  PRIMARY KEY (`video_ID`),
  KEY `uploader` (`uploader`),
  CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`uploader`) REFERENCES `users` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `favourites` (
  `username` varchar(20) NOT NULL,
  `video_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`username`,`video_ID`),
  KEY `video_ID` (`video_ID`),
  CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE,
  CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`video_ID`) REFERENCES `videos` (`video_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `flags` (
  `video_ID` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`video_ID`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `flags_ibfk_1` FOREIGN KEY (`video_ID`) REFERENCES `videos` (`video_ID`) ON DELETE CASCADE,
  CONSTRAINT `flags_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER add_date BEFORE INSERT ON `videos`
FOR EACH ROW
BEGIN
SET NEW.upload_date = DATE(NOW());
END */;;
DELIMITER ;



CREATE TABLE `watched` (
  `video_ID` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `count` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`video_ID`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `watched_ibfk_1` FOREIGN KEY (`video_ID`) REFERENCES `videos` (`video_ID`) ON DELETE CASCADE,
  CONSTRAINT `watched_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_to_fav`(IN ID VARCHAR(50), IN watcher VARCHAR(20))
BEGIN
DECLARE count1 VARCHAR(10);
DECLARE cur1 CURSOR FOR (SELECT count FROM watched WHERE video_ID = ID AND username = watcher AND NOT EXISTS (SELECT * FROM favourites WHERE username = watcher AND video_ID = ID));
OPEN cur1;
FETCH cur1 INTO count1;
IF count1 >= 5 THEN
INSERT INTO favourites VALUES(watcher, ID);
END IF;
CLOSE cur1;
END ;;
DELIMITER ;
