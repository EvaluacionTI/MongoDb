# Solicitud personalizada para personalizar la base de datos y el host

##0. Conectarse a mongo
p028036@OPME:~$ mongo

##1. Capturar el nombre del host
MongoDB Enterprise > host = db.serverStatus().host;
:::
OPME
:::
##2. Asignar el prompt

MongoDB Enterprise > prompt = function(){return db + "@" + host + "$ "; }
:::
ivfevaluation@OPME$
:::


##3. Muestra la base de datos y server

test@OPME$ show dbs
	:::
		BVADesarrollo  0.000GB
		admin          0.000GB
		config         0.000GB
		local          0.000GB
	:::
test@OPME$