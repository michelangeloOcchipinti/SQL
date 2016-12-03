--13. Seleziona i nomi dei dipartimenti con piu' di due impiegati
SELECT D.code,COUNT(*)
FROM departments AS D INNER JOIN employees AS E ON E.department=D.code
GROUP BY E.department, D.code
HAVING COUNT(*)>2;
