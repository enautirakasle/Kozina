<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar alimento</title>
<%@ include file="/partes/third_party/styles.jsp"%>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col">
			<h2>Edicion de alimento</h2>
			<p>Cambiar y guardar</p>
			
			<form action="${pageContext.request.contextPath}/alimento/cambiar" method="POST">
				<input type="hidden" name="id" value="${alimento.id}"/>
				
				<div class="form-group">
					<label for="nombre">Nombre</label>
					<input type="text" class="form-control" name="nombre" id="nombre" value="${alimento.nombre}" placeholder="Introduce el nombre">
				</div>

				  <div class="form-group">
				    <label for="descripcion">Descripci�n</label>
				    <textarea class="form-control" name="descripcion" id="descripcion" rows="3"></textarea>
				  </div>
		  		
				  <button id="guardarAlimento" name="guardar" type="submit" class="btn btn-primary">Guardar alimento</button>
			</form>
		</div>
	</div>
</div>

	
	<script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>
