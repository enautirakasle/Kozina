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
				<th>acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${platos}" var="plato">
				<tr>
					<td>${plato.id}</td>
					<td><a href="plato/ver?id=${plato.id}">${plato.nombre}</a></td>
					<td>${plato.descripcion}</td>
					<td> <a
						href="plato/editar?id=${plato.id}">Editar</a> <a
						href="plato/eliminar?id=${plato.id}">Eliminar</a></td>
				</tr>
				<tr>
					<td colspan="4">
						<b>Elavoración</b>
						<p>${plato.elavoracion}</p>
						<b>Ingredientes</b>
						<ul>
						<c:forEach items="${plato.ingredientes}" var="ingrediente">
							<li><a href="alimento/ver?id=${ingrediente.alimento.id}">${ingrediente.alimento.nombre}</a> - ${ingrediente.cantidad} gr</li>
						</c:forEach>
						</ul>
					</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>