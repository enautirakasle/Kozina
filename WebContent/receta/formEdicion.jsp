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
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>Edicion de una receta</h2>
				<p>Editar y guardar</p>
				<form action="${pageContext.request.contextPath}/receta/cambiar"
					method="POST">
					<input type="hidden" name="id" value="${receta.id}" /> <label
						for="nombre">Nombre</label> <input type="text" name="nombre"
						id="nombre" value="${receta.nombre}" /><br> <label
						for="nombre">Descripción</label> <input type="text"
						name="descripcion" id="descripcion" value="${receta.descripcion}" /><br>

					<!-- tabla de ingredientes -->
					<table border="1">
						<thead>
							<tr>
								<th>id</th>
								<th>nombre</th>
								<th>cantidad</th>
								<th>accion</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${receta.ingredientes}" var="ingrediente">
							<tr>
								<td>${ingrediente.alimento.id}</td>
								<td>
									<input id="nombreAlimento${ingrediente.alimento.id}" name="nombreAlimento" value="${ingrediente.alimento.nombre}"/>
								</td>
								<td>
									<input id="cantidadAlimento${ingrediente.alimento.id}" name="cantidadAlimento" value="${ingrediente.cantidad}"/>
								</td>
								<td>
									<a href="${pageContext.request.contextPath}/alimento/ver?id=${ingrediente.alimento.id}">Ver alimento</a>
									<a href="${pageContext.request.contextPath}/alimento/editar?id=${ingrediente.alimento.id}">Editar alimento</a>
									<a href="${pageContext.request.contextPath}/alimento/eliminar?id=${ingrediente.alimento.id}">Eliminar alimento</a>
								</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<input type="submit" value="Guardar" name="guardar" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>