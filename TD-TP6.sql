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


--Q2
--.4
CREATE OR REPLACE VIEW vue_Etud_Stag_Ent AS
SELECT idEtud FROM Etudiant
JOIN Stagiaire ON etudStagiaire = idEtud
JOIN Entreprise ON idEntreprise = entrepriseStage
WITH CHECK OPTION;

CREATE OR REPLACE VIEW vue_Etud_App_Ent AS
SELECT idEtud FROM Etudiant
JOIN Apprenti ON etudApp = idEtud
JOIN Entreprise ON idEntreprise = entrepriseApp
WITH CHECK OPTION;