/*
Coignard Maël
Mellah Rayanne
*/

/*====Question 2====*/

/*Connexion a l'utilisateur root\sql \connect root@localhost*/
/*Creation base bd_iut : CREATE DATABASE bd_iut*/

/* pour créer l'utilisarteur puis lui donner les permission on utilise ses commande*/
CREATE USER pham@localhost
    IDENTIFIED BY 'mdp_pham';

GRANT ALL PRIVILEGES ON *.* TO pham@localhost WITH GRANT OPTION;

/*====Question 3====*/

/*La commande pour executer les fichier de création et de remplissage des table*/

/*\. "C:\Users\Administrateur\Desktop\Dossier_avec_tout\BUTnfo\Semestre 2\R2.06 Exploitation d'une base de données\TD-TP6\R206_TP1_Creation_MySQL.sql"
\. "C:\Users\Administrateur\Desktop\Dossier_avec_tout\BUTnfo\Semestre 2\R2.06 Exploitation d'une base de données\TD-TP6\R206_TP1_Remplissage_MySQL.sql"
*/

/*====Question 4====*/

CREATE OR REPLACE VIEW vue_Etud_Stage_ENT
AS 
SELECT idEtud, nomEtud, prenomEtud
FROM Etudiant, Stagiaire
WHERE idEtud = etudStagiaire;

SELECT idEtud, nomEtud, prenomEtud
FROM vue_Etud_Stage_ENT;

CREATE OR REPLACE VIEW vue_Etud_App_ENT
AS 
SELECT idEtud, nomEtud, prenomEtud
FROM Etudiant, Apprenti
WHERE idEtud = etudApp;

SELECT idEtud, nomEtud, prenomEtud
FROM vue_Etud_App_ENT;

/*====Question 5====*/

CREATE USER kamp@localhost IDENTIFIED BY 'mdp_kamp' ;

CREATE USER khayata@localhost IDENTIFIED BY 'mdp_khayata' ;

CREATE USER baudont@localhost IDENTIFIED BY 'mdp_baudont' ;

CREATE USER fleurquin@localhost IDENTIFIED BY 'mdp_fleurquin' ;

/*====Question 6====*/

CREATE ROLE 'bd_iut_lecture';
/*On revoke tout les privilege pour rien avoir*/
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'bd_iut_lecture';
/*Pui on donne la perission qui nous interesse*/
GRANT SELECT ON db_iut.* TO 'bd_iut_lecture';

CREATE ROLE 'bd_iut_ecriture';

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'bd_iut_ecriture';

GRANT SELECT, INSERT ON bd_iut.* TO 'bd_iut_ecriture';

/*====Question 7====*/

GRANT 'bd_iut_lecture', 'bd_iut_ecriture' TO 'kamp'@'localhost';

GRANT 'bd_iut_lecture' TO 'khayata'@'localhost' ;
GRANT INSERT, SELECT, DELETE, UPDATE On bd_iut.Etudiant TO khayata@localhost
GRANT INSERT, SELECT, DELETE, UPDATE On bd_iut.GroupeInfo1 TO khayata@localhost;


