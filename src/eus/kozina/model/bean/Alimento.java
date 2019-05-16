package eus.kozina.model.bean;

import java.io.InputStream;

/**
 * Esta es una clase que representa alimentos
 * @author ikaslea
 * @version 10.4.2019
 */
public class Alimento{

	private int id;
	private String nombre;
	private String descripcion;
	private InputStream imagenBlob;
	private String imagenBase64;
	
	/**
	 * 
	 * @param nombre el nombre del alimento
	 */
	public Alimento(String nombre) {
		super();
		this.nombre = nombre;
	}

	/**
	 * 
	 * @return int id, devuelve el id del alimentos
	 */
	public int getId() {
		return id;
	}

	/**
	 * Komentario sobre el funcionamiento del metodo
	 * 
	 * @param id asigna la id al alimento
	 */
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

	public String getImagenBase64() {
		return imagenBase64;
	}

	public void setImagenBase64(String imagenBase64) {
		this.imagenBase64 = imagenBase64;
	}
	
	
	
}
