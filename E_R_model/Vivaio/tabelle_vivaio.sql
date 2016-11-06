CREATE TABLE fornitore(
    p_iva VARCHAR(30) PRIMARY KEY,
    rag_sociale VARCHAR(50),
    indirizzo VARCHAR(50),
    telefono VARCHAR(20)

);
CREATE TABLE cliente(
    cf VARCHAR(50) PRIMARY KEY,
    carta_fedeltà VARCHAR(50),
    indirizzo VARCHAR(50),
    nome VARCHAR(20),
    cognome VARCHAR(20),
    telefono VARCHAR(20)
);
CREATE TABLE prodotto(
    cod_interno VARCHAR(20) PRIMARY KEY,
    cod_fornitore VARCHAR(20),
    costo FLOAT,
    iva INTEGER
);
CREATE TABLE accessorio(
    cod_interno VARCHAR(20) PRIMARY KEY,
    imballo INTEGER,
    ean VARCHAR(13),
    descrizione VARCHAR(50),
    tipologia VARCHAR(20),
    foto VARCHAR(20)
);
CREATE TABLE pianta_da_frutto(
    cod_interno VARCHAR(20) PRIMARY KEY,
    tipo_frutto VARCHAR(20),
    altezza_max FLOAT,
    vita_mesi INTEGER,
    stag_impianto VARCHAR(10),
    foto VARCHAR(20)
);
CREATE TABLE pianta_da_fiore(
    cod_interno VARCHAR(20) PRIMARY KEY,
    tipo_fiore VARCHAR(20),
    rampicante BOOLEAN,
    sempreverde BOOLEAN,
    stag_impianto VARCHAR(10),
    foto VARCHAR(20)
);
CREATE TABLE dipendente(
    cod_badge VARCHAR(10) PRIMARY KEY,
    indirizzo VARCHAR(50),
    nome VARCHAR(20),
    cognome VARCHAR(20),
    telefono VARCHAR(20),
    titolo_studio VARCHAR(20),
    mansione VARCHAR(20)
);
CREATE TABLE esterno(
    cod_badge VARCHAR(10) PRIMARY KEY,
    orario FLOAT,
    costo_orario FLOAT,
    ag_interinale VARCHAR(20),
    durata_contratto INTEGER
);
CREATE TABLE interno(
    cod_badge VARCHAR(10) PRIMARY KEY, 
    orario FLOAT,
    inquadramento VARCHAR(20),
    livello_ccnl VARCHAR(10),
    stipendio FLOAT
);
CREATE TABLE artigiano(
    p_iva VARCHAR(30) PRIMARY KEY,
    rag_sociale VARCHAR(50),
    indirizzo VARCHAR(50),
    telefono VARCHAR(20),
    costo_orario FLOAT,
    specializzazione VARCHAR(20)
);
CREATE TABLE vendite_prodotto(
    num_riga SERIAL PRIMARY KEY,
    quantita INTEGER,
    data_vendita VARCHAR,
    totale FLOAT,
    cod_interno VARCHAR(20) REFERENCES prodotto(cod_interno),
    cf_cliente VARCHAR(50) REFERENCES cliente(cf)
);
CREATE TABLE vendite_servizio(
    num_riga SERIAL PRIMARY KEY,
    quantita INTEGER,
    data_vendita VARCHAR,
    totale FLOAT,
    cod_interno VARCHAR(20) REFERENCES prodotto(cod_interno),
    cf_cliente VARCHAR(50) REFERENCES cliente(cf)
);
CREATE TABLE acquisti_prodotto(
    num_riga SERIAL PRIMARY KEY,
    quantita INTEGER,
    data_acquisto VARCHAR,
    totale FLOAT,
    cod_interno VARCHAR(20) REFERENCES prodotto(cod_interno),
    p_iva VARCHAR(30) REFERENCES fornitore(p_iva),
    cod_badge VARCHAR(10) REFERENCES dipendente(cod_badge)
);
CREATE TABLE tipo_servizio(
    cod_interno VARCHAR(20) PRIMARY KEY,
    costo_orario FLOAT,
    costo_mq FLOAT,
    tipologia VARCHAR,
    iva INTEGER,
    cod_badge VARCHAR(10) REFERENCES dipendente(cod_badge)
);