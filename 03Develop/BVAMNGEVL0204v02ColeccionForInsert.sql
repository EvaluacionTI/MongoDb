/*===========================================================================================
	Proyecto					:	
	Modulo						:	
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	10Abr2018
	Objetivo					:	insertOne
	Descripcion					:	insertar información en la colleccion si no existe la
									colección se crea
	Si no existe el ObjectId se crea automáticamente. 
	
=============================================================================================*/
use aemsaprueba

// 1. Se genera automáticamente el identificador
db.DESt02_inventory.insert(
	{ item: "car", 
	  qty: 150, 
	  tags: ["cotton"], 
	  size: { h: 28, w: 35.5, uom: "cm" }
	}
)

db.DESt02_inventory.find()

//2. Se genera de manera manual el dentificador con el valor que se desea

db.DESt02_inventory.insert(
	{ "_id" : 15172027,
		item: "car", 
	  qty: 150, 
	  tags: ["cotton"], 
	  size: { h: 28, w: 35.5, uom: "cm" }
	}
)

db.DESt02_inventory.find()

//3.  Inserta varios documentos
db.DESt02_inventory.insert([
	{ "_id" : 151720271,
		item: "canvas", 
	  qty: 100, 
	  tags: ["cotton"], 
	  size: { h: 28, w: 35.5, uom: "cm" }
	},
	{ "_id" : 151720272,
		item: "coca cola",
	  qty: 100,
	  tags:["imagen"],
	  size: {h:15, w:5, uom:"und"}
	},
	{ "_id" : 151720273,
		item: "mandarina",
	  qty: 105,
	  tags:["imagen"],
	  size: {h:22, w:8, uom:"und"}
	}
])

db.DESt02_inventory.find()

//4.  Inserta varios documentos sin orden
db.DESt02_inventory.insert([
	{ "_id" : 15,
		item: "canvas", 
	  qty: 100, 
	  tags: ["cotton"], 
	  size: { h: 28, w: 35.5, uom: "cm" }
	},
	{ "_id" : 17,
		item: "coca cola",
	  qty: 100,
	  tags:["imagen"],
	  size: {h:15, w:5, uom:"und"}
	},
	{ "_id" : 20,
		item: "mandarina",
	  qty: 105,
	  tags:["imagen"],
	  size: {h:22, w:8, uom:"und"}
	}
	],
	{ordered : false}
)

db.DESt02_inventory.find()