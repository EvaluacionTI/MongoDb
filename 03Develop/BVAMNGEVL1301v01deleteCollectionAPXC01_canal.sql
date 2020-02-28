
/*===========================================================================================
	Proyecto					:	
	Modulo						:	
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	
	Objetivo					:	delete()
	Descripcion					:	Eliminar los elementos de una collection
									deleteOne
									deleteMany
=============================================================================================*/

use BVADesarrollo

#1. Actualizar en masivo
db.APXc01_canal.deleteMany(
	{"txt_usr":"MIGRACION"}
);

