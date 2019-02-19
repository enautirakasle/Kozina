package eus.kozina.controller.ingrediente;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.daoimpl.IngredienteModeloImp;

/**
 * Servlet implementation class ingredientes
 */
@WebServlet("/ingredientes")
public class Ingredientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ingredientes() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO  hau hobeto beste lehio baten, ingredinte bat ezabatzean errorea dagoenean gertatzen da
		String error = request.getParameter("error");
		if(error != null) {
			request.setAttribute("error", error);
		}
		
		
		IngredienteModeloImp ingredienteModelo =new IngredienteModeloImp();
		request.setAttribute("ingredientes", ingredienteModelo.selectAll());
		request.getRequestDispatcher("ingrediente/verTodos.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}