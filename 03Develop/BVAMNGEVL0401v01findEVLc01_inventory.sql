
use BVADesarrollo

db.EVLc01_inventory.insertMany([
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
			ObjectId("5e4af486e08d5118284148b3"),
			ObjectId("5e4af486e08d5118284148b4"),
			ObjectId("5e4af486e08d5118284148b5"),
			ObjectId("5e4af486e08d5118284148b6"),
			ObjectId("5e4af486e08d5118284148b7")
		]
	}
	:::

##1. Consulta todos los elementos de la collection
	:::
		db.EVLc01_inventory.find().
	:::

##2. Consulta con condiciones
To specify equality conditions, use <field>:<value> expressions in the query filter document

db.EVLc01_inventory.find({"status":"D"});



##3. Consulta usando operadores

db.EVLc01_inventory.find({"item":{$ne:"canvas"}});
	:::
		{ "_id" : ObjectId("5e4af0dde08d5118284148a6"), "item" : "journal", "qty" : 25, "tags" : [ "blank", "red" ], "size" : { "h" : 14, "w" : 21, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4af0dde08d5118284148a7"), "item" : "mat", "qty" : 85, "tags" : [ "gray" ], "size" : { "h" : 27.9, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4af0dde08d5118284148a8"), "item" : "mousepad", "qty" : 25, "tags" : [ "gel", "blue" ], "size" : { "h" : 19, "w" : 22.85, "uom" : "cm" } }
	:::

Operadores: $in

##4. Consulta AND

db.EVLc01_inventory.find( { status: "A", qty: { $lt: 30 } } );
	:::
		{ "_id" : ObjectId("5e4af486e08d5118284148b3"), "item" : "journal", "qty" : 25, "size" : { "h" : 14, "w" : 21, "uom" : "cm" }, "status" : "A" }
	:::

##4. Consulta OR
db.EVLc01_inventory.find( { $or: [ { status: "A" }, { qty: { $lt: 30 } } ] } )

	:::
		SELECT * FROM EVLc01_inventory WHERE status = "A" AND qty < 30
	:::
	:::
		{ "_id" : ObjectId("5e4af0dde08d5118284148a6"), "item" : "journal", "qty" : 25, "tags" : [ "blank", "red" ], "size" : { "h" : 14, "w" : 21, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4af0dde08d5118284148a8"), "item" : "mousepad", "qty" : 25, "tags" : [ "gel", "blue" ], "size" : { "h" : 19, "w" : 22.85, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4af486e08d5118284148b3"), "item" : "journal", "qty" : 25, "size" : { "h" : 14, "w" : 21, "uom" : "cm" }, "status" : "A" }
		{ "_id" : ObjectId("5e4af486e08d5118284148b4"), "item" : "notebook", "qty" : 50, "size" : { "h" : 8.5, "w" : 11, "uom" : "in" }, "status" : "A" }
		{ "_id" : ObjectId("5e4af486e08d5118284148b7"), "item" : "postcard", "qty" : 45, "size" : { "h" : 10, "w" : 15.25, "uom" : "cm" }, "status" : "A" }
	:::

##5. Consulta AND y OR, LIKE, aquellos que empiezan en p%


db.EVLc01_inventory.find( {
     status: "A",
     $or: [ { qty: { $lt: 30 } }, { item: /^p/ } ]
});
	:::
		SELECT * FROM EVLc01_inventory WHERE status = "A" AND ( qty < 30 OR item LIKE "p%")
	:::
	:::
		{ "_id" : ObjectId("5e4af486e08d5118284148b3"), "item" : "journal", "qty" : 25, "size" : { "h" : 14, "w" : 21, "uom" : "cm" }, "status" : "A" }
		{ "_id" : ObjectId("5e4af486e08d5118284148b7"), "item" : "postcard", "qty" : 45, "size" : { "h" : 10, "w" : 15.25, "uom" : "cm" }, "status" : "A" }
	:::



