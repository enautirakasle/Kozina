package eus.kozina.model.dao;

import java.util.ArrayList;

import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Plato;
import eus.kozina.model.bean.Receta;

public interface PlatoModelo {
	
	
	ArrayList<Plato> getPrimeros();
	ArrayList<Plato> getSegundos();
	ArrayList<Plato> getPostres();
	
	ArrayList<Plato> selectAll();

	Plato select(int id);

	boolean delete(int id);

	int update(Plato plato);
	
	int insert(Plato plato);
	
	ArrayList<Receta> recetas(Plato plato);
	ArrayList<Receta> recetas(int idPlato);

}
