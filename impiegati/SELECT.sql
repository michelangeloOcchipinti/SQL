--1.Seleziona i cognomi (lastname) di tutti gli impiegati
SELECT E.lastname
FROM employees AS E;

--2.Seleziona i cognomi (lastname) di tutti gli impiegati senza duplicati
SELECT DISTINCT E.lastname
FROM employees AS E;

--3.Seleziona tutti i dati degli impiegati (employees) il cui cognome (lastname) e' 'Smith' or 'Doe'
SELECT E.lastname
FROM employees AS E
WHERE E.lastname='Smith' or E.lastname='Doe';

--4.Seleziona tutti i dati degli impiegati (employees) che lavorano nel dipartimento 14
SELECT *
FROM employees AS E
WHERE E.department='14';

--5.Seleziona tutti i dati degli impiegati (employees) che lavorano nel dipartimento 37 o nel dipartimento 77
SELECT *
FROM employees AS E
WHERE E.department='14'or E.department='77';

--6.Seleziona tutti i dati degli impiegati (employees) il cui cognome (lastname) inizia per S;
SELECT *
FROM employees AS E
WHERE position('S' in lastname)=1;

--7.Seleziona la somma di tutti i budget dei dipartimenti
SELECT SUM(D.budget)
FROM departments AS D;

--8.Seleziona il numero di impiegati in ogni dipartimento (basta visualizzare il codice di dipartimento e il relativo numero di impiegati)
SELECT E.department,COUNT(*)
FROM employees AS E
GROUP BY E.department;

--9.Seleziona tutti i dati degli impiegati (employees) incluso i dati del dipartimento relativo
SELECT *
FROM departments INNER JOIN employees ON employees.department=departments.code;

--10. Seleziona il nome e il cognome assieme al nome e al budget del rispettivo dipartimento
SELECT E.name, E.lastname, D.code, D.budget 
FROM departments AS D INNER JOIN employees AS E ON E.department=D.code;

--11. Seleziona il nome e il cognome degli impiegati che lavorano su dipartimenti con un budget superiore di 60.000
SELECT E.name, E.lastname
FROM departments AS D INNER JOIN employees AS E ON E.department=D.code
WHERE D.budget>60000;

--12. Seleziona i dipartimenti con un budget superiore alla media fra tutti i dipartimenti e visualizza anche la media
SELECT D.code,D.budget
FROM departments AS D
WHERE D.budget>(SELECT AVG(departments.budget) FROM departments);

--13. Seleziona i nomi dei dipartimenti con piu' di due impiegati
SELECT D.code,COUNT(*)
FROM departments AS D INNER JOIN employees AS E ON E.department=D.code
GROUP BY E.department, D.code
HAVING COUNT(*)>2;

--14. Seleziona il nome e il cognome degli impiegati nei dipartimenti con il secondo budget più' basso
SELECT E.name, E.lastname, D.budget
FROM departments AS D INNER JOIN employees AS E ON E.department=D.code
WHERE D.budget>(SELECT MIN(D.budget) FROM departments AS D);







