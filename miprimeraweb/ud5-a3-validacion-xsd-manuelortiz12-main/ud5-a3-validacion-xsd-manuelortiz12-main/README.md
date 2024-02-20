# UD5 A3. Validación. XSD (XML Schema Definition)


XSD (XML Schema Definition) es un lenguaje de esquema utilizado para describir la estructura y las restricciones de los contenidos de los documentos XML de una forma muy precisa, más allá de las normas sintácticas impuestas por el propio lenguaje XML. Se consigue así una percepción del tipo de documento con un nivel alto de abstracción.
Los esquemas se guardan en archivos con extensión .xsd. Fue desarrollado por la W3C, y alcanzó el nivel de recomendación en mayo de 2001. 

Surge como mejora a la validación con DTD, para entre otras cosas, permitir un tipo de datos más específico, y no sólo de texto. Las ventajas de los esquemas XML frente a los DTDs:
- usan sintaxis XML
- soportan tipos de datos
- son extensibles
- soportan espacios de nombres
- tienen mayor poder de expresión
- permiten concretar con precisión la cardinalidad de un elemento
- tanto los elementos terminales como  los atributos de los elementos tienen asignado un tipo de datos

En un XSD los elementos que se definen pueden ser:
- elementos simples: no poseen ni atributos ni otros elementos. Solo contienen datos.
- elementos compuestos:  incluye atributos u otros elementos


Visualiza este [vídeo](https://youtu.be/1BjmZHRHDv0?t=111) y entrega los siguientes [ejercicios](./ud7_RA4_ActividadesXSD.pdf) debidamente organizados y referenciados en este README.md. Entrega también la [factura mediante clonación y definición de tipos personalizados](./Actividad_XSD_Factura.pdf).


De interés:
- https://www.freeformatter.com/xsd-generator.html
- https://youtu.be/m1dmbNjbeZA
- https://youtu.be/ws3SD_VM0VA?list=PLoqthyRZDeWBactZZ1lM6cMjJjNgsh7u2
- https://youtu.be/NMyWWEEbJ9w

## Ejercicio 1
```xml
<xs:element name="ciudad" type="xs:string"/>
<xs:element name="fecha-de-nacimiento" type="xs:date"/>
<xs:element name="hora" type="xs:time"/>
<xs:element name="nota" type="xs:float"/>
<xs:element name="apto" type="xs:boolean"/>

```

## Ejercicio 2

```xml
<xs:element name="puertaCerrada" type="xs:boolean" default="false"/>
<xs:element name="ventanaAbierta" type="xs:boolean" fixed="true"/>
```

## Ejercicio 3

[Ejercicio 3](ejercicios2/ejercicio3.xml)