package eus.kozina.controller.receta;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.bean.Receta;
import eus.kozina.model.daoimpl.RecetaModeloImp;

/**
 * Servlet implementation class EditarReceta
 * abre el formulario de edicion de receta
 */
@WebServlet("/receta/editar")
public class EditarReceta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarReceta() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idReceta = Integer.parseInt(request.getParameter("idReceta"));
		//int idReceta = 3;
		RecetaModeloImp recetaModelo = new RecetaModeloImp();
		Receta receta = recetaModelo.selectReceta(idReceta);
		
		request.setAttribute("receta", receta);
		
		request.getRequestDispatcher("/receta/formEdicion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
