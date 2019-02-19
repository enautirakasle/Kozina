<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Platos</title>
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
					<td><a href="plato/ver?id=${plato.id}">Ver</a> <a
						href="plato/editar?id=${plato.id}">Editar</a> <a
						href="plato/eliminar?id=${plato.id}">Eliminar</a></td>
				</tr>
				<tr>
					<td colspan="4">
						<b>Ingredientes</b>
						<ul>
						<c:forEach items="${plato.alimentos}" var="alimento">
							<li><a href="alimento/ver?id=${alimento.id}">${alimento.nombre}</a></li>
						</c:forEach>
						</ul>
					</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>