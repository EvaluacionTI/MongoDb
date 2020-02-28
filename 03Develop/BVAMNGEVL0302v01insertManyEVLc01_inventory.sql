
use BVADesarrollo

db.EVLc01_inventory.insertMany([
   { item: "journal", qty: 25, tags: ["blank", "red"], size: { h: 14, w: 21, uom: "cm" } },
   { item: "mat", qty: 85, tags: ["gray"], size: { h: 27.9, w: 35.5, uom: "cm" } },
   { item: "mousepad", qty: 25, tags: ["gel", "blue"], size: { h: 19, w: 22.85, uom: "cm" } }
])

	:::
		{
		"acknowledged" : true,
		"insertedIds" : [
			ObjectId("5e4af0dde08d5118284148a6"),
			ObjectId("5e4af0dde08d5118284148a7"),
			ObjectId("5e4af0dde08d5118284148a8")
		]
		}
	:::


db.EVLc01_inventory.find({"item":{$ne:"canvas"}});
	:::
		{ "_id" : ObjectId("5e4af0dde08d5118284148a6"), "item" : "journal", "qty" : 25, "tags" : [ "blank", "red" ], "size" : { "h" : 14, "w" : 21, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4af0dde08d5118284148a7"), "item" : "mat", "qty" : 85, "tags" : [ "gray" ], "size" : { "h" : 27.9, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4af0dde08d5118284148a8"), "item" : "mousepad", "qty" : 25, "tags" : [ "gel", "blue" ], "size" : { "h" : 19, "w" : 22.85, "uom" : "cm" } }
	:::

Notas:

1. Si la colección no existe actualmente, las operaciones de inserción crearán la
	colección.
2. _idCampo.- En MongoDB, cada documento almacenado en una colección requiere un 
	campo _id único que actúa como clave principal . Si un documento insertado 
	omite el _idcampo, el controlador MongoDB genera automáticamente un ObjectId 
	para el _idcampo.

	Esto también se aplica a los documentos insertados mediante operaciones de 
	actualización con upsert: true 
3. Atomicidad.- Todas las operaciones de escritura en MongoDB son atómicas en 
	el nivel de un solo documento. Para obtener más información sobre MongoDB 
	y atomicidad.

4.  Los siguientes métodos también pueden agregar nuevos documentos a una colección:

	db.collection.update()cuando se usa con la opción.upsert: true
	db.collection.updateOne()cuando se usa con la opción.upsert: true
	db.collection.updateMany()cuando se usa con la opción.upsert: true
	db.collection.findAndModify()cuando se usa con la opción.upsert: true
	db.collection.findOneAndUpdate()cuando se usa con la opción.upsert: true
	db.collection.findOneAndReplace()cuando se usa con la opción.upsert: true
	db.collection.save().
	db.collection.bulkWrite().


