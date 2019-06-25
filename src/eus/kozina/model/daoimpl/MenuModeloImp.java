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
		try {
			PreparedStatement pst = this.conexion.prepareStatement("delete from menus where id=?");
			pst.setInt(1, id);
			pst.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int update(Menu menu) {
		// TODO ez dauka erabiltzeko itxurarik disenuan erabaki zer egin honekin
		return 0;
	}

	@Override
	public void insert(Menu menu) {
		try {
			Statement st = this.conexion.createStatement();
			st.execute("insert into menus (id) values (null)");
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
	}

	@Override
	public ArrayList<Plato> getPrimeros(int idMenu) {
		//TODO egiteko lehenago plato egin
		//PreparedStatement pst = this.conexion.prepareStatement("select ");
		return this.getPrimeros(idMenu);
	}

	@Override
	public ArrayList<Plato> getSegundos(int idMenu) {
		//TODO egiteko lehenago plato egin
		return this.getSegundos(idMenu);
	}

	@Override
	public ArrayList<Plato> getPostres(int idMenu) {
		//TODO egiteko lehenago plato egin
		return this.getPostres(idMenu);
	}
	

}
