# MongoDB 4.2

#MongoDB Enterprise > use admin
:::
switched to db admin
:::

Mostrar la base de datos activa

MongoDB Enterprise > db
:::
ivfevaluation
:::

## Mostrar las base de datos
## Cuando la base de datos no tiene una collection no se muestra en la lista

MongoDB Enterprise > show dbs

:::
admin   0.000GB
config  0.000GB
local   0.000GB
:::


# Cambiar de base de datos

MongoDB Enterprise > use admin
:::
switched to db admin
:::

## 2. Crear una collection

MongoDB Enterprise > use ivfevaluation
:::
switched to db ivfevaluation
:::

MongoDB Enterprise > db.C_CANAL.insertOne({"codigo":"BM"});

:::
{
	"acknowledged" : true,
	"insertedId" : ObjectId("5dd2c7236b9dfe15fef382bc")
}
:::

## Nota : 
## db = Se refiere a la base de datos actual
## collection : C_CANAL, se refiere a la collection que se desea crear
## command : Nombre de comando aplicado sobre la collection.

MongoDB Enterprise > db.C_CANAL.find();
:::
{ "_id" : ObjectId("5dd2c7236b9dfe15fef382bc"), "codigo" : "BM" }
:::



