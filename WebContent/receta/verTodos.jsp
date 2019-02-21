<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recetas - Eskatza</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>id</th>
				<th>nombre</th>
				<th>descripcion</th>
				<th>accion</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${recetas}" var="receta">
				<tr>
					<td>${receta.id}</td>
					<td>${receta.nombre}</td>
					<td>${receta.descripcion}</td>
					<td>
						<a href="receta/ver?id=${receta.id}">Ver</a>
						<a href="receta/editar?id=${receta.id}">Editar</a>
						<a href="receta/eliminar?id=${receta.id}">Eliminar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>