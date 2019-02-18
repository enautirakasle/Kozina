<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar - Ingrediente</title>
</head>
<body>
	<form action="ingrediente/cambiar" method="post">
		<input type="hidden" name="id" value="${ingrediente.id}"/>
		<table>
			<tr>
				<td>Nombre:</td>
				<td><input type="text" name="nombre" value="${ingrediente.nombre}"/></td>
			</tr>
			<tr>
				<td>Descripción:</td>
				<td><input type="text" name="descripcion" value="${ingrediente.descripcion}"/></td>
			</tr>
		</table>
		<input type="submit" value="cambiar" name="cambiar"/>
	</form>
</body>
</html>