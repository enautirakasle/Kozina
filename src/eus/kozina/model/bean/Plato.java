package eus.kozina.model.bean;

import java.util.ArrayList;

public class Plato {
	private int id;
	private String nombre;
	private String descripcion;
	private boolean en_carta;
	private boolean en_menu;

	public Plato() {
		
	}
	public Plato(String nombre) {
		this.nombre = nombre;
	}
	
	private ArrayList<Receta> recetas = new ArrayList<Receta>();

	
	// getters y setters
	
	
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

	public boolean isEn_carta() {
		return en_carta;
	}

	public void setEn_carta(boolean en_carta) {
		this.en_carta = en_carta;
	}

	public boolean isEn_menu() {
		return en_menu;
	}

	public void setEn_menu(boolean en_menu) {
		this.en_menu = en_menu;
	}

	public ArrayList<Receta> getRecetas() {
		return recetas;
	}

	public void setRecetas(ArrayList<Receta> recetas) {
		this.recetas = recetas;
	}
	
	public void addReceta(Receta receta) {
		this.recetas.add(receta);
	}
	
	public void deleteReceta(Receta receta) {
		//if(this.recetas.indexOf(receta) > 0) this.recetas.remove(this.recetas.indexOf(receta));
		try {
			this.recetas.remove(this.recetas.indexOf(receta));
		}catch (IndexOutOfBoundsException e) {
			//e.printStackTrace();
			System.out.println("La receta " + receta + " no esta en el plato");
		}
		
	}

	@Override
	public String toString() {
		//TODO hobetu
		return "Plato [id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", en_carta=" + en_carta
				+ ", en_menu=" + en_menu + ", \n\trecetas=" + recetas + "]";
	}
	
	
	
	
}
