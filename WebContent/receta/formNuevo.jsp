<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guardar receta</title>
<%@ include file="/partes/third_party/styles.jsp"%>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col">
		<h2>Editar un plato</h2>
			<p>Cambiar y guardar</p>
			
			<form action="${pageContext.request.contextPath}/receta/guardar" method="POST">
				
				<label for="nombre">Nombre</label>
		  		<input type="text" name="nombre" id="nombre" value=""/><br>
		  		
		  		<label for="nombre">Descripción</label>
		  		<input type="text" name="descripcion" id="descripcion" value=""/><br>
		  		
		  		<label for="nombre">Elavoración</label>
		  		<input type="text" name="elavoracion" id="elavoracion" value=""/><br>
		  		
				<input type="submit" value="Guardar" name="guardar"/>
			</form>
			</div>
		</div>
	</div>
		
	<script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>