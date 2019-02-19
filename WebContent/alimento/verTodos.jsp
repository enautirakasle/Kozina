<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alimentos - Eskatza</title>
</head>
<body>
<!-- igrediente bat ezabatzen denean errore bat jaurtitzen da -->
${error}
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
			<c:forEach items="${alimentos}" var="alimento">
				<tr>
					<td>${alimento.id}</td>
					<td>${alimento.nombre}</td>
					<td>${alimento.descripcion}</td>
					<td>
						<a href="alimento/ver?id=${alimento.id}">Ver</a>
						<a href="alimento/editar?id=${alimento.id}">Editar</a>
						<a href="alimento/eliminar?id=${alimento.id}">Eliminar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>