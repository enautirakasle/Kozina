package eus.kozina.controller.alimento;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.bean.Alimento;
import eus.kozina.model.daoimpl.AlimentoModeloImp;

/**
 * Servlet implementation class CambiarAlimento
 * realiza el update del alimento
 */
@WebServlet("/alimento/cambiar")
public class CambiarAlimento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CambiarAlimento() {
        super();
        // TODO Auto-generated constructor stub
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
		int id = Integer.parseInt(request.getParameter("id"));
		String nombre = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");
		
		Alimento alimento = new Alimento(nombre);
		alimento.setId(id);
		alimento.setDescripcion(descripcion);
		
		AlimentoModeloImp alimentoModelo = new AlimentoModeloImp();
		alimentoModelo.update(alimento);
		
		response.sendRedirect(request.getContextPath() + "/alimentos");
	}

}
