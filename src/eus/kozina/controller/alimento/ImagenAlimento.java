package eus.kozina.controller.alimento;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eus.kozina.model.bean.Alimento;
import eus.kozina.model.dao.AlimentoModelo;
import eus.kozina.model.daoimpl.AlimentoModeloImp;

/**
 * Servlet implementation class ImagenAlimento
 * devuelve la imagen del alimento leyendo de un campo Blob
 */
@WebServlet("/imagen/alimento")
public class ImagenAlimento extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ImagenAlimento() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idAlimento = Integer.parseInt(request.getParameter("id"));
		AlimentoModeloImp am = new AlimentoModeloImp();
		Alimento alimento = am.select(idAlimento);

		// InputStream input = resultSet.getBinaryStream("imageColumnName");
		InputStream input = alimento.getImagenBlob();
		OutputStream output = response.getOutputStream();
		response.setContentType("image/gif");

		byte[] buf = new byte[1024];
		int count = 0;
		while ((count = input.read(buf)) >= 0) {
			output.write(buf, 0, count);
		}
		output.close();
		input.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	 */
}
