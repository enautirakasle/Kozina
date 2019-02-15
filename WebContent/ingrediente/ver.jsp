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
	<table>
		<tr>
			<td>id:</td>
			<td>${ingrediente.id}</td>
		</tr>
		<tr>
			<td>Nombre:</td>
			<td>${ingrediente.nombre}</td>
		</tr>
		<tr>
			<td>Descripción:</td>
			<td>${ingrediente.descripcion}</td>
		</tr>
	</table>
</body>
</html>