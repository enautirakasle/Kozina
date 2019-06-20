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

			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/menus">Ver
					menus</a></li>
			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/platos">Ver
					platos</a></li>
			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/recetas">Ver
					recetas</a></li>
			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/alimentos">Ver
					alimentos</a></li>
					
			
			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/menu/crear"><i
					class="fas fa-plus"></i> Menu </a></li>
			
			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/plato/crear"><i
					class="fas fa-plus"></i> Plato </a></li>

			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/receta/crear"><i
					class="fas fa-plus"></i> Receta </a></li>
			
			<li class="nav-item mr-4"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/alimento/crear"><i
					class="fas fa-plus"></i> Alimento </a></li>



		</ul>
	</nav>

</header>