package eus.kozina.controller.api.alimento;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.JSONStringer;

import eus.kozina.model.bean.Alimento;
import eus.kozina.model.daoimpl.AlimentoModeloImp;

/**
 * Servlet implementation class ApiAlimento
 */
@WebServlet("/api/alimento")
public class ApiAlimento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApiAlimento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idAlimento = Integer.parseInt(request.getParameter("idAlimento"));
		
		AlimentoModeloImp alimentoModelo =new AlimentoModeloImp();
		Alimento alimento = alimentoModelo.select(idAlimento);
		
		JSONObject jsonObject = new JSONObject(alimento);
		
		PrintWriter out = response.getWriter();
		
		response.setHeader("Access-Control-Allow-Origin","*"); //jsonp deia denean ez da behar
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		out.print(jsonObject);
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
