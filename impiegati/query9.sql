--9.Seleziona tutti i dati degli impiegati (employees) incluso i dati del dipartimento relativo
SELECT *
FROM departments INNER JOIN employees ON employees.department=departments.code;
