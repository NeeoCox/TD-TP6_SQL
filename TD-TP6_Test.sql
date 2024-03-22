/*Script test user*/
/* test pour user Khayata on ajoute un groupe a groupe info et un Etudiant*/

INSERT INTO groupeInfo1 VAlUES ('O', 'PB');

INSERT INTO Etudiant VALUES ('1234567', 'OATCHI', 'OLIMAR', 'M', 'S', 'LYCEE GENERAL ET TECHNOLOGIQUE FELIX', '22', '8', 'IA', 'App', null);

/*test pour fleurquin on modifie la valeur de poursuiteEtudes d'un Etudiant*/

UPDATE Etudiant SET Etudiant.poursuiteEtudes = "Ecole Spaciale" WHERE idEtu = '1234567';

/*test pour kamp on ajoute un stagiaire puis on le suprime et on modifie le nom d'un Etudiant et on vérifie que le prénom a bien était modifier*/

INSERT INTO stagiaire VALUES (1234567, 37);

DELETE FROM stagiaire WHERE etudStagiaire = 1234567;

UPDATE Etudiant SET Etudiant.nomEtud = "Louis" WHERE idEtud = 1234567;

SELECT nomEtud
FROM Etudiant
WHERE idEtud = 1234567;

