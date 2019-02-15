<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ingredientes - Eskatza</title>
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
			<c:forEach items="${ingredientes}" var="ingrediente">
				<tr>
					<td>${ingrediente.id}</td>
					<td>${ingrediente.nombre}</td>
					<td>${ingrediente.descripcion}</td>
					<td>
						<a href="ingrediente/ver?id=${ingrediente.id}">Ver</a>
						<a href="ingrediente/editar?id=${ingrediente.id}">Editar</a>
						<a href="ingrediente/eliminar?id=${ingrediente.id}">Eliminar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>