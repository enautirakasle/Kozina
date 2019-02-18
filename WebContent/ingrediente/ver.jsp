<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ver - Ingrediente</title>
</head>
<body>
	<table>
		<tr>
			<td>id:</td>
			<td>${ingrediente.id}</td>
		</tr>
		<tr>
			<td>Nombre:</td>
			<td>${ingrediente.nombre}</td>
		</tr>
		<tr>
			<td>Descripción:</td>
			<td>${ingrediente.descripcion}</td>
		</tr>
	</table>
	<a href="${pageContext.request.contextPath}/ingrediente/editar?id=${ingrediente.id}">Editar</a>
	<a href="${pageContext.request.contextPath}/ingrediente/eliminar?id=${ingrediente.id}">Eliminar</a>
	<a href="${pageContext.request.contextPath}/ingredientes">Volver</a>
</body>
</html>