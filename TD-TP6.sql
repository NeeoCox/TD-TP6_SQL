/*
Coignard Maël
Mellah Rayanne
*/

--Q1
--.1
SELECT user, host FROM mysql.user;
DROP USER rian@localhost;

SHOW DATABASES;

DROP DATABASE db_r206;
DROP DATABASE db_r206_avion;
DROP DATABASE db_r206_banque;
DROP DATABASE db_r206_iutapprentissage;

--.2
CREATE DATABASE db_iut;
CREATE USER 'pham'@'localhost' IDENTIFIED BY 'mdp_pham';
CREATE ROLE 'DBA';
GRANT ALL PRIVILEGES ON *.* TO 'DBA' WITH GRANT OPTION;
GRANT 'DBA' TO 'pham'@'localhost' ;

--.3
USE db_iut;
\. "C:\Users\Rayanne\Downloads\R206_TP1_Creation_MySQL.sql"
\. "C:\Users\Rayanne\Downloads\R206_TP1_Remplissage_MySQL.sql"