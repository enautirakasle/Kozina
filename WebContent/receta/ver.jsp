<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/partes/third_party/styles.jsp"%>
<title>Ver - Receta</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Receta: ${receta.nombre}</h1>
				<table border="1">
					<tr>
						<td>id:</td>
						<td>${receta.id}</td>
					</tr>
					<tr>
						<td>Nombre:</td>
						<td>${receta.nombre}</td>
					</tr>
					<tr>
						<td>Descripción:</td>
						<td>${receta.descripcion}</td>
					</tr>
					<tr>
						<td colspan="2">${receta.elavoracion}</td>
					</tr>
				</table>

				<a
					href="${pageContext.request.contextPath}/receta/editar?id=${receta.id}">Editar</a>
				<a
					href="${pageContext.request.contextPath}/receta/eliminar?id=${receta.id}">Eliminar</a>
				<a href="${pageContext.request.contextPath}/recetas">Ver recetas</a>
				<a href="${pageContext.request.contextPath}/recetasconingredientes">Todas
					las recetas</a>

				<!-- tabla de ingredientes -->
				<table border="1">
					<thead>
						<tr>
							<th>id</th>
							<th>nombre</th>
							<th>cantidad</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${receta.ingredientes}" var="ingrediente">
							<tr>
								<td>${ingrediente.alimento.id}</td>
								<td><a
									href="${pageContext.request.contextPath}/alimento/ver?id=${ingrediente.alimento.id}">${ingrediente.alimento.nombre}</a>
								</td>
								<td>${ingrediente.cantidad}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>