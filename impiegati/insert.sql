SELECT AVG(D.budget), D.code
FROM departments AS D
WHERE budget>AVG(D.budget);
