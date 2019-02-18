package eus.kozina.model.dao;

import java.util.ArrayList;
import eus.kozina.model.bean.Ingrediente;
import eus.kozina.model.bean.Plato;

public interface PlatoModelo {
	ArrayList<Plato> selectAll();

	Plato select(int id);

	boolean delete(int id);

	boolean update(Plato plato);
}
