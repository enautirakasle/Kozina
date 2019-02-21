package eus.kozina.controller.receta;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Receta;
import eus.kozina.model.daoimpl.AlimentoModeloImp;
import eus.kozina.model.daoimpl.IngredienteModeloImp;
import eus.kozina.model.daoimpl.RecetaModeloImp;

/**
 * Servlet implementation class RecetasCon
 */
@WebServlet("/recetascon")
public class RecetasCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecetasCon() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_alimento = Integer.parseInt(request.getParameter("id_alimento"));
		
		IngredienteModeloImp ingredienteModelo = new IngredienteModeloImp();
		RecetaModeloImp recetaModelo = new RecetaModeloImp();
		
		ArrayList<Receta> recetas = recetaModelo.selectRecetas(id_alimento);
		for (Receta receta : recetas) {
			receta.setIngredientes(ingredienteModelo.ingredientes(receta.getId()));
		}
		
		AlimentoModeloImp alimentoModelo = new AlimentoModeloImp();
		Alimento alimento = alimentoModelo.select(id_alimento);
		
		request.setAttribute("recetas", recetas);
		request.setAttribute("alimento", alimento);
		request.getRequestDispatcher("receta/verLosDeIngrediente.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
