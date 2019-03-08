package eus.kozina.model.bean;

import java.io.InputStream;

public class Alimento{

	private int id;
	private String nombre;
	private String descripcion;
	private InputStream imagenBlob;
	
	public Alimento(String nombre) {
		super();
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

	public InputStream getImagenBlob() {
		return imagenBlob;
	}

	public void setImagenBlob(InputStream imagenBlob) {
		this.imagenBlob = imagenBlob;
	}
	
	
	
}
