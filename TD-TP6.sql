/*
Coignard Maël
Mellah Rayanne
*/

/*====Question 2====*/

/*Connexion a l'utilisateur root \connect root@localhost*/
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