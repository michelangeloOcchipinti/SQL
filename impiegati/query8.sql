--8.Seleziona il numero di impiegati in ogni dipartimento (basta visualizzare il codice di dipartimento e il relativo numero di impiegati)
SELECT E.department,COUNT(*)
FROM employees AS E
GROUP BY E.department;
