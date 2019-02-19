package eus.kozina.model.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import eus.kozina.model.Conector;
import eus.kozina.model.bean.Alimento;
import eus.kozina.model.dao.AlimentoModelo;

public class AlimentoModeloImp extends Conector implements AlimentoModelo {

	public AlimentoModeloImp() {
		super();
	}

	@Override
	public ArrayList<Alimento> selectAll() {

		ArrayList<Alimento> alimentos = new ArrayList<Alimento>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from alimentos");
			while (rs.next()) {
				 Alimento alimento = new Alimento(rs.getString("nombre"));
				 alimento.setId(rs.getInt("id"));
				 alimento.setDescripcion(rs.getString("descripcion"));

				 alimentos.add(alimento);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return alimentos;
	}

	@Override
	public Alimento select(int id) {
		
		try {
			PreparedStatement pst = this.conexion.prepareStatement("select * from alimentos where id=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				Alimento alimento = new Alimento(rs.getString("nombre"));
				alimento.setId(rs.getInt("id"));
				alimento.setDescripcion(rs.getString("descripcion"));
				return alimento;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return null;
	}

	@Override
	public boolean delete(int id) {
		
		try {
			PreparedStatement pst = this.conexion.prepareStatement("delete from alimentos where id=?");
			pst.setInt(1, id);
			pst.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Alimento alimento) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<Alimento> ingredientes(int id_plato) {
		ArrayList<Alimento> alimentos = new ArrayList<Alimento>();
		
		try {
			PreparedStatement pst = this.conexion.prepareStatement("SELECT alimentos.* FROM ingredientes INNER JOIN alimentos on ingredientes.id_alimento= alimentos.id WHERE ingredientes.id_plato=?");
			pst.setInt(1, id_plato);
			
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				 Alimento alimento = new Alimento(rs.getString("nombre"));
				 alimento.setId(rs.getInt("id"));
				 alimento.setDescripcion(rs.getString("descripcion"));

				 alimentos.add(alimento);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return alimentos;
	}

}
