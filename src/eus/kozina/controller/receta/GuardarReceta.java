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
 * Servlet implementation class GuardarReceta
 */
@WebServlet("/receta/guardar")
public class GuardarReceta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuardarReceta() {
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
		String nombre = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");
		String elavoracion = request.getParameter("elavoracion");
		
		Receta receta = new Receta(nombre);
		receta.setDescripcion(descripcion);
		receta.setElavoracion(elavoracion);
		
		RecetaModeloImp recetaModelo = new RecetaModeloImp();
		recetaModelo.insert(receta);
		
		int id = recetaModelo.getId(receta.getNombre());
		
		response.sendRedirect(request.getContextPath() + "/receta/editar?id=" + id);
		
		
		
		
	}

}
