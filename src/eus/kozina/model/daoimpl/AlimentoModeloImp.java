package eus.kozina.model.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.websocket.Decoder.BinaryStream;

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
				alimento.setImagenBlob(rs.getBinaryStream("foto"));
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
	public int update(Alimento alimento) {
		PreparedStatement pst;
		try {
			pst = this.conexion.prepareStatement("UPDATE alimentos SET nombre = ?, descripcion = ? WHERE id = ?");
			pst.setString(1, alimento.getNombre());
			pst.setString(2, alimento.getDescripcion());
			pst.setInt(3, alimento.getId());
			
			return pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		
	}

	@Override
	public ArrayList<Alimento> ingredientes(int id_receta) {
		return null;
	}

	@Override
	public void insert(Alimento alimento) {
		try {
			PreparedStatement pst = this.conexion.prepareStatement("insert into alimentos (nombre, descripcion) values (?, ?)");
			pst.setString(1, alimento.getNombre());
			pst.setString(2, alimento.getDescripcion());
			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
