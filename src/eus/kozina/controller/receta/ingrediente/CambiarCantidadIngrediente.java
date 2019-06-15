package eus.kozina.controller.receta.ingrediente;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.daoimpl.IngredienteModeloImp;

/**
 * Servlet implementation class CambiarCantidadIngrediente
 */
@WebServlet("/receta/ingrediente/cambiar/cantidad")
public class CambiarCantidadIngrediente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CambiarCantidadIngrediente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// idIngrediente cantidadAlimento
		int idIngrediente = Integer.parseInt(request.getParameter("idIngrediente"));
		int cantidadAlimento = Integer.parseInt(request.getParameter("cantidadAlimento"));
		int idReceta = Integer.parseInt(request.getParameter("idReceta"));
		
		IngredienteModeloImp ingredienteModelo = new IngredienteModeloImp();
		ingredienteModelo.updateIngrediente(idIngrediente, cantidadAlimento);
		
		response.sendRedirect(request.getContextPath() + "/receta/editar?id="+idReceta);
		
		
	}

}
