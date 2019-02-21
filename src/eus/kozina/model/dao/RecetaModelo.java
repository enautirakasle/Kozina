package eus.kozina.model.dao;

import java.util.ArrayList;
import eus.kozina.model.bean.Alimento;
import eus.kozina.model.bean.Receta;

public interface RecetaModelo {
	ArrayList<Receta> selectAll();
	
	ArrayList<Receta> selectRecetas(int ingrediente);

	Receta selectReceta(int id);
	
	boolean delete(int id);

	boolean update(Receta receta);
}
