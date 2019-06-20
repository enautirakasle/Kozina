<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 --%>
<header>

	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" 
				href="${pageContext.request.contextPath}/recetasconingredientes"><i class="fas fa-book-reader"></i>
				Todas las recetas</a>
					
		<ul class="nav navbar-light bg-light p-2">
			
			<!-- dropdown menu de ver -->
			<li class="nav-item mr-4">
				<div class="btn-group">
				  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <i class="far fa-eye"></i>
				  </button>
				  <div class="dropdown-menu">
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/menus"><i class="fas fa-list-alt"></i> menu</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/platos"><i class="fas fa-utensils"></i> platos</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/recetas"><i class="fas fa-book-open"></i> recetas</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/alimentos"><i class="fas fa-apple-alt"></i> alimentos</a>
				  </div>
				</div>
			</li>
			
			<!-- dropdown menu de crear -->
			<li class="nav-item mr-4">
				<div class="btn-group">
				  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <i class="fas fa-plus"></i>
				  </button>
				  <div class="dropdown-menu">
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/menu/crear"><i class="fas fa-list-alt"></i> menu</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/plato/crear"><i class="fas fa-utensils"></i> platos</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/receta/crear"><i class="fas fa-book-open"></i> recetas</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/alimento/crear"><i class="fas fa-apple-alt"></i> alimentos</a>
				  </div>
				</div>
			</li>

		</ul>
	</nav>

</header>