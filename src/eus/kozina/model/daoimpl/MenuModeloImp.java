package eus.kozina.model.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import eus.kozina.model.Conector;
import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Menu;
import eus.kozina.model.bean.Plato;
import eus.kozina.model.dao.MenuModelo;

public class MenuModeloImp extends Conector implements MenuModelo{

	@Override
	public ArrayList<Menu> selectAll() {

		ArrayList<Menu> menus = new ArrayList<Menu>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from menus");
			while (rs.next()) {
				
				 Menu menu = new Menu();
				 menu.setId(rs.getInt("id"));
				 
				 menu.setPrimeros(this.getPrimeros(menu.getId()));
				 menu.setSegundos(this.getSegundos(menu.getId()));
				 menu.setPostres(this.getPostres(menu.getId()));
				 
				 menus.add(menu);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return menus;
	}

	@Override
	public Menu select(int id) {
		try {
			PreparedStatement pst = this.conexion.prepareStatement("select * from menus where id=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				Menu menu = new Menu();
				menu.setId(rs.getInt("id"));
				
				 menu.setPrimeros(this.getPrimeros(menu.getId()));
				 menu.setSegundos(this.getSegundos(menu.getId()));
				 menu.setPostres(this.getPostres(menu.getId()));
				
				return menu;
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
	public int update(Menu alimento) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insert(Menu menu) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Plato> getPrimeros(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Plato> getSegundos(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Plato> getPostres(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
