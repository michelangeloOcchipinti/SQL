/*Esercitazione di Informatica Laboratorio classe 5SA – novembre
Sia dato un database di un'azienda di distribuzione di casalinghi, elettrodomesrici e articoli sportivi.
Le informazioni contenute nell'azienda sono relative ai rappresentanti commerciali, ai clienti e altre cose che per ora
non ci interessano.

Le relazioni oggetto di questa esercitazione sono:

Rapprensentanti (CodRappr, Cognome, Nome,Via, Citta, Provincia, CAP, TotProvvigioni, PercentProvv)
Clienti (CodCliente, Cognome, Nome, Via, Citta, Provincia, CAP, Saldo, Fido, CodRappr)*/

--• Trovare i cognomi di tutti i clienti;
SELECT C.cognome
FROM clienti AS C;


--• Elencare tutte le citta' da cui provengono i clienti;
SELECT C.citta
FROM clienti AS C;


--• Selezionare tutti i rappresentanti e i clienti che stanno nella stessa citta';
SELECT C.nome, C.cognome, R.nome, R.cognome, C.citta, R.citta
FROM clienti AS C , rappresentanti AS R 
WHERE C.citta=R.citta
ORDER BY R.citta;

--• Dato uno specifico rappresentante visualizzare tutti I clienti che abitano nella sua citta'.
SELECT C.nome
FROM rappresentanti AS R INNER JOIN clienti AS C ON C.codrappr=R.codrappr
WHERE R.codrappr='rapp3'AND R.citta=C.citta;
