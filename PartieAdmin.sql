/*
Coignard Maël
Mellah Rayanne
*/

--root@localhost
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

--pham@localhost

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

--.5
CREATE USER 'kamp'@'localhost' IDENTIFIED BY 'mdp_kamp';
CREATE USER 'khayata'@'localhost' IDENTIFIED BY 'mdp_khayata';
CREATE USER 'baudont'@'localhost' IDENTIFIED BY 'mdp_baudont';
CREATE USER 'fleurquin'@'localhost' IDENTIFIED BY 'mdp_fleurquin';


CREATE ROLE 'db_iut_lecture','db_iut_ecriture';

GRANT SELECT ON db_iut.* TO 'db_iut_lecture';
GRANT INSERT,CREATE,DELETE,DROP,ALTER ON db_iut.* TO 'db_iut_ecriture';

--.7
GRANT 'db_iut_lecture','db_iut_ecriture' TO 'kamp'@'localhost';

GRANT 'db_iut_lecture' TO 'khayata'@'localhost';
GRANT INSERT,CREATE,DELETE,DROP,ALTER ON db_iut.Etudiant TO 'khayata'@'localhost';
GRANT INSERT,CREATE,DELETE,DROP,ALTER ON db_iut.GroupeInfo1 TO 'khayata'@'localhost';

GRANT 'db_iut_lecture' TO 'baudont'@'localhost';
GRANT INSERT,CREATE,DELETE,DROP,ALTER ON db_iut.vue_Etud_App_Ent TO 'baudont'@'localhost';

GRANT 'db_iut_lecture' TO 'fleurquin'@'localhost';
GRANT SELECT(poursuiteEtudes) ON db_iut.Etudiant TO 'fleurquin'@'localhost';

--.8
/* 

kamp
+------------------------------------------------------------------------+
| Grants for kamp@localhost                                              |
+------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `kamp`@`localhost`                               |
| GRANT `db_iut_ecriture`@`%`,`db_iut_lecture`@`%` TO `kamp`@`localhost` |
+------------------------------------------------------------------------+

khayata
+----------------------------------------------------------------------------------------------+
| Grants for khayata@localhost                                                                 |
+----------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `khayata`@`localhost`                                                  |
| GRANT INSERT, DELETE, CREATE, DROP, ALTER ON `db_iut`.`etudiant` TO `khayata`@`localhost`    |
| GRANT INSERT, DELETE, CREATE, DROP, ALTER ON `db_iut`.`groupeinfo1` TO `khayata`@`localhost` |
| GRANT `db_iut_lecture`@`%` TO `khayata`@`localhost`                                          |
+----------------------------------------------------------------------------------------------+


baudont
+---------------------------------------------------------------------------------------------------+
| Grants for baudont@localhost                                                                      |
+---------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `baudont`@`localhost`                                                       |
| GRANT INSERT, DELETE, CREATE, DROP, ALTER ON `db_iut`.`vue_etud_app_ent` TO `baudont`@`localhost` |
| GRANT `db_iut_lecture`@`%` TO `baudont`@`localhost`                                               |
+---------------------------------------------------------------------------------------------------+


fleurquin
+------------------------------------------------------------------------------------+
| Grants for fleurquin@localhost                                                     |
+------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `fleurquin`@`localhost`                                      |
| GRANT SELECT (`poursuiteEtudes`) ON `db_iut`.`etudiant` TO `fleurquin`@`localhost` |
| GRANT `db_iut_lecture`@`%` TO `fleurquin`@`localhost`                              |
+------------------------------------------------------------------------------------+

*/