<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Platos - Eskatza</title>
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
			<c:forEach items="${platos}" var="plato">
				<tr>
					<td>${plato.id}</td>
					<td>${plato.nombre}</td>
					<td>${plato.descripcion}</td>
					<td>
						<a href="plato/ver?id=${plato.id}">Ver</a>
						<a href="plato/editar?id=${plato.id}">Editar</a>
						<a href="plato/eliminar?id=${plato.id}">Eliminar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>