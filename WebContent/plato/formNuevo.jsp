<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crear plato</title>
<%@ include file="/partes/third_party/styles.jsp"%>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col">
			<h2>Crear nuevo plato</h2>
			<p>Crear y guardar</p>
			
			<form action="${pageContext.request.contextPath}/alimento/guardar" method="POST">
				
				<div class="form-group">
				    <label for="nombre">Nombre</label>
				    <input type="text" name="nombre" class="form-control" id="nombre" aria-describedby="ayudaNombre" placeholder="Introducir el nombre">
				    <small id="ayudaNombre" class="form-text text-muted">Introduce el nombre del plato.</small>
				  </div>
				

		  		<div class="form-group">
				    <label for="descripcion">Descripción</label>
				    <textarea class="form-control" name="descripcion" id="descripcion" rows="3"></textarea>
				  </div>
	
		  		
		  		<div class="form-group form-check">
					  <input class="form-check-input" type="checkbox" value="" id="en_menu">
					  <label class="form-check-label" for="en_menu">
					    Esta en menu
					  </label>
				</div>

				<div class="form-group form-check">
				  <input class="form-check-input" type="checkbox" value="" id="en_carta">
				  <label class="form-check-label" for="en_carta">
				    Esta en carta
				  </label>
				</div>
		  		

				<button id="guardarPlato" name="guardar" type="submit" class="btn btn-primary">Guardar</button>
			</form>
			</div>
		</div>
	</div>
		
	<%@ include file="/partes/third_party/javascripts.jsp"%>
</body>
</html>