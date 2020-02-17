/*===========================================================================================
	Proyecto					:	
	Modulo						:	
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	
	Objetivo					:	insertMany()
	Descripcion					:	insertar información en la colleccion de varios documentos
	Si no existe el ObjectId se crea automáticamente. 
	
	Este procedimiento siempre inserta el primer registro igual para todos
=============================================================================================*/
use aemsaprueba

db.DESt02_insertMany.insertMany([
	{ item: "canvas1", 
	  qty: 100, 
	  tags: ["cotton"], 
	  size: { h: 28, w: 35.5, uom: "cm" }
	},
	{ item: "coca cola1",
	  qty: 100,
	  tags:["imagen"],
	  size: {h:15, w:5, uom:"und"}
	},
	{ item: "mandarina1",
	  qty: 105,
	  tags:["color"],
	  size: {h:22, w:8, uom:"und"}
	}
]);



db.DESt02_insertMany.find()