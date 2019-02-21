<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guardar alimento</title>
</head>
<body>
	<form action="alimento/guardar" method="POST">
		
		<label for="nombre">Nombre</label>
  		<input type="text" name="nombre" id="nombre" value=""/><br>
  		
  		<label for="nombre">Descripción</label>
  		<input type="text" name="descripcion" id="descripcion" value=""/><br>
  		
		<input type="submit" value="Guardar" name="guardar"/>
	</form>
</body>
</html>