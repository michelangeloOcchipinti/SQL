--10. Seleziona il nome e il cognome assieme al nome e al budget del rispettivo dipartimento
SELECT E.name, E.lastname, D.code, D.budget 
FROM departments AS D INNER JOIN employees AS E ON E.department=D.code;
