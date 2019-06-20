package eus.kozina.model.dao;

import java.util.ArrayList;

import eus.kozina.model.bean.Menu;
import eus.kozina.model.bean.Plato;

public interface MenuModelo {
	ArrayList<Menu> selectAll();

	Menu select(int id);

	boolean delete(int id);

	int update(Menu alimento);
	
	void insert(Menu menu);
	
	ArrayList<Plato> getPrimeros(int id);
	ArrayList<Plato> getSegundos(int id);
	ArrayList<Plato> getPostres(int id);
	
}
