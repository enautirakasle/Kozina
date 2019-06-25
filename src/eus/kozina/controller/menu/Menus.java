package eus.kozina.controller.menu;

/*comentario en el masterr*/

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.daoimpl.MenuModeloImp;

/**
 * Servlet implementation class alimentos
 * visualiza todos los alimentos
 */
@WebServlet("/menus")
public class Menus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Menus() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//conseguir datos
		MenuModeloImp menuModelo =new MenuModeloImp();
		request.setAttribute("menus", menuModelo.selectAll());
		
		//abrir vista
		request.getRequestDispatcher("menus/verTodos.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
