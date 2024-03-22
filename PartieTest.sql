/*
Coignard Maël
Mellah Rayanne
*/




--testKamp
--Supprimer Tuffigo de la base de donnée et remplacer toutes ses apparation avec Raut
UPDATE GroupeInfo1 SET tuteurGroupe = 'SR' WHERE tuteurGroupe = 'HT';
UPDATE Apprenti SET tuteurApp = 'SR' WHERE tuteurApp = 'HT';
DELETE FROM Enseignant WHERE idEns = 'HT'
;


/* Aucun retour attendu
MySQL  localhost:33060+ ssl  db_iut  SQL > SELECT * FROM Enseignant
                                         -> WHERE idEns = 'HT';
Empty set (0.0014 sec)
 MySQL  localhost:33060+ ssl  db_iut  SQL > SELECT * FROM GroupeInfo1
                                         -> WHERE tuteurGroupe = 'HT';
Empty set (0.0014 sec)
 MySQL  localhost:33060+ ssl  db_iut  SQL > SELECT * FROM Apprenti
                                         -> WHERE tuteurApp = 'HT';
Empty set (0.0016 sec)
*/


--(Erreur attendu) Donner les droit d'écriture dans toutes la base à Fleurquin (fleurquin@localhost)
GRANT 'db_iut_ecriture' TO 'fleurquin'@'localhost';

/*
 MySQL  localhost:33060+ ssl  SQL > GRANT 'db_iut_ecriture' TO 'fleurquin'@'localhost';
ERROR: 1227: Access denied; you need (at least one of) the WITH ADMIN, ROLE_ADMIN, SUPER privilege(s) for this operation
*/


--testKhayata
--Changer le tuteur du groupe C pour mettre Philippe Tonin
UPDATE GroupeInfo1 SET tuteurGroupe = 'PT' WHERE idGroupe = 'C';


--(Erreur attendu) Ajouter le Médiateur Européen d'id 72 dans Entreprise dans le département 67 





--testBaudont








--testFleurquin
--Changer la poursuite d'étude de Laliman Simon pour mettre Licence Info Vannes


--(Erreur attendu) Changer le dossier de Laliman Simon pour mettre qu'il a fait une Formation Initial en BUT 2 et qu'il a pris le parcours IA