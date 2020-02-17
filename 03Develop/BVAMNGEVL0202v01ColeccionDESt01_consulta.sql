/*===========================================================================================
	Proyecto					:	
	Modulo						:	
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	
	Objetivo					:	Crear una colección de datos de consulta de saldos
	Descripcion					:	
=============================================================================================*/
// 1. Activar el uso de una base de datos

use aemsaprueba

// 2. Crear una collección, si la colección no existe se crear

db.DESt01_consulta.insert(
	{'NumeroTarjera':'455170******4683',
	 'NumeroCuenta': '189883739',
	 'Movimiento':[{
					'moneda':'S/',
					'importe':100.00
					},
					{
					'moneda':'S/',
					'itf':0.00
					},
					{
					'moneda':'S/',
					'saldo disponible':100.00
					}],
	  'fecha':'01/04/2018',
	  'hora':'11:21:23',
	  'cajero':2572,
	  'operacion':'000000000085'
	}
);

// 3. Mostar el contenido del BJON en formato JSON

db.DESt01_consulta.find()
