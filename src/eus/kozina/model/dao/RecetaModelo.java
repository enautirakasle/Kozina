package eus.kozina.model.dao;

import java.util.ArrayList;
import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Receta;

public interface RecetaModelo {
	ArrayList<Receta> selectAll();
	
	ArrayList<Receta> selectRecetas(int ingrediente);

	Receta selectReceta(int id);
	
	boolean delete(int id);

	int update(Receta receta);
	
	void insert(Receta receta);
	
	int getId(String nombreReceta);
}
