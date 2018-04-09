/*===========================================================================================
	Proyecto					:	
	Modulo						:	
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	
	Objetivo					:	insertOne
	Descripcion					:	insertar información en la colleccion si no existe la
									colección se crea
	Si no existe el ObjectId se crea automáticamente. 
	
	Este procedimiento siempre inserta el primer registro igual para todos
=============================================================================================*/
use aemsaprueba

db.DESt02_inventory.insertOne(
	{ item: "canvas", 
	  qty: 100, 
	  tags: ["cotton"], 
	  size: { h: 28, w: 35.5, uom: "cm" }
	},
	{ item: "coca cola",
	  qty: 100,
	  tags:["imagen"],
	  size: {h:15, w:5, uom:"und"}
	},
	{ item: "mandarina",
	  qty: 105,
	  tags:["imagen"],
	  size: {h:22, w:8, uom:"und"}
	}
)


db.DESt02_inventory.find()