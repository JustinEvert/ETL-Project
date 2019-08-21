-- Create Consolidated Table
DROP TABLE consolidated
CREATE TABLE consolidated (
  id INT PRIMARY KEY,
  ano INT,
  mes TEXT,
  estado TEXT,
  cliente TEXT, 
  modalidad TEXT,
  acciones INT,
  monto INT
);

SELECT * FROM consolidated
