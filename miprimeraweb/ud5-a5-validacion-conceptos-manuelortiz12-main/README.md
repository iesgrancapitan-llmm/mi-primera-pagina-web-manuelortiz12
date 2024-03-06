# UD5 A5. Validación. Conceptos

1. **Indica con una X las afirmaciones verdaderas:**

- [ ] Los DTDs son más ricos y poderosos que los XML Schemas

- [X] Los DTDs están escritos de acuerdo a la sintaxis XML

- [X] XML Schemas soportan tipos de datos

- [X] XML Schemas soportan namespaces
- [ ] XML Schemas tienen el nodo raíz schema con la URL que contiene la definición de todos los elementos y atributos que se pueden utilizar en un esquema. Eso quiere decir que para programar en XML se necesita estar conectado a Internet.
- [X] En XSD, el atributo xmlns crea un espacio de nombres para cada URL referenciada. Así si hubiese dos elementos con el mismo nombre se diferencian claramente.



2. A continuación aparece la declaración de un esquema XSD. Indica los siguientes elementos:

- prólogo. Define la versión del lenguaje XML y el juego de caracteres utilizado
- prefijo del espacio de nombres (opcional)
- espacio de nombres XMLSchema

```xml
<?xml version="1.0" encoding="UTF-8"?> -- prologo
<xs:schema 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
		...
<xs:schema /> -- espacio de nombres
```
3. A continuación aparece la vinculación de un esquema a un documento XML. Indica (con una X) si está en nuestro sistema de ficheros local o es un esquema público.

- [ ] esquema local

- [x] esquema público
```xml
<factura num="num_fact_1234"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:noNamespaceSchemaLocation="factura.xsd">
	...
</factura>
```

- [ ] esquema local

- [x] esquema público
```xml
<factura num="num_fact_1234"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.miempresa.com/factura.xsd">
...
</factura>	
```
  
5. De los siguientes tipos predefinidos por el espacio de nombres XMLSchema del W3C, marca con una X los numéricos:
- [ ] normalizedString
- [ ] dateTimeStamp
- [ ] language
- [ ] IDREFS
- [x] dayTimeDuration
- [ ] NMTOKEN
- [ ] NMTOKENS
- [ ] Name
- [ ] NCName
- [ ] ID
- [ ] IDREF
- [ ] ENTITY
- [x] integer
- [ ] yearMonthDuration
- [x] nonPositiveInteger
- [x] negativeInteger
- [x] long
- [x] int
- [x] short
- [x] byte
- [ ] token
- [x] nonNegativeInteger
- [x] unsignedLong
- [x] unsignedInt
- [ ] ENTITIES
- [x] unsignedShort
- [x] unsignedByte
- [x] positiveInteger

6. Adjunta un fichero .xsd con el siguiente diseño:
```xml
<!-- definición de elementos simples -->
<!-- definición de atributos -->
<!-- definición de elementos  complejos -->
<!-- definición de los tipos simples -->
<!-- definición de los tipos complejos -->
<!-- elemento raíz -->
```
[XSD](ejercicio6.xsd)


7. Con respecto a la validación con XSD indica:
- Un esquema es un documento *XML* al que se le coloca la extensión __xsd__ . Al ser un archivo XML tiene la estructura habitual de todo documento XML con la obligación de que el elemento __xml__ se llame __schema__ .
- Etiqueta que identifica la raíz de un documento XML Schema: 
- Etiquetas que identifican las partes de un esquema:
  - Elementos, definidos con etiquetas __<xs:element>__. Para indicar los elementos permitidos en los documentos que sigan el esquema.
  - Atributos, etiqueta __<xs:attribute>__.
  - Tipos simples, que permiten definir los tipos simples de datos que podrá utilizar el documento XML. Lo hace la etiqueta __<xs:simpleType>__ .
  - Tipos complejos, mediante la etiqueta __<xs:complexType>__
  - Documentación, información utilizable por aplicaciones que manejen los esquemas. Etiquetas __<xs:annotation>__ y __<xs:documentation>__.
- Componentes locales y globales en un esquema:
  - En ámbito __global__. Se trata de los elementos del esquema que se coloquen dentro de la etiqueta raíz schema y que no están dentro de ninguna otra. Estos elementos se pueden utilizar en cualquier parte del esquema.
  - En ámbito __local__ . Se trata de elementos definidos dentro de otros elementos. En ese caso se pueden utilizar sólo dentro del elemento en el que están inmersos y no en todo el documento. Es decir si, por ejemplo, si dentro de la definición de un atributo colocamos la definición de un tipo de datos, este tipo de datos sólo se puede utilizar dentro del elemento xs:attribute en el que se encuentra la definición del tipo de datos.
- Dentro de la etiqueta xs:element, indica:
  - atributos obligatorios
  - atributos optativos

8. Definición de un elemento vacío en XSD

Se puede definir un elemento vacío utilizando la etiqueta <xs:element> sin la necesidad de incluir una secuencia o tipo de datos. 

```xml
 <xs:element name="elemento_vacio"/>
```

De interés
- https://jorgesanchez.net/manuales/xml/xml-validacion.html
- https://www.w3schools.com/xml/el_restriction.asp
- https://lm-xml-apuntes.readthedocs.io/apuntes/40_esquemas_xml.html#tipos-de-elementos
