# Solicitud personalizada para personalizar la base de datos y el host

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

