<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 --%>
<header>
	<nav>
		<ul class="nav navbar-light bg-light p-2">
			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/recetasconingredientes">Todas
					las recetas</a></li>
			
			<!-- Example single danger button -->
			<li class="nav-item mr-4">
				<div class="btn-group">
				  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <i class="far fa-eye"></i>
				  </button>
				  <div class="dropdown-menu">
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/menus">menu</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/platos">platos</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/recetas">recetas</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/alimentos">alimentos</a>
				  </div>
				</div>
			</li>
			
			<li class="nav-item mr-4">
				<div class="btn-group">
				  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <i class="far fa-edit"></i>
				  </button>
				  <div class="dropdown-menu">
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/menu/crear">menu</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/plato/crear">platos</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/receta/crear">recetas</a>
				    <a class="dropdown-item" href="${pageContext.request.contextPath}/alimento/crear">alimentos</a>
				  </div>
				</div>
			</li>



		</ul>
	</nav>

</header>