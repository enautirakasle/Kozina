<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ver - Plato</title>
</head>
<body>
<h1>Plato: ${plato.nombre}</h1>
	<table border="1">
		<tr>
			<td>id:</td>
			<td>${plato.id}</td>
		</tr>
		<tr>
			<td>Nombre:</td>
			<td>${plato.nombre}</td>
		</tr>
		<tr>
			<td>Descripción:</td>
			<td>${plato.descripcion}</td>
		</tr>
		<tr>
			<td colspan="2">${plato.elavoracion}</td>
		</tr>
	</table>
	<a href="${pageContext.request.contextPath}/plato/editar?id=${plato.id}">Editar</a>
	<a href="${pageContext.request.contextPath}/plato/eliminar?id=${plato.id}">Eliminar</a>
	<a href="${pageContext.request.contextPath}/platos">Ver platos</a>
	<a href="${pageContext.request.contextPath}/recetas">Todas las recetas</a>
</body>
</html>