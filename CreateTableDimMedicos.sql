DROP TABLE IF EXISTS dw.DimMedicos;

CREATE TABLE dw.DimMedicos (
	IdfDimMedicos integer NOT NULL PRIMARY KEY,
	IdMedicos BIGINT,
	DataNascimento TIMESTAMP,
	Idade INT,
	TotalTitulos INT,
	Sexo VARCHAR(2),
	DataFormatura VARCHAR(25),
	TempoDeFormado INT);

CREATE INDEX idx_IdfDimMedicos
ON dw.DimMedicos(IdfDimMedicos);