SELECT * FROM historial WHERE Fecha < "2016-01-01";
DELETE FROM perro WHERE ID_Perro IN (SELECT Perro FROM historial WHERE Fecha < "2016-01-01")

--NOTA: Se eliminarán todos los perros que tengan un historial más antiuo que: 01-01-2016