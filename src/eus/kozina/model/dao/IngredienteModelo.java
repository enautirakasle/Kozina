package eus.kozina.model.dao;

import java.util.ArrayList;
import eus.kozina.model.bean.Ingrediente;

public interface IngredienteModelo {

	ArrayList<Ingrediente> ingredientes(int id_receta);
	void deleteIngrediente(int idIngrediente);
}
