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