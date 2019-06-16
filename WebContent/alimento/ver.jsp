<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ver - Alimento</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.9.0/css/all.css"
	integrity="sha384-i1LQnF23gykqWXg6jxC2ZbCbUMxyw5gLZY6UiUS98LYV5unm8GWmfkIS6jqJfb4E"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<%@ include file="/partes/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col">
				<main> <img class="foto-alimento"
					src="${pageContext.request.contextPath}/imagen/alimento?id=${alimento.id}" />
				<img class="foto-alimento" src="${alimento.imagenBase64}" /> <br>

				<table>
					<tr>
						<td>id:</td>
						<td>${alimento.id}</td>
					</tr>
					<tr>
						<td>Nombre:</td>
						<td>${alimento.nombre}</td>
					</tr>
					<tr>
						<td>Descripción:</td>
						<td>${alimento.descripcion}</td>
					</tr>
				</table>

				<a
					href="${pageContext.request.contextPath}/alimento/editar?id=${alimento.id}">Editar</a>
				<br>
				<a
					href="${pageContext.request.contextPath}/alimento/eliminar?id=${alimento.id}">Eliminar</a>
				<br>
				<a href="${pageContext.request.contextPath}/alimentos">Ver
					alimentos</a> <br>
				<a href="${pageContext.request.contextPath}/recetasconingredientes">Todas
					las recetas</a> <br>
				</main>
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