package eus.kozina.model.bean;

import java.util.ArrayList;

public class Plato {

	private int id;
	private String nombre;
	private String descripcion;
	private String elavoracion;
	
	private ArrayList<Alimento> alimentos;
	
	public Plato(String nombre) {
		this.nombre = nombre;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getElavoracion() {
		return elavoracion;
	}

	public void setElavoracion(String elavoracion) {
		this.elavoracion = elavoracion;
	}

	public ArrayList<Alimento> getAlimentos() {
		return alimentos;
	}

	public void setAlimentos(ArrayList<Alimento> alimentos) {
		this.alimentos = alimentos;
	}
	



	
}