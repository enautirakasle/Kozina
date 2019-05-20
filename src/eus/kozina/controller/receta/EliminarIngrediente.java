package eus.kozina.controller.receta;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.daoimpl.IngredienteModeloImp;

/**
 * Servlet implementation class EliminarIngrediente
 */
@WebServlet("/ingrediente/eliminar")
public class EliminarIngrediente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarIngrediente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idIngrediente = Integer.parseInt(request.getParameter("id"));
		int idReceta = Integer.parseInt(request.getParameter("idReceta"));
		
		IngredienteModeloImp ingredienteModelo = new IngredienteModeloImp();
		ingredienteModelo.deleteIngrediente(idIngrediente);
		
		response.sendRedirect(request.getContextPath() + "/receta/editar?id=" + idReceta);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
