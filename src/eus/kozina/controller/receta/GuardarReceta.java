package eus.kozina.controller.receta;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Ingrediente;
import eus.kozina.model.bean.Receta;
import eus.kozina.model.daoimpl.AlimentoModeloImp;
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
		
//		Enumeration<String> en = request.getParameterNames();
//		Map<String, String[]> mapa= request.getParameterMap();
		//listado de ingredientes
		String[] cantidades = request.getParameterValues("cantidad[]");
		String[] elegidos = request.getParameterValues("elegido[]");
		
		ArrayList<Ingrediente> ingredientes = new ArrayList<Ingrediente>();
		Alimento alimentoAux;
		Ingrediente ingredienteAux;
		Receta receta = new Receta(nombre);
		receta.setDescripcion(descripcion);
		receta.setElavoracion(elavoracion);
		AlimentoModeloImp alimentoModelo = new AlimentoModeloImp();
		
		for (int i = 0; i < elegidos.length; i++) {
			ingredienteAux = new Ingrediente(getPrimerCantidad(cantidades), alimentoModelo.select(Integer.parseInt(elegidos[i])));
			receta.addIngrediente(ingredienteAux);
		}
		

		
		RecetaModeloImp recetaModelo = new RecetaModeloImp();
		recetaModelo.insert(receta);
		
		int id = recetaModelo.getId(receta.getNombre());
		
		response.sendRedirect(request.getContextPath() + "/receta/editar?id=" + id);
		
		
		
	}
	
	public int getPrimerCantidad(String[] cantidades) {
		int i = 0;
		while(cantidades.length>i) {
			if(cantidades[i].length()>0) {
				String id = cantidades[i];
				cantidades[i] = "";
				return Integer.parseInt(id);
			}
		}
		return -1;
	}

}
