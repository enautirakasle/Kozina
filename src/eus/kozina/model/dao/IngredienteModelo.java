package eus.kozina.model.dao;

import java.util.ArrayList;
import eus.kozina.model.bean.Ingrediente;

public interface IngredienteModelo {
	ArrayList<Ingrediente> selectAll();

	Ingrediente select(int id);

	boolean delete(int id);

	boolean update(Ingrediente ingrediente);
	
	ArrayList<Ingrediente> ingredientes(int id_plato);
}
