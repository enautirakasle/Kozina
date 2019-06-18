package eus.kozina.model.dao;

import java.util.ArrayList;

import eus.kozina.model.bean.Alimento;



public interface Modelo<T> {

		ArrayList<T> selectAll();

		T select(int id);

		boolean delete(int id);

		int update(T objeto);
		
		ArrayList<T> ingredientes(int id);
		
		void insert(T objeto);

	
}
