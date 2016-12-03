--14. Seleziona il nome e il cognome degli impiegati nei dipartimenti con il secondo budget più' basso
SELECT E.name, E.lastname, D.budget
FROM departments AS D INNER JOIN employees AS E ON E.department=D.code
WHERE D.budget>(SELECT MIN(D.budget) FROM departments AS D);
