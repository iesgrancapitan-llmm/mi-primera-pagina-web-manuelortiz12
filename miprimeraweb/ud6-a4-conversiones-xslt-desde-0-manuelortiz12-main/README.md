# UD6 A4. Conversiones. XSLT desde 0

Hasta ahora hemos analizado en qué consiste el proceso de transformación de documentos XML, pero partiendo de documentos ya elaborados y correctos.
En esta práctica elaboraréis las transformaciones desde 0. 

Ya sabéis:
- Que el formato de salida de la transformación puede ser XML, HTML, XHTML, TEXT. El valor por defecto es XML o HTML  si el primer hijo del nodo raíz es `<html>`, sin ningún nodo de texto precedente
- Cómo se vincula cada fichero `.xml` a su hoja de transformación `.xsl`
- El formato base de una hoja de transformación
  - declaración xml `<?xml>`
  - elemento raíz stylesheet `<xsl:stylesheet>` 
  - elemento salida `<xsl:output>`
  - elemento plantilla `<xsl:template>` 
 
 
## Pasos de la transformación
Los pasos para realizar una transformación son los siguientes:

1. La hoja de transformaciones XSLT es analizada y se convierte en una estructura de árbol.
2. El documento XML es procesado y convertido en una estructura de árbol.
3. El procesador XSLT se posiciona en la raíz del documento XML. Este es el **nodo de contexto** original.
4. Los elementos (como las etiquetas HTML) que no formen parte del espacio de nombres de prefijo xsl, son pasados a la cadena de salida sin modificarse. Se
denominan **elementos de resultado literal**.
5. El procesador XSLT sólo aplica una plantilla a cada nodo. Si tenemos dos plantillas para el mismo nodo, el procesador sólo aplica:
  - La de mayor prioridad
  - Con la misma prioridad, la última que aparece 

## Conceptos sobre plantillas
Además, para realizar la transformación desde cero debéis tener claros los siguientes conceptos relacionados con plantillas:
- Una plantilla es una regla, cuyas acciones se ejecutarán si el patrón que tiene asociado la plantilla encaja con algún elemento del árbol XML. Cuando una plantilla se aplica, se dice que ha sido instanciada.
- Cada plantilla que apliquéis hace una transformación sobre un XPath. Si esa plantilla está vacía, nada se muestra.
- No todas las plantillas existentes en la hoja de transformación tienen que instanciarse. 
- `<xsl:template match="/">` Cuando se aplica una plantilla a un nodo del documento XML, se aplica únicamente al nodo seleccionado, pero se sustituye el nodo y todos sus descendientes por el resultado de la aplicación de la plantilla, lo que nos haría perder la información de los descendientes
- `<xsl:apply-templates />` Aplica a los descencientes otras plantillas dentro del contenido de la plantilla        
- Si hay más de una plantilla para aplicar a un mismo elemento, se aplica la de mayor pioridad, que puede ir de -9 a 9. En términos generales: se aplica aquella cuyo patrón es más específico (rutas más largas)

## Ejercicios
Realiza los siguientes ejercicios. Para facilitar las pruebas, cada uno en su carpeta
- [Listado 1](https://www.mclibre.org/consultar/xml/ejercicios/xslt-1.html#ejercicio-1.)
- [Listado 2](https://www.ticarte.com/contenido/ejercicios-practicos-de-xslt)
- Crea un fichero xsl que muestre una tabla con todos los contenidos de todas las etiquetas. Cada fila contendrá el nombre de la etiqueta en la primera columna (name()), y el contenido en la segunda. Pruébalo con un datos.xml obtenido de internet al que le añadas con tu nombre y apellidos.
- Crea otro fichero xsl que muestre una lista con todos los atributos. Elemento de la lista el nombre del atributo y el valor. Pruébalo con un datos.xml obtenido de internet al que le añadas tu nombre y apellidos.


Os recomiendo os baséis en las siguientes explicaciones:
- [Qué es el lenguaje de transformación. ticARTE. Rafa Morales ](https://www.ticarte.com/contenido/que-es-el-lenguaje-de-transformacion-xslt)
- https://issuu.com/auroragomez1/docs/xslt
- [Apuntes de Rafa Lozano](XSLT.pdf)
- Visualiza el siguiente  [vídeo](https://youtu.be/ZfNtjN5sdNU) sobre el elemento <xsl:for-each> que permite iterar sobre un conjunto de nodos y aplicar transformaciones en cada uno de ellos.

Recuerda:
- Usa Visual Studio Code como editor
- Realiza la transformación mediante el servidor de la extensión Live Server
- Entrega cada solución en su propia carpeta
- Añade tu apellido como title del html
