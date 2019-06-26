package eus.kozina.model.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import eus.kozina.model.Conector;
import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Ingrediente;
import eus.kozina.model.bean.Receta;
import eus.kozina.model.dao.RecetaModelo;

public class RecetaModeloImp extends Conector implements RecetaModelo {

	public RecetaModeloImp() {
		super();
	}

	@Override
	public ArrayList<Receta> selectAll() {
		ArrayList<Receta> recetas = new ArrayList<Receta>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from recetas");
			while (rs.next()) {
				 Receta receta = new Receta(rs.getString("nombre"));
				 receta.setId(rs.getInt("id"));
				 receta.setDescripcion(rs.getString("descripcion"));
				 receta.setElavoracion(rs.getString("elavoracion"));
				 
				 recetas.add(receta);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return recetas;
	}

	@Override
	public Receta selectReceta(int id) {
		IngredienteModeloImp ingredienteModelo = new IngredienteModeloImp();
		try {
			PreparedStatement pst = this.conexion.prepareStatement("select * from recetas where id=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				Receta receta = new Receta(rs.getString("nombre"));
				receta.setId(rs.getInt("id"));
				receta.setDescripcion(rs.getString("descripcion"));
				receta.setElavoracion(rs.getString("elavoracion"));
				receta.setIngredientes(ingredienteModelo.ingredientes(id));
				return receta;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int update(Receta receta) {
		//UPDATE `recetas` SET `id`=[value-1],`nombre`=[value-2],`descripcion`=[value-3],`elavoracion`=[value-4] WHERE 1
		try {
			PreparedStatement pst = this.conexion.prepareStatement("UPDATE recetas SET nombre=?,descripcion=?,elavoracion=? WHERE id = ?");
			pst.setString(1, receta.getNombre());
			pst.setString(2, receta.getDescripcion());
			pst.setString(3, receta.getElavoracion());
			pst.setInt(4, receta.getId());
			
			return pst.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public ArrayList<Receta> selectRecetas(int id_ingrediente) {
		ArrayList<Receta> recetas = new ArrayList<Receta>();

		try {
			PreparedStatement pst = this.conexion.prepareStatement("select recetas.* from ingredientes join recetas on ingredientes.id_receta = recetas.id where ingredientes.id_alimento = ?");
			pst.setInt(1, id_ingrediente);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				 Receta receta = new Receta(rs.getString("nombre"));
				 receta.setId(rs.getInt("id"));
				 receta.setDescripcion(rs.getString("descripcion"));
				 receta.setElavoracion(rs.getString("elavoracion"));
				 
				 recetas.add(receta);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return recetas;
	}

	@Override
	public int insert(Receta receta) {
		IngredienteModeloImp ingredienteModelo = new IngredienteModeloImp();
		int recetaId = 0;
		
		try {
			PreparedStatement pst = this.conexion.prepareStatement("insert into recetas (nombre, descripcion, elavoracion) values (?, ?, ?)");
			pst.setString(1, receta.getNombre());
			pst.setString(2, receta.getDescripcion());
			pst.setString(3, receta.getElavoracion());
			pst.execute();
			
			pst = this.conexion.prepareStatement("SELECT LAST_INSERT_ID() as id;");
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) recetaId = rs.getInt("id");
			
			ArrayList<Ingrediente> ingredientes = receta.getIngredientes();
			Iterator<Ingrediente> i = ingredientes.iterator();
			while (i.hasNext()) {
				Ingrediente ingrediente = (Ingrediente) i.next();
				ingredienteModelo.addIngrediente(recetaId, ingrediente.getAlimento().getId(), ingrediente.getCantidad());
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return recetaId;
	}

	@Override
	public int getId(String nombreReceta) {
		try {
			PreparedStatement pst = this.conexion.prepareStatement("select id from recetas where nombre = ?");
			pst.setString(1, nombreReceta);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				return rs.getInt("id");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}


}
