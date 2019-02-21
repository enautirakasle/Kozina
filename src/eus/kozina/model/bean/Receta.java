package eus.kozina.model.bean;

import java.util.ArrayList;

public class Receta {

	private int id;
	private String nombre;
	private String descripcion;
	private String elavoracion;
	
	private ArrayList<Ingrediente> ingredientes;
	
	public Receta(String nombre) {
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

	public ArrayList<Ingrediente> getIngredientes() {
		return ingredientes;
	}

	public void setIngredientes(ArrayList<Ingrediente> ingredientes) {
		this.ingredientes = ingredientes;
	}


	



	
}