<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recetas</title>
<%@ include file="/partes/third_party/styles.jsp"%>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">

				<h1>Todas las recetas</h1>
				<%
					int contador = 0;
				%>
				<c:forEach items="${recetas}" var="receta">
					<%
						if (contador % 2 == 0) {
					%>
					<table class="table table-bordered">
						<%
							} else {
						%>
						<table class="table table-bordered table-dark">
							<%
								};
									contador++;
							%>
							<thead>
								<tr>
									<th class="w-auto">id</th>
									<th class="w-25">nombre</th>
									<th class="w-50">descripcion</th>
									<th class="w-auto">acciones</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>${receta.id}</td>
									<td><a href="receta/ver?id=${receta.id}">${receta.nombre}</a></td>
									<td>${receta.descripcion}</td>
									<td class="text-right"><a class="btn btn-outline-dark"
										href="receta/editar?id=${receta.id}"><i
											class="fas fa-pencil-alt"></i></a> <a
										class="btn btn-outline-dark"
										href="receta/eliminar?id=${receta.id}"><i
											class="far fa-trash-alt"></i></a></td>
								</tr>
								<tr>
									<td colspan="4"><b>Elavoración</b>
										<p>${receta.elavoracion}</p> <b>Ingredientes</b>
										<ul>
											<c:forEach items="${receta.ingredientes}" var="ingrediente">
												<li><a
													href="alimento/ver?id=${ingrediente.alimento.id}">${ingrediente.alimento.nombre}</a>
													- ${ingrediente.cantidad} gr (<a
													href="recetascon?id_alimento=${ingrediente.alimento.id}">Ver
														recetas con ${ingrediente.alimento.nombre}</a>)</li>
											</c:forEach>
										</ul></td>

								</tr>

							</tbody>
						</table>
				</c:forEach>

			</div>
		</div>
	</div>
</body>
</html>
