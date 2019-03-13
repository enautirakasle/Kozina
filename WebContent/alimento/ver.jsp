<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ver - Alimento</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
</head>
<body>
	<main>
		<img class="foto-alimento" src="${pageContext.request.contextPath}/imagen/alimento?id=${alimento.id}"/>
		<img class="foto-alimento" src="${alimento.imagenBase64}"/>
		
		<table>
			<tr>
				<td>id:</td>
				<td>${alimento.id}</td>
			</tr>
			<tr>
				<td>Nombre:</td>
				<td>${alimento.nombre}</td>
			</tr>
			<tr>
				<td>Descripción:</td>
				<td>${alimento.descripcion}</td>
			</tr>
		</table>
		
		<a href="${pageContext.request.contextPath}/alimento/editar?id=${alimento.id}">Editar</a><br>
		<a href="${pageContext.request.contextPath}/alimento/eliminar?id=${alimento.id}">Eliminar</a><br>
		<a href="${pageContext.request.contextPath}/alimentos">Ver alimentos</a><br>
		<a href="${pageContext.request.contextPath}/recetasconingredientes">Todas las recetas</a><br>
	</main>
</body>
</html>