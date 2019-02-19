package eus.kozina.controller.plato;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.bean.Plato;
import eus.kozina.model.daoimpl.AlimentoModeloImp;
import eus.kozina.model.daoimpl.IngredienteModeloImp;
import eus.kozina.model.daoimpl.PlatoModeloImp;

/**
 * Servlet implementation class PlatosConIngredientes
 */
@WebServlet("/platosconingredientes")
public class PlatosConIngredientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlatosConIngredientes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		IngredienteModeloImp ingredienteModelo = new IngredienteModeloImp();
		
		PlatoModeloImp platoModelo = new PlatoModeloImp();
		
		ArrayList<Plato> platos = platoModelo.selectAll();
		for (Plato plato : platos) {
			plato.setIngredientes(ingredienteModelo.ingredientes(plato.getId()));
		}
		
		request.setAttribute("platos", platos);
		request.getRequestDispatcher("plato/verTodosConIngredientes.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
