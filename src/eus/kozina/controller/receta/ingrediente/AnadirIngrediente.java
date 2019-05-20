package eus.kozina.controller.receta.ingrediente;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.daoimpl.IngredienteModeloImp;

/**
 * Servlet implementation class AnadirIngrediente
 */
@WebServlet("/receta/anadir/ingrediente")
public class AnadirIngrediente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnadirIngrediente() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int idReceta = Integer.parseInt(request.getParameter("idReceta"));
		int idAlimento = Integer.parseInt(request.getParameter("alimento"));
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		
		IngredienteModeloImp ingredienteModelo = new IngredienteModeloImp();
		ingredienteModelo.addIngrediente(idReceta, idAlimento, cantidad);
		
		response.sendRedirect(request.getContextPath() + "/receta/editar?id="+idReceta);

	}

}
