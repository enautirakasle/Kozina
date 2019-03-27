package eus.kozina.controller.receta;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.bean.Receta;
import eus.kozina.model.daoimpl.AlimentoModeloImp;
import eus.kozina.model.daoimpl.IngredienteModeloImp;
import eus.kozina.model.daoimpl.RecetaModeloImp;

/**
 * Servlet implementation class Recetas
 * ver las recetas con ingredientes
 */
@WebServlet("/recetasconingredientes")
public class RecetasConIngredientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecetasConIngredientes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		IngredienteModeloImp ingredienteModelo = new IngredienteModeloImp();
		
		RecetaModeloImp recetaModelo = new RecetaModeloImp();
		
		ArrayList<Receta> recetas = recetaModelo.selectAll();
		for (Receta receta : recetas) {
			receta.setIngredientes(ingredienteModelo.ingredientes(receta.getId()));
		}
		
		request.setAttribute("recetas", recetas);
		request.getRequestDispatcher("receta/verTodosConIngredientes.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
