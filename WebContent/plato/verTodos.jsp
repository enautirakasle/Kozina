<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>platos - Eskatza</title>
<%@ include file="/partes/third_party/styles.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>

	<!-- igrediente bat ezabatzen denean errore bat jaurtitzen da -->
	${error}
	<%@ include file="/partes/header.jsp"%>
	<div class="container">


		<div class="row">
			<div class="col">
				<table class="table table-striped">
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
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script src="http://code.jquery.com/jquery-3.3.1.js"
		integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
</body>
</html>