package eus.kozina.model.daoimpl;

import java.util.ArrayList;

import eus.kozina.model.bean.Alimento;
import eus.kozina.model.dao.Modelo;

public class AlimentoM implements Modelo{


	
	@Override
	public ArrayList selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Alimento select(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int update(Object objeto) {
		if(objeto instanceof Alimento == false) throw new RuntimeException("Clase mal");
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList ingredientes(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(Object objeto) {
		// TODO Auto-generated method stub
		
	}

}
