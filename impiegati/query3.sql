--3.Seleziona tutti i dati degli impiegati (employees) il cui cognome (lastname) e' 'Smith' or 'Doe'
SELECT E.lastname
FROM employees AS E
WHERE E.lastname='Smith' or E.lastname='Doe';
