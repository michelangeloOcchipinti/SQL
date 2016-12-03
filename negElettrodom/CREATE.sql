CREATE TABLE rappresentanti(
	codRappr varchar(10) PRIMARY KEY NOT NULL,
	cognome varchar(20),
	nome varchar (20),
	via varchar (20),
	provincia varchar (2),
	cap integer,
	totProvvigioni float,
	percentProvv integer,
	citta varchar(20)
);

CREATE TABLE clienti(
	codCliente varchar(10) PRIMARY KEY NOT NULL,
	cognome varchar(20),
	nome varchar (20),
	via varchar (20),
	citta varchar (20),
	provincia varchar (2),
	cap integer,
	saldo float,
	fido integer,
	codRappr varchar(10) REFERENCES rappresentanti(codRappr)
);
