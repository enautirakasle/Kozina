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
 * Servlet implementation class editar
 * habre el form de edicion de alimento
 */
@WebServlet("/alimento/editar")
public class EditarAlimento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarAlimento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_alimento = Integer.parseInt(request.getParameter("id"));
		
		AlimentoModeloImp alimentoModelo = new AlimentoModeloImp();
		Alimento alimento = alimentoModelo.select(id_alimento);
		
		request.setAttribute("alimento", alimento);
		request.getRequestDispatcher("/alimento/formEdicion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
