package eus.kozina.model.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import eus.kozina.model.bean.Plato;
import eus.kozina.model.dao.PlatoModelo;
import eus.kozina.modelo.Conector;

public class PlatoModeloImp extends Conector implements PlatoModelo {

	public PlatoModeloImp() {
		super();
	}

	@Override
	public ArrayList<Plato> selectAll() {
		ArrayList<Plato> platos = new ArrayList<Plato>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from platos");
			while (rs.next()) {
				 Plato plato = new Plato(rs.getString("nombre"));
				 plato.setId(rs.getInt("id"));
				 plato.setDescripcion(rs.getString("descripcion"));
				 plato.setElavoracion(rs.getString("elavoracion"));
				 
				 platos.add(plato);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return platos;
	}

	@Override
	public Plato select(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Plato plato) {
		// TODO Auto-generated method stub
		return false;
	}

}
