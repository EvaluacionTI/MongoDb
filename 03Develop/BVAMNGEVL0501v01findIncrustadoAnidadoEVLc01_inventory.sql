
use BVADesarrollo

db.EVLc01_inventory.insertMany( [
   { item: "journal", qty: 25, size: { h: 14, w: 21, uom: "cm" }, status: "A" },
   { item: "notebook", qty: 50, size: { h: 8.5, w: 11, uom: "in" }, status: "A" },
   { item: "paper", qty: 100, size: { h: 8.5, w: 11, uom: "in" }, status: "D" },
   { item: "planner", qty: 75, size: { h: 22.85, w: 30, uom: "cm" }, status: "D" },
   { item: "postcard", qty: 45, size: { h: 10, w: 15.25, uom: "cm" }, status: "A" }
]);


	:::
		{
	"acknowledged" : true,
	"insertedIds" : [
		ObjectId("5e4afd85e08d5118284148b8"),
		ObjectId("5e4afd85e08d5118284148b9"),
		ObjectId("5e4afd85e08d5118284148ba"),
		ObjectId("5e4afd85e08d5118284148bb"),
		ObjectId("5e4afd85e08d5118284148bc")
	]
}
	:::

##1. Consulta todos los elementos de la collection

	db.EVLc01_inventory.find( { size: { h: 14, w: 21, uom: "cm" } } )

	:::
		db.EVLc01_inventory.find().
	:::

##2. Consulta requiere un campo

	("field.nestedField").

db.EVLc01_inventory.find( { "size.uom": "in" } )


	:::
		{ "_id" : ObjectId("5e4af486e08d5118284148b4"), "item" : "notebook", "qty" : 50, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "A" }
		{ "_id" : ObjectId("5e4af486e08d5118284148b5"), "item" : "paper", "qty" : 100, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "D" }
		{ "_id" : ObjectId("5e4afd85e08d5118284148b9"), "item" : "notebook", "qty" : 50, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "A" }
		{ "_id" : ObjectId("5e4afd85e08d5118284148ba"), "item" : "paper", "qty" : 100, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "D" }
	:::
	:::

##3. Specify Match using Query Operator

	{ <field1>: { <operator1>: <value1> }, ... }
	
	
	db.EVLc01_inventory.find( { "size.h": { $lt: 15 }});
	
	:::
		{ "_id" : ObjectId("5e4af0dde08d5118284148a6"), "item" : "journal", "qty" : 25, "tags" : [ "blank", "red" ], "size" : { "h" : 14, "w" : 21, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4af486e08d5118284148b3"), "item" : "journal", "qty" : 25, "size" : { "h" : 14, "w" : 21, "uom" : "cm" }, "status" : "A" }
		{ "_id" : ObjectId("5e4af486e08d5118284148b4"), "item" : "notebook", "qty" : 50, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "A" }
		{ "_id" : ObjectId("5e4af486e08d5118284148b5"), "item" : "paper", "qty" : 100, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "D" }
		{ "_id" : ObjectId("5e4af486e08d5118284148b7"), "item" : "postcard", "qty" : 45, "size" : { "h" : 10, "w" : 15.25, "uom" : "cm" }, "status" : "A" }
		{ "_id" : ObjectId("5e4afd85e08d5118284148b8"), "item" : "journal", "qty" : 25, "size" : { "h" : 14, "w" : 21, "uom" : "cm" }, "status" : "A" }
		{ "_id" : ObjectId("5e4afd85e08d5118284148b9"), "item" : "notebook", "qty" : 50, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "A" }
		{ "_id" : ObjectId("5e4afd85e08d5118284148ba"), "item" : "paper", "qty" : 100, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "D" }
		{ "_id" : ObjectId("5e4afd85e08d5118284148bc"), "item" : "postcard", "qty" : 45, "size" : { "h" : 10, "w" : 15.25, "uom" : "cm" }, "status" : "A" }
	:::


	3.1. Specify AND Condition
	
	db.EVLc01_inventory.find( { "size.h": { $lt: 15 }, "size.uom": "in", status: "D" } )
	
	:::
		{ "_id" : ObjectId("5e4af486e08d5118284148b5"), "item" : "paper", "qty" : 100, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "D" }
		{ "_id" : ObjectId("5e4afd85e08d5118284148ba"), "item" : "paper", "qty" : 100, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "D" }
	:::



	
	