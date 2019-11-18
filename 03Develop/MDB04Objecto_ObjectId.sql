/*===========================================================================================
	Proyecto					:	
	Modulo						:	
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	
	Objetivo					:	El objeto ObjectId
	Descripcion					:	La estructura de ObjectId
	
									timestamp | machine | PID | Incremental

	a) Los nueve primeros bytes nos garantizan un identificador único por segundo
	b) máquina y 
	c) proceso. 
	d) Los tres últimos bytes, nos garantizan que cada segundo podemos 
	   insertar 2^24 = 16.777.216 documentos con un identificador distinto. 

=============================================================================================*/
use aemsaprueba

var idObject = new ObjectId();

idObject.getTimestamp()

/*
Nos mostrar un resultado: 

ISODate("2018-04-06T22:28:10Z")

*/