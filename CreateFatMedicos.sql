DROP TABLE IF EXISTS dw.fatmedicos;

CREATE TABLE dw.fatmedicos AS ( 
SELECT 
	 ROW_NUMBER () OVER (ORDER BY A.id) AS IdfFatMedicos
	,B.IdfDimMedicos
FROM stage.stgmedicosematividade A
INNER JOIN dw.dimmedicos B
ON A.id = B.idmedicos);