--12. Seleziona i dipartimenti con un budget superiore alla media fra tutti i dipartimenti e visualizza anche la media
SELECT D.code,D.budget
FROM departments AS D
WHERE D.budget>(SELECT AVG(departments.budget) FROM departments);
