<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
					<td></td>
					<td><a href="plato/ver?id=${plato.id}">Ver</a> <a
						href="plato/editar?id=${plato.id}">Editar</a> <a
						href="plato/eliminar?id=${plato.id}">Eliminar</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<table  border="1">
		<tr>
			<td colspan="3">Hola esto es una linea</td>
		</tr>
		<tr>
			<td>asd</td>
			<td>asdf</td>
			<td>asdf</td>
		</tr>
		<tr>
			<td colspan="3">Hola esto es una linea</td>
		</tr>
		<tr>
			<td>asd</td>
			<td>asdf</td>
			<td>asdf</td>
		</tr>
		<tr>
			<td colspan="3">Hola esto es una linea</td>
		</tr>
		<tr>
			<td>asd</td>
			<td>asdf</td>
			<td>asdf</td>
		</tr>
	</table>
</body>
</html>