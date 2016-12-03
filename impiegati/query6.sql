--6.Seleziona tutti i dati degli impiegati (employees) il cui cognome (lastname) inizia per S;
SELECT *
FROM employees AS E
WHERE position('S' in lastname)=1;

