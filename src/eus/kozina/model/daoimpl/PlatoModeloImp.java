package eus.kozina.model.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import eus.kozina.model.Conector;
import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Plato;
import eus.kozina.model.bean.Receta;
import eus.kozina.model.dao.PlatoModelo;

public class PlatoModeloImp extends Conector implements PlatoModelo {

	@Override
	public ArrayList<Plato> getPrimeros() {
		RecetaModeloImp recetaModelo = new RecetaModeloImp();
		ArrayList<Plato> platos = new ArrayList<Plato>();
		try {
			PreparedStatement pst;

			pst = super.conexion.prepareStatement("");

			ResultSet rs = pst.executeQuery();
			Plato plato = new Plato();
			while (rs.next()) {
				plato.setId(rs.getInt("id"));
				plato.setNombre(rs.getString("nombre"));
				plato.setDescripcion(rs.getString("descripcion"));
				plato.setRecetas(recetaModelo.selectRecetas(plato));
				
				platos.add(plato);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return platos;
	}

	@Override
	public ArrayList<Plato> getSegundos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Plato> getPostres() {
		// TODO Auto-generated method stub
		return null;
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
	public int update(Plato plato) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Plato plato) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Receta> recetas(Plato plato) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Receta> recetas(int idPlato) {
		// TODO Auto-generated method stub
		return null;
	}

}
