package eus.kozina.controller.alimento;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.daoimpl.AlimentoModeloImp;

/**
 * Servlet implementation class alimentos
 * visualiza todos los alimentos
 */
@WebServlet("/alimentos")
public class Alimentos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alimentos() {
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
		
		
		AlimentoModeloImp alimentoModelo =new AlimentoModeloImp();
		request.setAttribute("alimentos", alimentoModelo.selectAll());
		request.getRequestDispatcher("alimento/verTodos.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
