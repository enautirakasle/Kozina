<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ver - plato</title>
<%@ include file="/partes/third_party/styles.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<%@ include file="/partes/header.jsp"%>
	<main>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<img class="foto-plato"
					src="${pageContext.request.contextPath}/imagen/plato?id=${plato.id}" />
				<img class="foto-plato" src="${plato.imagenBase64}" />
			</div>
			<div class="col-9">
				<table class="table">
					<tr>
						<th scope="row">id:
						</td>
						<td>${plato.id}</td>
					</tr>
					<tr>
						<th scope="row">Nombre:
						</td>
						<td>${plato.nombre}</td>
					</tr>
					<tr>
						<th scope="row">Descripción:
						</td>
						<td>${plato.descripcion}</td>
					</tr>
				</table>
				<a
					href="${pageContext.request.contextPath}/plato/editar?id=${plato.id}">Editar</a>
				<a
					href="${pageContext.request.contextPath}/plato/eliminar?id=${plato.id}">Eliminar</a>
				
			</div>


		</div>
	</div>
	</main>
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