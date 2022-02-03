CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `login`;

# CREATE USER 'login'@'%' IDENTIFIED BY 'login';
# GRANT ALL PRIVILEGES ON login.* TO 'login'@'%';
# FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL, 
  `username` varchar(50) NOT NULL, 
  `password` varchar(255) NOT NULL, 
  `email` varchar(100) NOT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;
INSERT INTO `accounts` (
  `id`, `username`, `password`, `email`
) 
VALUES 
  (
    1, 
    'admin', 
    SHA2(
      CONCAT(
        RAND(), 
        UUID(), 
        RAND()
      ), 
      512
    ), 
    'admin@flatt.tech'
  );
ALTER TABLE 
  `accounts` 
ADD 
  PRIMARY KEY (`id`);
ALTER TABLE 
  `accounts` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, 
  AUTO_INCREMENT = 2;
