<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recetas</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col">
			<h1>Todos las recetas con <i>${alimento.nombre}</i></h1>
			<c:forEach items="${recetas}" var="receta">
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
						
							<tr>
								<td>${receta.id}</td>
								<td><a href="receta/ver?id=${receta.id}">${receta.nombre}</a></td>
								<td>${receta.descripcion}</td>
								<td> <a
									href="receta/editar?id=${receta.id}">Editar</a> <a
									href="receta/eliminar?id=${receta.id}">Eliminar</a></td>
							</tr>
							<tr>
								<td colspan="4">
									<b>Elavoración</b>
									<p>${receta.elavoracion}</p>
									<b>Ingredientes</b>
									<ul>
									<c:forEach items="${receta.ingredientes}" var="ingrediente">
										<li><a href="alimento/ver?id=${ingrediente.alimento.id}">${ingrediente.alimento.nombre}</a> - ${ingrediente.cantidad} gr (<a href="recetascon?id_alimento=${ingrediente.alimento.id}">Ver recetas con ${ingrediente.alimento.nombre}</a>)</li>
									</c:forEach>
									</ul>
								</td>
								
							</tr>
						
					</tbody>
				</table>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>