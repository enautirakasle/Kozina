package eus.kozina.controller.plato;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Plato;
import eus.kozina.model.daoimpl.AlimentoModeloImp;
import eus.kozina.model.daoimpl.PlatoModeloImp;

/**
 * Servlet implementation class PlatosCon
 */
@WebServlet("/platoscon")
public class PlatosCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlatosCon() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_alimento = Integer.parseInt(request.getParameter("id_alimento"));
		
		PlatoModeloImp platoModelo = new PlatoModeloImp();
		ArrayList<Plato> platos = platoModelo.selectPlatos(id_alimento);
		
		AlimentoModeloImp alimentoModelo = new AlimentoModeloImp();
		Alimento alimento = alimentoModelo.select(id_alimento);
		
		request.setAttribute("platos", platos);
		request.setAttribute("alimento", alimento);
		request.getRequestDispatcher("plato/verLosDeIngrediente.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
