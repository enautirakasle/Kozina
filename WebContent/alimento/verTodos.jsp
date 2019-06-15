<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alimentos - Eskatza</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>

	<!-- igrediente bat ezabatzen denean errore bat jaurtitzen da -->
	${error}
	<header>
		<nav class="navbar navbar-light bg-light justify-content-end mb-1">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="btn btn-primary"
					href="${pageContext.request.contextPath}/alimento/crear">+
						Alimento</a></li>
			</ul>
		</nav>

	</header>
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
						<c:forEach items="${alimentos}" var="alimento">
							<tr>
								<td>${alimento.id}</td>
								<td>${alimento.nombre}</td>
								<td>${alimento.descripcion}</td>
								<td><a href="alimento/ver?id=${alimento.id}">Ver</a> <a
									href="alimento/editar?id=${alimento.id}">Editar</a> <a
									href="alimento/eliminar?id=${alimento.id}">Eliminar</a></td>
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