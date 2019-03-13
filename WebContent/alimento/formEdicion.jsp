<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar alimento</title>
</head>
<body>

	<h2>Edicion de alimento</h2>
	<p>Editar y guardar</p>
	
	<form action="${pageContext.request.contextPath}/alimento/cambiar" method="POST">
		<input type="hidden" name="id" value="${alimento.id}"/>
		
		<label for="nombre">Nombre</label>
  		<input type="text" name="nombre" id="nombre" value="${alimento.nombre}"/><br>
  		
  		<label for="nombre">Descripción</label>
  		<input type="text" name="descripcion" id="descripcion" value="${alimento.descripcion}"/><br>
  		
		<input type="submit" value="Guardar" name="guardar"/>
	</form>
</body>
</html>
