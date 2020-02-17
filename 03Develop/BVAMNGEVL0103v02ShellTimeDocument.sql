# Customize Prompt to Display Up Time and Document count

## Mostrar la hora y la cantidad de documentos

ivfevaluation@OPME$ prompt = function() {
...            return "Uptime:"+db.serverStatus().uptime+" Documents:"+db.stats().objects+" > ";
...          }


:::
Uptime:2811 Documents:1 >
:::

