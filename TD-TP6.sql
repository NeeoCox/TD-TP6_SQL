/*
Coignard Maël
Mellah Rayanne
*/

--Q1
--.1
SELECT user, host FROM mysql.user;
DROP USER rian@localhost;

SHOW DATABASES;

DROP DATABASE bd_r206;
DROP DATABASE bd_r206_avion;
DROP DATABASE bd_r206_banque;
DROP DATABASE bd_r206_iutapprentissage;

--.2
CREATE DATABASE bd_iut;
CREATE USER 'pham'@'localhost' IDENTIFIED BY 'mdp_pham';
CREATE ROLE 'DBA';
GRANT ALL PRIVILEGES ON *.* TO 'DBA' WITH GRANT OPTION;
GRANT 'DBA' TO 'pham'@'localhost' ;