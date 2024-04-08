<?xml version="1.0" encoding="UTF-8"?>
<stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<template match="/">
		<html>
			<head>
				<title>
					Primera transformación
				</title>
			</head>
			<body bgcolor="#00dd00">
				<h1>
					Agenda
				</h1>
				<h2>
					Propietario
				</h2>
				<b>
					Apellidos y nombre:
				</b>
				<value-of select="/agenda/propietario/apellidos" />
				,
				<value-of select="/agenda/propietario/nombre" />
				<br />
				<h2>
					Contactos
				</h2>
				<b>
					Apellidos y nombre:
				</b>
				<value-of select="/agenda/contactos/persona[1]/identificadores/apellidos" />
				,
				<value-of select="/agenda/contactos/persona[1]/identificadores/nombre" />
				<b>
					- identificador:
				</b>
				<value-of select="/agenda/contactos/persona[1]/@id" />
				<br />
				<b>
					Apellidos y nombre:
				</b>
				<value-of select="/agenda/contactos/persona[2]/identificadores/apellidos" />
				,
				<value-of select="/agenda/contactos/persona[2]/identificadores/nombre" />
				<b>
					- identificador:
				</b>
				<value-of select="/agenda/contactos/persona[2]/@id" />
				<br />
				<b>
					Apellidos y nombre:
				</b>
				<value-of select="/agenda/contactos/persona[3]/identificadores/apellidos" />
				,
				<value-of select="/agenda/contactos/persona[3]/identificadores/nombre" />
				<b>
					- identificador:
				</b>
				<value-of select="/agenda/contactos/persona[3]/@id" />
				<br />
			</body>
		</html>
	</template>
</stylesheet>
