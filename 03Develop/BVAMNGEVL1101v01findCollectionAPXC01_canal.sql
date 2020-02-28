
/*===========================================================================================
	Proyecto					:	
	Modulo						:	
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	
	Objetivo					:	count()
	Descripcion					:	Contar elementos de una collection
	
=============================================================================================*/
use BVADesarrollo
#1. Contar filas
db.APXc01_canal.find().count();
:::
	78
:::


#2. Leer las filas sin formato
db.APXc01_canal.find();


#3. Leer las filas sin formato
db.APXc01_canal.find().pretty();


#4. Mostrar los primeros registros de mongo
db.APXc01_canal.find().limit(10);

#5. Mostrar los primeros registros de mongo con formato
db.APXc01_canal.find().limit(10).pretty();

#6. Mostrar la información por un criterio
db.APXc01_canal.find({"cod_canal":"EC"}).limit(10).pretty();

