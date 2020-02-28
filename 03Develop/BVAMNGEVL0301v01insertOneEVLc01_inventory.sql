
use BVADesarrollo

db.EVLc01_inventory.insertOne(
	{ item: "canvas", qty: 100, tags: ["cotton"], size: { h: 28, w: 35.5, uom: "cm" } }
);

	:::
		{
			"acknowledged" : true,
			"insertedId" : ObjectId("5e4aef49e08d5118284148a5")
		}
	:::

db.EVLc01_inventory.find();

	:::
		{ "_id" : ObjectId("5e4aee7ae08d51182841489b"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee81e08d51182841489c"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee82e08d51182841489d"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee83e08d51182841489e"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee83e08d51182841489f"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee84e08d5118284148a0"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee85e08d5118284148a1"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee86e08d5118284148a2"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee86e08d5118284148a3"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee87e08d5118284148a4"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aef49e08d5118284148a5"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
	:::

db.EVLc01_inventory.find({"item":"canvas"});
	:::
		{ "_id" : ObjectId("5e4aee7ae08d51182841489b"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee81e08d51182841489c"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee82e08d51182841489d"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee83e08d51182841489e"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee83e08d51182841489f"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee84e08d5118284148a0"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee85e08d5118284148a1"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee86e08d5118284148a2"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee86e08d5118284148a3"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aee87e08d5118284148a4"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
		{ "_id" : ObjectId("5e4aef49e08d5118284148a5"), "item" : "canvas", "qty" : 100, "tags" : [ "cotton" ], "size" : { "h" : 28, "w" : 35.5, "uom" : "cm" } }
	:::

db.EVLc01_inventory.find({"item":"canvas"}).pretty();
	:::
		{
			"_id" : ObjectId("5e4aee7ae08d51182841489b"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee81e08d51182841489c"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee82e08d51182841489d"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee83e08d51182841489e"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee83e08d51182841489f"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee84e08d5118284148a0"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee85e08d5118284148a1"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee86e08d5118284148a2"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee86e08d5118284148a3"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee87e08d5118284148a4"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aef49e08d5118284148a5"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
	:::
	
db.EVLc01_inventory.find({"item":"canvas"}).limit(2).pretty();

	:::
		{
			"_id" : ObjectId("5e4aee7ae08d51182841489b"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
		{
			"_id" : ObjectId("5e4aee81e08d51182841489c"),
			"item" : "canvas",
			"qty" : 100,
			"tags" : [
				"cotton"
			],
			"size" : {
				"h" : 28,
				"w" : 35.5,
				"uom" : "cm"
			}
		}
	:::