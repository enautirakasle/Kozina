package eus.kozina.model.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import eus.kozina.model.bean.Ingrediente;
import eus.kozina.model.dao.IngredienteModelo;
import eus.kozina.modelo.Conector;

public class IngredienteModeloImp extends Conector implements IngredienteModelo {

	public IngredienteModeloImp() {
		super();
	}

	@Override
	public ArrayList<Ingrediente> selectAll() {

		ArrayList<Ingrediente> ingredientes = new ArrayList<Ingrediente>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from ingredientes");
			while (rs.next()) {
				 Ingrediente ingrediente = new Ingrediente(rs.getString("nombre"));
				 ingrediente.setId(rs.getInt("id"));
				 ingrediente.setDescripcion(rs.getString("descripcion"));

				 ingredientes.add(ingrediente);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return ingredientes;
	}

	@Override
	public Ingrediente select(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Ingrediente ingrediente) {
		// TODO Auto-generated method stub
		return false;
	}

}
