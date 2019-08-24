SELECT * FROM consolidated;

DROP TABLE consolidated;

CREATE TABLE consolidated (
  id INTEGER,
  ano INTEGER,
  mes VARCHAR,
  estado VARCHAR,
  cliente VARCHAR, 
  modalidad VARCHAR,
  acciones FLOAT,
  monto FLOAT
);

CREATE TABLE fonden (
  id INTEGER,
  Estado VARCHAR,
  Municipio VARCHAR,
  Evento VARCHAR,
  Tipo VARCHAR, 
  Accion VARCHAR,
  Año INTEGER,
  Mes VARCHAR
);

SELECT * FROM fonden;

CREATE VIEW acciones_por_estado AS
SELECT estado, SUM(acciones) AS total_acciones
FROM consolidated
GROUP BY estado;

CREATE VIEW monto_por_estado AS
SELECT estado, SUM(monto) AS total_monto
FROM consolidated
GROUP BY estado;

SELECT * FROM acciones_por_estado;
SELECT * FROM monto_por_estado;

CREATE VIEW estados_agrupados AS
SELECT a.estado, a.total_acciones, m.total_monto
FROM acciones_por_estado a
JOIN monto_por_estado m
ON a.estado = m.estado;

SELECT * FROM estados_agrupados;

CREATE VIEW desastres_por_estado AS
SELECT estado, COUNT(evento) AS total_desastres
FROM fonden
GROUP BY estado;

SELECT * FROM desastres_por_estado;

SELECT e.estado, e.total_acciones, e.total_monto, d.total_desastres
FROM estados_agrupados e
JOIN desastres_por_estado d
ON e.estado = d.estado
ORDER BY total_acciones DESC;

DROP TABLE inflation;

CREATE TABLE inflation (
  id INTEGER,
  año INTEGER,
  mes VARCHAR,
  estado VARCHAR,
  cliente VARCHAR, 
  modalidad VARCHAR,
  inflacion FLOAT
);

SELECT * FROM inflation;