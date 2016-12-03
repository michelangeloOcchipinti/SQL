--11. Seleziona il nome e il cognome degli impiegati che lavorano su dipartimenti con un budget superiore di 60.000
SELECT E.name, E.lastname
FROM departments AS D INNER JOIN employees AS E ON E.department=D.code
WHERE D.budget>60000;
