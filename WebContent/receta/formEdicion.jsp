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
					<input type="submit" value="Guardar receta" name="guardar" />
				</form>

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
								<td>${ingrediente.alimento.nombre}</td>
								<td><input id="cantidadAlimento${ingrediente.alimento.id}"
									name="cantidadAlimento" value="${ingrediente.cantidad}" /></td>
								<td>
									<a href="${pageContext.request.contextPath}/alimento/ver?id=${ingrediente.alimento.id}">Ver alimento</a>
									<a href="${pageContext.request.contextPath}/alimento/editar?id=${ingrediente.alimento.id}">Editar alimento</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<!-- anadir ingrediente a receta -->
				<form action="${pageContext.request.contextPath}/receta/anadir/ingrediente" method="post">
					<input type="hidden" name="idReceta" value="${receta.id}"/>
					<select name="nombre">
						<option value=""></option>
						<c:forEach items="${alimentos}" var="alimento">
							<option value="${alimento.id}">${alimento.nombre}</option>
						</c:forEach>
					</select>
					<input type="number" name="cantidad"/>
					<input type="submit" value="Anadir ingrediente a receta" name="guardar" />
				</form>


			</div>
		</div>
	</div>
</body>
</html>