package eus.kozina.model.dao;

import java.util.ArrayList;

import eus.kozina.model.bean.Menu;

public interface MenuModelo {
	ArrayList<Menu> selectAll();

	Menu select(int id);

	boolean delete(int id);

	int update(Menu alimento);
	
	void insert(Menu menu);
	
}
