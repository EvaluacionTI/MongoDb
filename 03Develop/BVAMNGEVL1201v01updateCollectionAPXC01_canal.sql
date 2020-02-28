
/*===========================================================================================
	Proyecto					:	
	Modulo						:	
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	
	Objetivo					:	update()
	Descripcion					:	Actualizar los elementos de una collection
									updateOne
									updateMany
									replaceOne
									
=============================================================================================*/

use BVADesarrollo

#1. Actualizar en masivo
db.APXc01_canal.updateMany(
	{"txt_usr":{$eq:"MIGRACION"}},
	{$set:{"cod_emp":"0018"}}
);

