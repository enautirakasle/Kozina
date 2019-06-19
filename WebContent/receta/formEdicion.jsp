<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar receta</title>
<%@ include file="/partes/third_party/styles.jsp"%>
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
						for="nombre">Descripción</label>
					<textarea name="descripcion" rows="10" cols="100">${receta.descripcion}</textarea>
					<br> <input type="submit" value="Guardar receta"
						name="guardar" />

				</form>

				<!-- tabla de ingredientes -->
				<table class="table">
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
								<td><a data-toggle="tooltip" data-placement="top" title="Tooltip on top"
									href="${pageContext.request.contextPath}/alimento/ver?id=${ingrediente.alimento.id}" >${ingrediente.alimento.nombre}</a></td>
								<td>
									<form  class="form-inline" method="post"
										action="${pageContext.request.contextPath}/receta/ingrediente/cambiar/cantidad">
										
										<input type="hidden" name="idIngrediente"
											value="${ingrediente.id}" /> <input type="hidden"
											name="idReceta" value="${receta.id}" />
										
										<label class="sr-only" for="inlineFormInputName2">Cantidad</label>
  										<input type="text" class="form-control mb-2 mr-2" id="cantidadAlimento" name="cantidadAlimento" value="${ingrediente.cantidad}" placeholder="cantidad">
										
										<button type="submit" class="btn btn-lg btn-outline-success mb-2 mr-5">
											<i class="far fa-save"></i>
										</button>
										
										<a class="btn btn-lg btn-outline-danger mb-2" href="${pageContext.request.contextPath}/ingrediente/eliminar?id=${ingrediente.id}&idReceta=${receta.id}">
											<i class="far fa-trash-alt"></i>
										</a>
									</form>
								</td>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<!-- anadir ingrediente a receta -->
				<form
					action="${pageContext.request.contextPath}/receta/anadir/ingrediente"
					method="post">
					<input type="hidden" name="idReceta" value="${receta.id}" /> <select
						name="alimento">
						<option value=""></option>
						<c:forEach items="${alimentos}" var="alimento">
							<option value="${alimento.id}">${alimento.nombre}</option>
						</c:forEach>
					</select> <input type="number" name="cantidad" value="0" /> <input
						type="submit" value="Anadir ingrediente a receta" name="guardar" />
				</form>
				<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
  Tooltip on top
</button>


			</div>
		</div>
	</div>
	<%@ include file="/partes/third_party/javascripts.jsp"%>
</body>
</html>